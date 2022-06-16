---
title: Broadcast
subtitle:
tags: [non dapp, live app, ledger live app, live application]
category: "Live Application: Non-DApp integration"
toc: true
layout: doc
---

## Introduction

To broadcast a transaction, you will need to use the `broadcastSignedTransaction` function.

[broadcastSignedtransaction](https://github.com/LedgerHQ/live-app-sdk/blob/main/docs/reference/classes/Mock.md#broadcastsignedtransaction):

```javascript
  async broadcastSignedTransaction(
    accountId: string,
    signedTransaction: RawSignedTransaction
  ): Promise<string>
```
  
As you can see, you need the `accountId` and the `signedTransaction`.
  
## Account Id
To get the `accountId`, you have two options. You can either use the `listAccounts` or the `requestAccount` functions.

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
## Signed Transaction
Refer to the page [How to: sign](https://developers.ledger.com/docs/non-dapp/howto/sign/).
