---
title: 6 - Send
tags: [Ledger Live Common, typescript]
category: Blockchain Support
author:
toc: true
layout: doc
---

## Starting with a mock

A mock will help you test different UI flows on Desktop and Mobile.
It's connected to any indexer / explorer and gives you a rough idea on how it will look like when connected to the UI.

For example you can use it by doing `MOCK=1 pnpm dev:lld` on `ledger-live-desktop`

```ts
import { BigNumber } from "bignumber.js";
import {
  NotEnoughBalance,
  RecipientRequired,
  InvalidAddress,
  FeeTooHigh,
} from "@ledgerhq/errors";
import type { Transaction } from "../types";
import type { AccountBridge, CurrencyBridge } from "../../../types";
import {
  scanAccounts,
  signOperation,
  broadcast,
  sync,
  isInvalidRecipient,
} from "../../../bridge/mockHelpers";
import { getMainAccount } from "../../../account";
import { makeAccountBridgeReceive } from "../../../bridge/mockHelpers";

const receive = makeAccountBridgeReceive();

const createTransaction = (): Transaction => ({
  family: "mycoin",
  mode: "send",
  amount: BigNumber(0),
  recipient: "",
  useAllAmount: false,
  fees: null,
});

const updateTransaction = (t, patch) => ({ ...t, ...patch });

const prepareTransaction = async (a, t) => t;

const estimateMaxSpendable = ({ account, parentAccount, transaction }) => {
  const mainAccount = getMainAccount(account, parentAccount);
  const estimatedFees = transaction?.fees || BigNumber(5000);
  return Promise.resolve(
    BigNumber.max(0, mainAccount.balance.minus(estimatedFees))
  );
};

const getTransactionStatus = (account, t) => {
  const errors = {};
  const warnings = {};
  const useAllAmount = !!t.useAllAmount;

  const estimatedFees = BigNumber(5000);

  const totalSpent = useAllAmount
    ? account.balance
    : BigNumber(t.amount).plus(estimatedFees);

  const amount = useAllAmount
    ? account.balance.minus(estimatedFees)
    : BigNumber(t.amount);

  if (amount.gt(0) && estimatedFees.times(10).gt(amount)) {
    warnings.amount = new FeeTooHigh();
  }

  if (totalSpent.gt(account.balance)) {
    errors.amount = new NotEnoughBalance();
  }

  if (!t.recipient) {
    errors.recipient = new RecipientRequired();
  } else if (isInvalidRecipient(t.recipient)) {
    errors.recipient = new InvalidAddress();
  }

  return Promise.resolve({
    errors,
    warnings,
    estimatedFees,
    amount,
    totalSpent,
  });
};

const accountBridge: AccountBridge<Transaction> = {
  estimateMaxSpendable,
  createTransaction,
  updateTransaction,
  getTransactionStatus,
  prepareTransaction,
  sync,
  receive,
  signOperation,
  broadcast,
};

const currencyBridge: CurrencyBridge = {
  scanAccounts,
  preload: async () => {},
  hydrate: () => {},
};

export default { currencyBridge, accountBridge };
```


## Account Bridge

AccountBridge offers a generic abstraction to synchronize accounts and perform transactions.

It is designed for the end user frontend interface and is agnostic of the way it runs, has multiple implementations and does not know how the data is even stored: in fact **it's just a set of stateless functions**.

<!-- ------------- Image ------------- -->
<!-- --------------------------------- -->
![account bridge flow](../images/account-bridge-flow.png)


### Transactions

`Transaction` objects are created from a default state (`createTransaction`), that will then be updated according to the flow and inputs of the user.

Everytime the transaction is updated through a patch (`updateTransaction`), its parameters will need to be validated to check if transaction can be signed and broadcasted (see [Validating Transactions](#validating-transactions)).

In some cases, this transaction will need to be prepared to correctly check status (`prepareTransaction`), like fetching the network fees, transforming some parameters, or setting default values, ...

`libs/ledger-live-common/src/families/mycoin/js-transaction.ts`:

```ts
import { BigNumber } from "bignumber.js";
import type { Account } from "../../types";
import type { Transaction } from "./types";

import getEstimatedFees from "./js-getFeesForTransaction";

const sameFees = (a, b) => (!a || !b ? a === b : a.eq(b));

/**
 * Create an empty transaction
 *
 * @returns {Transaction}
 */
export const createTransaction = (): Transaction => ({
  family: "mycoin",
  mode: "send",
  amount: BigNumber(0),
  recipient: "",
  useAllAmount: false,
  fees: null,
});

/**
 * Apply patch to transaction
 *
 * @param {*} t
 * @param {*} patch
 */
export const updateTransaction = (
  t: Transaction,
  patch: $Shape<Transaction>
) => ({ ...t, ...patch });

/**
 * Prepare transaction before checking status
 *
 * @param {Account} a
 * @param {Transaction} t
 */
export const prepareTransaction = async (a: Account, t: Transaction) => {
  let fees = t.fees;

  fees = await getEstimatedFees({ a, t });

  if (!sameFees(t.fees, fees)) {
    return { ...t, fees };
  }

  return t;
};
```

### Validating Transactions

We absolutely want to avoid users to sign transactions that do not meet the blockchain's requirements, and would be rejected - or worse - fail, risking them to loose funds.

Hence, we will validate every parameters that could lead to invalid transactions:

For instance we will check that:

- the recipient is not empty
- the recipient address is valid
- the recipient exists
- user have enough funds for the transaction
- user have enough funds to pay transaction fees
- the amount is strictly positive (avoiding zero sends)
- the minimum balance or existential deposit is respected if relevant
- etc

This validation is done everytime the user updates the transaction (any input changes) to give him immediate and contextual feedback. The status object returned by the `getTransactionStatus` follows this definition:

- `errors: { [string]: Error }`: potential error for each (user) field of the transaction
- `warnings: { [string]: Error }`: potential warning for each (user) field for a transaction
- `estimatedFees: BigNumber`: estimated total fees the tx is going to cost (in the mainAccount currency)
- `amount: BigNumber`: actual amount that the recipient will receive (in account currency)
- `totalSpent: BigNumber`: total amount that the sender will spend (in account currency)
- `recipientIsReadOnly?: boolean`: should the recipient be non editable

`errors` and `warnings` are key - value (error) objects that would have for each input (in the user perspective) the eventual error or notice that has been detected. To each key then it is expected that an input in Ledger Live Desktop and Mobile will exists to display the error.

`libs/ledger-live-common/src/families/mycoin/js-getTransactionStatus.ts`:

```ts
import { BigNumber } from "bignumber.js";
import {
  NotEnoughBalance,
  RecipientRequired,
  InvalidAddress,
  FeeNotLoaded,
} from "@ledgerhq/errors";
import type { Account, TransactionStatus } from "../../types";
import type { Transaction } from "./types";

import { isValidAddress, specificCheck } from "./logic";
import { MyCoinSpecificError } from "./errors";

const getTransactionStatus = async (
  a: Account,
  t: Transaction
): Promise<TransactionStatus> => {
  const errors = {};
  const warnings = {};
  const useAllAmount = !!t.useAllAmount;

  if (!t.fees) {
    errors.fees = new FeeNotLoaded();
  }

  const estimatedFees = t.fees || BigNumber(0);

  const totalSpent = useAllAmount
    ? a.balance
    : BigNumber(t.amount).plus(estimatedFees);

  const amount = useAllAmount
    ? a.balance.minus(estimatedFees)
    : BigNumber(t.amount);

  if (totalSpent.gt(a.balance)) {
    errors.amount = new NotEnoughBalance();
  }

  // If MyCoin needs any specific requirement on amount for instance
  if (specificCheck(t.amount)) {
    errors.amount = new MyCoinSpecificError();
  }

  if (!t.recipient) {
    errors.recipient = new RecipientRequired();
  } else if (isValidAddress(t.recipient)) {
    errors.recipient = new InvalidAddress();
  }

  return Promise.resolve({
    errors,
    warnings,
    estimatedFees,
    amount,
    totalSpent,
  });
};

export default getTransactionStatus;
```

### Dealing with Logic and Errors

As seen in the previous section, `getTransactionStatus` deals with errors in a Transaction, because of a wrong user input not meeting the coin logic.
Those are user-dependent errors handled in the UI for each input displayed, and are expected to happen from time to time - we are not throwing them.

But some errors can occur in a different context, and not be caused by user. Try as much as possible to handle all failing cases and throw coin-specific errors (if not generic error already exist), that you may define in an `errors.ts` file (for reusablity).

`libs/ledger-live-common/src/families/mycoin/errors.ts`:

```ts
import { createCustomErrorClass } from "@ledgerhq/errors";

/**
 * MyCoin error thrown on a specifc check done on a transaction amount
 */
export const MyCoinSpecificError = createCustomErrorClass(
  "MyCoinSpecificError"
);
```

Add all exports to `src/errors.ts`:

```ts
// ...
export * from "./families/mycoin/errors";
```

Also, to avoid repeating code and facilitate usage of checks and constants, gather all your coin-specific logic functions in a single file (calculations, getters, boolean checks...). This will also ease maintenance, for instance when the blockchain's logic changes (constants or additional checks added).

`libs/ledger-live-common/src/families/mycoin/logic.ts`:

```ts
import { BigNumber } from "bignumber.js";
import type { Account } from "../../types";

export const MAX_AMOUNT = 5000;

/**
 * Returns true if address is a valid md5
 *
 * @param {string} address
 */
export const isValidAddress = (address: string): boolean => {
  if (!address) return false;

  return !!address.match(/^[a-f0-9]{32}$/);
};

/**
 * Returns true if transaction amount is less than MAX AMOUNT and > 0
 *
 * @param {BigNumber} amount
 */
export const specificCheck = (amount: BigNumber): boolean => {
  return amount.gt(0) && amount.lte(MAX_AMOUNT);
};

/**
 * Returns nonce for an account
 *
 * @param {Account} a
 */
export const getNonce = (a: Account): number => {
  const lastPendingOp = a.pendingOperations[0];

  const nonce = Math.max(
    a.myCoinResources?.nonce || 0,
    lastPendingOp && typeof lastPendingOp.transactionSequenceNumber === "number"
      ? lastPendingOp.transactionSequenceNumber + 1
      : 0
  );

  return nonce;
};
```

### Building and Signing transaction

The `Transaction` object is not exactly the transaction in the shape of the blockchain's protocol (which is generally serialized into a blob of bytes). So for convenience, you may implement a `buildTransaction` method to serialized it using <i>MyCoin</i> SDK, that could be reused for instance for estimating fees through the API.

`libs/ledger-live-common/src/families/mycoin/js-buildTransaction.ts`:

```ts
import type { Transaction } from "./types";
import type { Account } from "../../types";

import { getNonce } from "./logic";

const getTransactionParams = (a: Account, t: Transaction) => {
  switch (t.mode) {
    case "send":
      return t.useAllAmount
        ? {
            method: "transferAll",
            args: {
              dest: t.recipient,
            },
          }
        : {
            method: "transfer",
            args: {
              dest: t.recipient,
              value: t.amount.toString(),
            },
          };
    default:
      throw new Error("Unknown mode in transaction");
  }
};

/**
 *
 * @param {Account} a
 * @param {Transaction} t
 */
export const buildTransaction = async (a: Account, t: Transaction) => {
  const address = a.freshAddress;
  const params = getTransactionParams(a, t);
  const nonce = getNonce(a);

  const unsigned = {
    address,
    nonce,
    params,
  };

  // Will likely be a call to MyCoin SDK
  return JSON.stringify(unsigned);
};
```

This `buildTransaction` function would return an unsigned transaction blob that would be signed with the <i>MyCoin</i> App on device:

`libs/ledger-live-common/src/families/mycoin/js-signOperation.ts`:

```ts
import { BigNumber } from "bignumber.js";
import { Observable } from "rxjs";
import { FeeNotLoaded } from "@ledgerhq/errors";

import type { Transaction } from "./types";
import type { Account, Operation, SignOperationEvent } from "../../types";

import { withDevice } from "../../hw/deviceAccess";
import { encodeOperationId } from "../../operation";
import MyCoin from "./hw-app-mycoin/MyCoin";

import { buildTransaction } from "./js-buildTransaction";
import { getNonce } from "./logic";

const buildOptimisticOperation = (
  account: Account,
  transaction: Transaction,
  fee: BigNumber
): Operation => {
  const type = "OUT";

  const value = BigNumber(transaction.amount).plus(fee);

  const operation: $Exact<Operation> = {
    id: encodeOperationId(account.id, "", type),
    hash: "",
    type,
    value,
    fee,
    blockHash: null,
    blockHeight: null,
    senders: [account.freshAddress],
    recipients: [transaction.recipient].filter(Boolean),
    accountId: account.id,
    transactionSequenceNumber: getNonce(account),
    date: new Date(),
    extra: { additionalField: transaction.amount },
  };

  return operation;
};

/**
 * Adds signature to unsigned transaction. Will likely be a call to MyCoin SDK
 */
const signTx = (unsigned: string, signature: any) => {
  return `${unsigned}:${signature}`;
};

/**
 * Sign Transaction with Ledger hardware
 */
const signOperation = ({
  account,
  deviceId,
  transaction,
}: {
  account: Account,
  deviceId: *,
  transaction: Transaction,
}): Observable<SignOperationEvent> =>
  withDevice(deviceId)((transport) =>
    Observable.create((o) => {
      async function main() {
        o.next({
          type: "device-signature-requested",
        });

        if (!transaction.fees) {
          throw new FeeNotLoaded();
        }

        const unsigned = await buildTransaction(account, transaction);

        // Sign by device
        const myCoin = new MyCoin(transport);
        const r = await myCoin.signTransaction(
          account.freshAddressPath,
          unsigned
        );

        const signed = signTx(unsigned, r.signature);

        o.next({ type: "device-signature-granted" });

        const operation = buildOptimisticOperation(
          account,
          transaction,
          transaction.fees ?? BigNumber(0)
        );

        o.next({
          type: "signed",
          signedOperation: {
            operation,
            signature: signed,
            expirationDate: null,
          },
        });
      } 

    main().then(
      () => o.complete(),
      (e) => o.error(e)
    );
  })
);

export default signOperation;
```

The `signOperation` function returns an Observable that will notify its subscriber when the user grated the signature.
It must notify it with the signedOperation, with `signature` (generally contains the whole blob to be broadcasted) and `operation`.

This operation is an optimistic version of the `Operation` that would be displayed in the account history as a "Pending Operation" if the broadcast succeed. This pending operation is important to give feedback to the user, but may also be required for calculate the nonce (if relevant).

### Front-end helpers

Live Common is mainly dedicated to be used by Ledger Live front-ends (Desktop and Mobile), so it also contains utilities for react and displaying crypto-specific data.

#### Device transaction fields

When signing a transaction, the user is shown on his device all the parameters of this transaction through multiple screen, that he must check towards the value he entered, and compare with what Ledger Live is presenting.

The list of all displayed fields on device are provided by the `getDeviceTransactionConfig` function, which must return all transaction fields for a given transaction.

`libs/ledger-live-common/src/families/mycoin/deviceTransactionConfig.ts`:
```ts
import type { AccountLike, Account, TransactionStatus } from "../../types";
import type { Transaction } from "./types";
import type { DeviceTransactionField } from "../../transaction";

function getDeviceTransactionConfig({
  transaction,
  status: { estimatedFees },
}: {
  account: AccountLike;
  parentAccount?: Account;
  transaction: Transaction;
  status: TransactionStatus;
}): Array<DeviceTransactionField> {
  const fields: Array<DeviceTransactionField> = [];

  if (transaction.useAllAmount) {
    fields.push({
      type: "text",
      label: "Method",
      value: "Transfer All",
    });
  } else {
    fields.push({
      type: "text",
      label: "Method",
      value: "Transfer",
    });
    fields.push({
      type: "amount",
      label: "Amount",
    });
  }

  if (!estimatedFees.isZero()) {
    fields.push({
      type: "fees",
      label: "Fees",
    });
  }

  return fields;
}

export default getDeviceTransactionConfig;
```
<!--  -->
{% include alert.html style="important" text="Since a not-well-informed user could be tricked to sign transaction with wrong recipients, we never show the <code>destination</code> fields in Ledger Live applications, in order for users to get used to always verify it externally." %}
<!--  -->


### Broadcast

Once the transaction is signed, it must be broadcasted to MyCoin network. This is pretty easy if you correctly wrapped your API.

`libs/ledger-live-common/src/families/mycoin/js-broadcast.ts`

```ts
import type { Operation, SignedOperation } from "../../types";
import { patchOperationWithHash } from "../../operation";

import { submit } from "./api";

/**
 * Broadcast the signed transaction
 * @param {signature: string, operation: string} signedOperation
 */
const broadcast = async ({
  signedOperation: { signature, operation },
}: {
  signedOperation: SignedOperation,
}): Promise<Operation> => {
  const { hash } = await submit(signature);

  return patchOperationWithHash(operation, hash);
};

export default broadcast;
```

This function must return the optimistic operation, patched with the `hash` generally provided by the network.
Once the operation is synced from <i>MyCoin</i> API, the AccountBridge will remove this optimistic operation from the `pendingOperations`.

<!--  -->
{% include alert.html style="tip" text="When there are some pending operations, synchronization will occur every minutes." %}

### Estimate Max Spendable

The maximum spendable amount is the total balance in an account that is available to send in a transaction. This amount is specific to <i>MyCoin</i>, so you will need to provide this value depending on the transaction the user want to send.

See [https://support.ledger.com/hc/en-us/articles/360012960679-Maximum-spendable-amount](https://support.ledger.com/hc/en-us/articles/360012960679-Maximum-spendable-amount)

`libs/ledger-live-common/src/families/mycoin/js-estimateMaxSpendable.ts`

```ts
import { BigNumber } from "bignumber.js";

import type { AccountLike, Account } from "../../types";
import { getMainAccount } from "../../account";

import type { Transaction } from "./types";

import { createTransaction } from "./js-transaction";
import getEstimatedFees from "./js-getFeesForTransaction";

/**
 * Returns the maximum possible amount for transaction
 *
 * @param {Object} param - the account, parentAccount and transaction
 */
const estimateMaxSpendable = async ({
  account,
  parentAccount,
  transaction,
}: {
  account: AccountLike,
  parentAccount?: Account,
  transaction?: Transaction,
}): Promise<BigNumber> => {
  const a = getMainAccount(account, parentAccount);
  const t = {
    ...createTransaction(),
    ...transaction,
    amount: a.spendableBalance,
  };

  const fees = await getEstimatedFees({ a, t });

  return a.spendableBalance.minus(fees);
};

export default estimateMaxSpendable;
```

Here, we only return the spendableBalance, but without the fees. Since Fee estimation can be used elsewhere (like in the `prepareTransaction`), you can put it's logic in a dedicated `js-getFeesForTransaction.ts` file. Here is an example for a fee fetched from network from an unsigned transaction (a bit like Polkadot), but you can also have specific calculation, with fee-per-byte value provided by the blockchain.

`libs/ledger-live-common/src/families/mycoin/js-getFeesForTransaction.ts`:

```ts
import { BigNumber } from "bignumber.js";

import type { Account } from "../../types";
import type { Transaction } from "./types";

import { getFees } from "./api";
import { buildTransaction } from "./js-buildTransaction";

/**
 * Fetch the transaction fees for a transaction
 *
 * @param {Account} a
 * @param {Transaction} t
 */
const getEstimatedFees = async ({
  a,
  t,
}: {
  a: Account,
  t: Transaction,
}): Promise<BigNumber> => {
  const unsigned = await buildTransaction(a, t);
  const fees = await getFees(unsigned);

  return fees;
};

export default getEstimatedFees;
```

### Testing send with CLI

Before being able to test a `send` operation with CLI you will need to bind arguments and infer a transaction from it. Since we defined a "mode" field in the transaction, this will be the only argument that will be necessary to test a send.

`libs/ledger-live-common/src/families/mycoin/cli-transaction.ts`:

```ts
import flatMap from "lodash/flatMap";
import type { Transaction, AccountLike } from "../../types";

const options = [
  {
    name: "mode",
    type: String,
    desc: "mode of transaction: send",
  },
];

function inferTransactions(
  transactions: Array<{ account: AccountLike, transaction: Transaction }>,
  opts: Object
): Transaction[] {
  return flatMap(transactions, ({ transaction, account }) => {
    if (!transaction.family !== "mycoin") {
      throw new Error("transaction is not of type mycoin");
    }

    if (account.type === "Account" && !account.myCoinResources) {
      throw new Error("unactivated account");
    }

    return {
      ...transaction,
      family: "mycoin",
      mode: opts.mode || "send",
    };
  });
}

export default {
  options,
  inferTransactions,
};
```

Of course if <i>MyCoin</i> has more complex transactions, you can add many arguments to CLI. You can also define you own cli commands for any specific data you would like to fetch. See [Polkadot CLI commands](https://github.com/LedgerHQ/ledger-live/tree/develop/libs/ledger-live-common/src/families/polkadot/cli-transaction.ts).

Now you can try a `getTransactionStatus` or a `send`:

```sh
ledger-live getTransactionStatus -c mycoin -i 0 --amount 0.002 --recipient 8b2d58d4a7638e9ce8a0423bff5a2de0

# TRANSACTION
# SEND  0.0002 MYC
# TO 8b2d58d4a7638e9ce8a0423bff5a2de0
# STATUS
#  amount: 0.0002 MYC
#  estimated fees: 0.00157511 MYC
#  total spent: 0.00177511 MYC

ledger-live send -c mycoin -i 0 --amount 0.002 --recipient 8b2d58d4a7638e9ce8a0423bff5a2de0

# {"type":"device-signature-requested"}
# {"type":"device-signature-granted"}
# {"id":"js:2:mycoin:0a93ac3773d54c77817e46e1007d66e3:-134ad522346bee108fa42a512788494e-OUT","hash":"134ad522346bee108fa42a512788494e","type":"OUT","blockHash":null,"blockHeight":null,"senders":["0a93ac3773d54c77817e46e1007d66e3"],"recipients":["8b2d58d4a7638e9ce8a0423bff5a2de0"],"accountId":"js:2:mycoin:0a93ac3773d54c77817e46e1007d66e3:","transactionSequenceNumber":0,"extra":{"additionalField":"20000"},"date":"2021-03-01T08:59:57.445Z","value":"177511","fee":"157511"}
```