---
title: Functions
subtitle:
tags: [app name, ticker, staking]
category: Nano Application
toc: true
author:
layout: doc
---

## Requirement Summary

|    Release Type       |          Unaudited     |          Audited       |          Public        |
|-----------------------|------------------------|------------------------|------------------------|
|  This requirement is: |    <b>Mandatory</b>    |   <b>Mandatory</b>     |   <b>Mandatory</b>     |

The requirement is to follow the guidelines for the app name and ticker, and to implement the blind signing option.

## App name and ticker guidelines

### App name
Define the App name in the makefile with the same name you want to have displayed on the manager and on the device.

### Ticker
Add the ticker with a pull request to the [the currencies.ts file](https://github.com/LedgerHQ/ledgerjs/blob/master/packages/cryptoassets/src/currencies.ts) in the ledgerjs repository and not directly in the makefile.

### Pull Request to currencies.ts

Open a pull request and follow [this example](https://github.com/LedgerHQ/ledgerjs/blob/master/packages/cryptoassets/src/currencies.ts#:~:text=Record%3Cstring%2C%20CryptoCurrency%3E%20%3D%20%7B-,near%3A%20%7B,%7D%2C,-aeternity%3A%20%7B) to add your currency in the ledgerjs repository.

You will be asked for the pull request link in the submission form.


## Transaction display and blind signing

For every transaction, the users must be able to verify on the device the amount being transferred and the destination address or the validator/nominator address(es) in the case of a staking operation.

When the display of those parameters (Token, smart contract management) is not possible, the transaction should be rejected by the device unless the user has acknowledged that they will be blind signing.

To implement this requirement it is recommended to have a setting menu with the possibility to enable/disable blind signing.

If blind signing is implemented, it must be disabled by default.

You can find implementation example inside [Ethereum](https://github.com/LedgerHQ/app-ethereum), [Solana](https://github.com/LedgerHQ/app-solana) or [Elrond](https://github.com/LedgerHQ/app-elrond) code base.
