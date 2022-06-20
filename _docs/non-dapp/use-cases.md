---
title: Use Cases
subtitle:
tags: [non dapp, live app, ledger live app]
category: "Live Application: Non-DApp integration"
toc: true
layout: doc
---

## On ramp / Buy (fiat to crypto swap)

Use [requestAccount](https://github.com/LedgerHQ/live-app-sdk/blob/main/docs/reference/classes/LedgerLivePlatformSDK.md#requestaccount) SDK function to retrieve the account the user wants to use to deposit crypto. Set the *currencies* parameter to restrict the account list, set the *allowAddAccount* parameter to *true* to allow the user to create an account on the fly.

## Sell (crypto to fiat swap)

Use this [function](../howto/sell/)
