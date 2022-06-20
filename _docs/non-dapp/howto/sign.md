---
title: Sign
subtitle:
tags: [non dapp, live app, ledger live app, live application]
category: "Live Application: Non-DApp integration"
toc: true
layout: doc
---

## Introduction

Signing a transaction is pretty straight-forward. 

[signTransaction](https://github.com/LedgerHQ/live-app-sdk/blob/main/docs/reference/classes/Mock.md#signtransaction):

```javascript
async signTransaction(
    accountId: string,
    transaction: Transaction,
    params?: {
      /**
       * The name of the Ledger Nano app to use for the signing process
       */
      useApp: string;
    }
  ): Promise<RawSignedTransaction> 
```

The two mandatory parameters that you need in order to sign a transaction are:
- Get the account of the user: `accountId` 
- Build the transaction: `transaction`. 

## Account Id

To get the `accountID`, you have two options. You can either use the `listAccounts` or the `requestAccount` functions.

### List account

List the accounts added by the user on Ledger Live.

[listAccounts](https://github.com/LedgerHQ/live-app-sdk/blob/main/docs/reference/classes/Mock.md#listaccounts):

```javascript
async listAccounts(): Promise<Account[]>
```
### Request account

Let the user choose an account in Ledger Live, providing filters for choosing currency or allowing add account.

[requestAccount](https://github.com/LedgerHQ/live-app-sdk/blob/main/docs/reference/classes/Mock.md#requestaccount): 

```javascript
async requestAccount(
    params: {
      currencies?: string[];
      allowAddAccount?: boolean;
    } = {}
  ): Promise<Account> 
```

## Transaction

The `transaction` parameter (type) must be built by yourself, it isn't returned by a function. 

[transaction](https://github.com/LedgerHQ/live-app-sdk/blob/main/docs/reference/modules.md#transaction):

```javascript
export interface TransactionCommon {
  amount: BigNumber;
  recipient: string;
}

export type Transaction =
  | EthereumTransaction
  | BitcoinTransaction
  | AlgorandTransaction
  | CryptoOrgTransaction
  | RippleTransaction
  | CosmosTransaction
  | TezosTransaction
  | PolkadotTransaction
  | StellarTransaction
  | TronTransaction;
```
