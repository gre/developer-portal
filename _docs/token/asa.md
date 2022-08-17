---
title: ASA
subtitle:
tags: [tokens]
category: Token Integration
category: Tokens
toc: true
author:
layout: doc
---



For ASAs, compared to ERC20, the process differs due to the fact that the tokens details are hardcoded within the Algorand Nano application instead of being streamed to the device. Furthermore, the ownership of the Algorand Nano Application source code lies with the Algorand team. Request for updates must be validated by them before being reviewed by Ledger, that is why there is no form.

## How to request a token addition

### 1. Is my ASA token listed?

First, make sure your token isn’t already listed by checking this table of the [supported crypto-assets](https://github.com/LedgerHQ/ledger-live/blob/develop/apps/ledger-live-desktop/cryptoassets.md).

<!--  -->
{% include alert.html style="tip" text="The list of supported assets on the <a href='https://www.ledger.com/supported-crypto-assets/'>website</a> is managed through an internal Ledger process. For the moment it’s difficult to guarantee the exact mapping between tokens available on Ledger Live and listed on the website." %}
<!--  -->

### 2. How to get my token listed?

Update the [Algorand Nano app](https://github.com/algorand/ledger-app-algorand/blob/main/app/src/algo_asa.c).
When your PR is validated by the Algorand team, they will make a PR to Ledger Github repository.

Then, the Algorand team will update the [ledgerjs package](https://github.com/LedgerHQ/ledger-live/blob/develop/libs/ledgerjs/packages/cryptoassets/data/asa.js).

<!--  -->
{% include alert.html style="important" text="To ensure both these topics are handled properly, we invite you to contact our engineering team through the <a href='https://developers.ledger.com/discord-pro'>Ledger's Discord server</a>." %}
<!--  -->


### What next?

This is all you need to do. Ledger will review the PR made by the Algorand team to [Ledger Github repository](https://github.com/LedgerHQ/app-algorand).
Ledger will review and merge the PR made on the [ledgerjs package](https://github.com/LedgerHQ/ledger-live/blob/develop/libs/ledgerjs/packages/cryptoassets/data/asa.js).
Ledger will perform a functional review of the changes before release in production.
