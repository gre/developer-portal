---
title: Ledger Connect
subtitle: Designing a DApp to be used with Ledger Connect (Browser extension in Safari)
tags: [web browser, extension]
category: Ledger Connect
toc: true
layout: doc
---

## Introduction

Ledger Connect allows you to use any Web3 Apps with your Ledger Nano X to prevent hacks, scams, and keep your crypto and NFTs secure.

This version supports Safari on iOS only. It is released as a Safari Web Extension, but will be shipped together with the Ledger Live mobile app in the future. We’re currently in beta, via the Apple TestFlight app.

### Video (TBD)

## Prerequisites

The only prerequisites concern the Blockchains & Networks which are currently supported:

- Ethereum (EIP-712, EIP-191, and EIP-1193)
- Solana

More platforms and blockchains to come at a later date.


## Summary of actions

1. Join our Discord server and the Ledger-connect-extension channel where you will contact us to get the extension 
2. Implement the API calls in your DApp
3. Web3Checks (optional): Add your DApp to the whitelist using the form.
4. Add the Ledger logo to your DApp
5. Testing (TBD)
6. Go to Discord and agree on an announcement on socials

## Implementation

### 1- Join Discord

Go to [Ledger OP3N discord server](https://discord.gg/Ledger), and head to the Ledger Connect channel

### 2- APIs

#### Ethereum APIs

Connect injects a web3 provider (EIP-1193) similar to other extensions and supports the same APIs. [add details]

1. Call ethereum.isLedgerConnect to determine if the user has the extension installed

2. Use common ethereum APIs. We currently support the following [add details]:
	- net_version
	- th_chainId
	- eth_accounts
	- eth_requestAccounts
	- eth_sign (only with a utf8 Buffer)
	- personal_sign
	- eth_signTypedData_v3
	- eth_signTypedData_v4
	- eth_sendTransaction

##### Ethereum code samples (TBD)

#### Solana APIs

##### Solana code samples (TBD)



### 3- Web3Checks (optional)

You can be added to this Web3Checks whitelist to avoid users receiving a warning. Please send us your DApp domain name, DApp name and token name if any, using the form below.

<div data-tf-widget="XaCLvew6" data-tf-iframe-props="title=My typeform" data-tf-medium="snippet" style="width:100%;height:400px;"></div><script src="//embed.typeform.com/next/embed.js"></script>

### 4- Ledger logo

[In this folder](https://drive.google.com/drive/folders/1NxfzuhheZ__RgVTFEgGxnY-E3PvK4YHI?usp=sharing ) your will find Ledger's logo to display in your application. 

### 5- Testing (TBD)

### 6- Communication

When you have finished the development of your DApp, please go to Discord and contact us. We will then agree with you on how and when to make announcements on social networks.

