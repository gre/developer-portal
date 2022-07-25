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

## App name guidelines

Define the App name in the makefile with the same name you want to have displayed on the manager and on the device. Write the app name as you want it to be displayed on the Nano, for example: `APPNAME = "App Name".`


## Transaction display and blind signing

For every transaction, the users must be able to verify on the device the amount being transferred and the destination address or the validator/nominator address(es) in the case of a staking operation.

When the display of those parameters (Token, smart contract management) is not possible, the transaction should be rejected by the device unless the user has acknowledged that they will be blind signing.

To implement this requirement it is recommended to have a setting menu with the possibility to enable/disable blind signing.

If blind signing is implemented, it must be disabled by default.

You can find implementation example inside [Ethereum](https://github.com/LedgerHQ/app-ethereum), [Solana](https://github.com/LedgerHQ/app-solana) or [Elrond](https://github.com/LedgerHQ/app-elrond) code base.
