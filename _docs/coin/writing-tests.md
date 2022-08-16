---
title: Writing Tests
subtitle:
tags: [ledger-live-common, test-dataset, test, testing, speculos, bot, the bot]
category: Blockchain Support
author:
toc: true
layout: doc
---

## Setting up the Test Toolchain

Before testing, make sure you have [set up the CLI](../ledger-live-cli).

## Writing bridge.integration.test.ts

Any test that requires HTTP to work should be moved in an integration test using the file name convention `.integration.test.ts`. In the case of testing a coin integration, we usually name that file `bridge.integration.test.ts` and we recommend to use the `testBridge` utility.

The `testBridge` utility takes a "DatasetTest" as a parameter which will conduct many kind of integration tests.

First, create a `bridge.integration.test.ts` file and fill it with this empty template:

```ts
import "../../__tests__/test-helpers/setup";
import { testBridge } from "../../__tests__/test-helpers/bridge";
import type { DatasetTest } from "../../types";
import type { Transaction } from "./types";

const dataset: DatasetTest<Transaction> = {
  implementations: ["js"],
  currencies: {
    mycoin: {},
  },
};
```

You can also generate it with a Ledger device, with a seed that you want to freeze (meaning you don't want to do anymore transaction with that seed, or you will need to regenerate the snapshot everytime) and execute in the CLI the command:

```sh
pnpm cli:run generateTestScanAccounts -c mycoin
```

The expected output is:

```ts
import "../../__tests__/test-helpers/setup";
import { testBridge } from "../../__tests__/test-helpers/bridge";
import type { CurrenciesData } from "../../../types";
import type { Transaction } from "../types";

const dataset: CurrenciesData<Transaction> = {
  scanAccounts: [
    {
      name: "mycoin seed 1",
      apdus: `
      => 100112344221c00002200000000000000000000000
      <= 213321ac21234122100000000000000000
      => 100112344221c00002200000800000008000000080
      <= 213321ac21234122100000000000000000
      => 100112344221c00002210000800000008000000080
      <= 213321ac21234122100000000000000000
      => 100112344221c00002220000800000008000000080
      <= 213321ac21234122100000000000000000
      => 100112344221c00002230000800000008000000080
      `,
    },
  ],
};

testBridge(dataset);
```

Just keep the part with the scanAccounts and put it the `mycoin` part :

```ts
import "../../__tests__/test-helpers/setup";
import { testBridge } from "../../__tests__/test-helpers/bridge";
import type { DatasetTest } from "../../types";
import type { Transaction } from "./types";

const dataset: DatasetTest<Transaction> = {
  implementations: ["js"],
  currencies: {
    mycoin: {
      scanAccounts: [
        {
          name: "mycoin seed 1",
          apdus: `
            => 100112344221c00002200000000000000000000000
            <= 213321ac21234122100000000000000000
            => 100112344221c00002200000800000008000000080
            <= 213321ac21234122100000000000000000
            => 100112344221c00002210000800000008000000080
            <= 213321ac21234122100000000000000000
            => 100112344221c00002220000800000008000000080
            <= 213321ac21234122100000000000000000
            => 100112344221c00002230000800000008000000080
            `,
        },
      ],
    },
  },
};

testBridge(dataset);
```

Then, get info on the accounts that you want to freeze, they will be used as references for our tests.
It should look something like this:

```ts
import "../../__tests__/test-helpers/setup";
import { testBridge } from "../../__tests__/test-helpers/bridge";
import type { DatasetTest } from "../../types";
import type { Transaction } from "./types";

const dataset: DatasetTest<Transaction> = {
  implementations: ["js"],
  currencies: {
    mycoin: {
      scanAccounts: [
        {
          name: "mycoin seed 1",
          apdus: `
            => 100112344221c00002200000000000000000000000
            <= 213321ac21234122100000000000000000
            => 100112344221c00002200000800000008000000080
            <= 213321ac21234122100000000000000000
            => 100112344221c00002210000800000008000000080
            <= 213321ac21234122100000000000000000
            => 100112344221c00002220000800000008000000080
            <= 213321ac21234122100000000000000000
            => 100112344221c00002230000800000008000000080
            `,
        },
      ],
      accounts: [
        {
          raw: {
            id: `js:2:mycoin:ADDR:`,
            seedIdentifier: ADDR,
            name: "MyCoin 1",
            derivationMode: "",
            index: 0,
            freshAddress: ADDR,
            freshAddressPath: "44'/354'/0'/0/0'",
            freshAddresses: [],
            blockHeight: 0,
            operations: [],
            pendingOperations: [],
            currencyId: "mycoin",
            unitMagnitude: 10,
            lastSyncDate: "",
            balance: "2111000",
          },
          transactions: [
            // HERE WE WILL INSERT OUR test
          ],
        },
      ],
    },
  },
};

testBridge(dataset);
```

### How does a test work?

The transaction tests simulate an object `Transaction` as input, and a `TransactionStatus` as an output that we compare with an expected status.

There's some generic tests that are already made in `src/__tests__/test-helpers/bridge.ts` that are mandatory to pass.

To implement your own test in `test-dataset.ts`, add an Object typed like this in the array of `transactions`:

```ts
import Transaction from "./types";

type TestTransaction = {
  name: string;
  transaction: Transaction;
  expectedStatus: {
    amount: BigNumber;
    errors: {};
    warnings: {};
  };
};
```

This `TestTransaction` uses as mainAccount the account that we have set before and then execute the command `getTransactionStatus` by using the `transaction` object as input.

### Use regular Jest tests if you need more flexibility

We tried to cover as many cases as possible that are in `getTransactionStatus`.

You are free to define your own extra tests in `bridge.integration.test.ts` (or any other integration test file) for more advanced tests that would not be covered by the bridge generic tests.

## Testing the transaction broadcast with the bot

Transaction broadcast is an exception, it is tested differently, by a tool that we call "the bot". See below.

### Requirements

- Docker
- An elf of the Nano app for LNS (create a empty folder with like : `<device>/<firmware version>/<appName>` example `nanos/1.6.1/mycoin`. The build of your Nano app must have the following format: `app_VERSION.elf`, for example `app_1.2.3.elf`)
- Some currencies of the coin

### What is this testing?

We are testing the broadcast part and sync part.

### How it works

```sh
pnpm cli:run cleanSpeculos && SEED="generate a seed for testing" COINAPPS="/path/to/coin/apps/folder" ledger-live bot -c mycoin
```

- Generate a 24 words SEED, [iancoleman.io/bip39/](https://iancoleman.io/bip39/). Use this seed for testing purpose only, then use the command before to have an adresse and send some currencies into it

- The bot will execute each scenario if it met the requirement, then it will wait until the sync find the broadcasted transaction

- You also need to specify how the bot will react when he encounter certain screen, create `speculos-deviceActions.ts`

### How to define a test

`speculos-deviceActions.ts`

It is required to know every screen that your nano app contains, it will use the `title` of the screen then optionally check if the `expectedValue` of that screen is what it expects, then eventually execute the `button` action.

```ts
title : name of the screen title
button: "Rr" for the bot to push the Right button of the nano || "Ll" same for left || "LRlr" same but for both
expectedValue: string of what we want to compare
```

You can use the following example to help you start to write how the bot will react :

```ts
import type { DeviceAction } from "../../bot/types";
import type { Transaction } from "./types";
import { formatCurrencyUnit } from "../../currencies";
import { deviceActionFlow } from "../../bot/specs";

const expectedAmount = ({ account, status }) =>
  formatCurrencyUnit(account.unit, status.amount, {
    disableRounding: true,
  }) + " MCN";

const acceptTransaction: DeviceAction<Transaction, *> = deviceActionFlow({
  steps: [
    {
      title: "Starting Balance",
      button: "Rr",
      expectedValue: expectedAmount,
    },
    {
      title: "Send",
      button: "Rr",
      expectedValue: expectedAmount,
    },
    {
      title: "Fee",
      button: "Rr",
      expectedValue: ({ account, status }) =>
        formatCurrencyUnit(account.unit, status.estimatedFees, {
          disableRounding: true,
        }) + " XLM",
    },
    {
      title: "Destination",
      button: "Rr",
      expectedValue: ({ transaction }) => transaction.recipient,
    },
    {
      title: "Accept",
      button: "LRlr",
    },
  ],
});

export default { acceptTransaction };
```

`specs.ts`

You can check the following example to help you write your specs.

The bot will execute all the `mutations` if it doesn't encounter an invariant.

Then it will execute all the `updates` of the `Transaction` object.

The bot will try to sign the transaction using instructions that you provided in `speculos-deviceActions.ts`

Eventually it will broadcast the transaction in the blockchain and wait for the `sync` to find the operation and its optimisic version.

```ts
import expect from "expect";
import invariant from "invariant";
import type { AppSpec } from "../../bot/types";
import type { Transaction } from "./types";
import type { Account } from "../../types";
import { pickSiblings } from "../../bot/specs";
import { isAccountEmpty } from "../../account";

// Ensure that, when the recipient corresponds to an empty account,
// the amount to send is greater or equal to the required minimum
// balance for such a recipient
const checkSendableToEmptyAccount = (amount, recipient) => {
  if (isAccountEmpty(recipient) && amount.lte(minBalanceNewAccount)) {
    invariant(
      amount.gt(minBalanceNewAccount),
      "not enough funds to send to new account"
    );
  }
};

const mycoin: AppSpec<Transaction> = {
  name: "mycoin",
  currency,
  appQuery: {
    model: "nanoS",
    appName: "mycoin",
  },
  mutations: [
    {
      name: "move ~50%",
      maxRun: 2,
      transaction: ({ account, siblings, bridge, maxSpendable }) => {
        const sibling = pickSiblings(siblings, 4);
        const recipient = sibling.freshAddress;

        let transaction = bridge.createTransaction(account);

        let amount = spendableBalance
          .div(1.9 + 0.2 * Math.random())
          .integerValue();

        checkSendableToEmptyAccount(amount, sibling);

        const updates = [{ amount }, { recipient }];
        return {
          transaction,
          updates,
        };
      },
      test: ({ account, accountBeforeTransaction, operation }) => {
        const rewards =
          accountBeforeTransaction.algorandResources?.rewards || 0;

        expect(account.balance.plus(rewards).toString()).toBe(
          accountBeforeTransaction.balance.minus(operation.value).toString()
        );
      },
    },
  ],
};

export default { mycoin };
```
