---
title: Ledger Connect DApp Integration (beta)
subtitle:
tags: [web browser, extension]
category: Ledger Connect
toc: true
layout: doc
---

Ledger Connect allows you to connect to Web3 Apps from anywhere with your Ledger Nano X to prevent hacks, scams, and keep your crypto and NFTs secure.

Our upcoming beta version will support Safari on iOS. It will be released as a Safari Web Extension, shipped together with the Ledger Live mobile app. We’re currently in beta, via the Apple TestFlight app. 

## Integration Process

1. Join our Discord server and the **ledger-connect-extension** channel
2. Implement the API calls in your application
3. Add your DApp to the whitelist [using the form](#web3checks) (optional)

## Blockchains & Networks supported

- Ethereum
- Solana

More platforms and blockchains will be supported at a later date.


**Details on Ethereum**

Connect injects a web3 provider (EIP-1193) similar to other extensions and supports the same APIs.
1. Look for `ethereum.isLedgerConnect` to determine if the user has the extension
2. Call common ethereum apis.

## APIs

We currently support the following apis:
- net_version
- th_chainId
- eth_accounts
- eth_requestAccounts
- eth_sign (only with a utf8 Buffer)
- personal_sign
- eth_signTypedData_v3
- eth_signTypedData_v4
- eth_sendTransaction

## EIPs

We currently support:
- EIP-712
- EIP-191
- EIP-1193

## Web3Checks

As part of Web3Checks we have a whitelist of DApps we currently support.

If you want to be added to this whitelist so that users don’t receive the warning, please send us your official dapp domain name, dapp name and token name if any, using the form below.

You will be notified on Discord when your app is whitelisted.

<div data-tf-widget="XaCLvew6" data-tf-iframe-props="title=My typeform" data-tf-medium="snippet" style="width:100%;height:400px;"></div><script src="//embed.typeform.com/next/embed.js"></script>

## Resources (logo/icon)

[In this folder](https://drive.google.com/drive/folders/1NxfzuhheZ__RgVTFEgGxnY-E3PvK4YHI?usp=sharing ) your will find Ledger's logo to integrate to your application. 
