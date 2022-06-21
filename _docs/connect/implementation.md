---
title: Implementation
subtitle: Designing a DApp to be used with Ledger Connect (Browser extension in Safari)
tags: [web browser, extension]
category: Ledger Connect
toc: true
layout: doc
---


## 1- Join Discord

Go to the [Ledger OP3N discord server](https://discord.gg/Ledger), and head over to the Ledger Connect channel

## 2- Coding

### APIs

Connect injects a web3 provider (EIP-1193) similar to other extensions and supports the same APIs. [add details]

1. Call `ethereum.isLedgerConnect` to determine if the user has the extension installed

2. Use common Ethereum APIs. We currently support the following:
	- net_version
	- th_chainId
	- eth_accounts
	- eth_requestAccounts
	- eth_sign (only with a utf8 Buffer)
	- personal_sign
	- eth_signTypedData_v3
	- eth_signTypedData_v4
	- eth_sendTransaction

### Web3-react NPM package

You can use this [web3-react-ledgerconnect-connector](https://www.npmjs.com/package/@ledgerhq/web3-react-ledgerconnect-connector) in your Web3-react project


<!--  -->
{% include alert.html style="tip" text="Eventually, you will be able to integrate Ledger Connect to your DApp either with our APIs and a SDK or with wallet librairies. You will be informed on Discord when this will be available." %}
<!--  -->


## 3- Ledger logo

[In this folder](https://drive.google.com/drive/folders/1KWQwTQJTnBMESyrpt17Cn0hT1HmQ_8BH?usp=sharing) your will find Ledger's logo to display in your application. 


## 4- Web3Checks (optional)

You can be added to the Web3Checks whitelist to avoid users receiving a warning. Please send us your DApp domain name, DApp name and token name if any, using the form below.

<div data-tf-widget="XaCLvew6" data-tf-iframe-props="title=My typeform" data-tf-medium="snippet" style="width:100%;height:400px;"></div><script src="//embed.typeform.com/next/embed.js"></script>


## 5- Communication

When you have finished the development of your DApp, please go over to Discord and contact us. We will then agree with you on how and when to make announcements on social networks.

