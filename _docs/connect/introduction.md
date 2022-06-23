---
title: Prerequisites and summary of actions
subtitle: Designing a DApp to be used with Ledger Connect (Browser extension in Safari)
tags: [web browser, extension]
category: Ledger Connect
toc: true
layout: doc
---

## Introduction

Ledger Connect allows you to use any Web3 App with your Ledger Nano X to prevent hacks, scams, and keep your crypto and NFTs secure.

<iframe width="560" height="315" src="https://www.youtube.com/embed/SV15K_H82_U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This version supports Safari on iOS only. It is released as a Safari Web Extension, but will be shipped together with the Ledger Live mobile app in the future. We’re currently in beta, via the Apple TestFlight app.

In this documentation you will find some basic information to get your coding started. Keep in mind that this product is currently at a very early stage, and that more thorough guidelines will come in the future.

### Why Ledger Connect?

Ledger Connect was created to provide a new seamless and secure way to connect to Web3 Apps with a Ledger device.
By bringing new features such as Web3 checks (warning when you connect to a suspicious app) or transaction simulation (preview of the impact on your wallet if you sign a transaction), Ledger Connect defines a new standard that will benefit all players in the ecosystem. The goal is to make the Web 3 experience even more secure and user-friendly.

Launching Ledger Connect doesn’t mean that we are stopping or reducing collaboration with other wallets or browser extensions. Web3 is about having the freedom to choose your interface. With Ledger Connect, users have more freedom to choose how to connect their hardware wallet to their favorite Web3 dApps.

### What is the difference with "Connect your app"?

The [**Connect your app**](../../transport/overview/) section helps you build the compatibility between a DApp, a non-DApp or wallet and a Ledger device, while this section helps you build the compatibility bewteen your DApp and the Ledger Connect browser extension.

Ledger Connect will eventually replace the need to implement a custom integration for your DApp. The custom integration will still be useful for wallets and non-DApp or for other types of connectivity than Bluetooth


## Prerequisites

The only prerequisites concern the Blockchains & Networks which are currently supported:

- Ethereum (EIP-712, EIP-191, and EIP-1193)

Solana and more blockchains to come at a later date.


## Summary of actions

1. Join our Discord server and the Ledger-connect-extension channel where you will contact us to get the extension 
2. Implement the API calls in your DApp or use the Web3-react package
3. Add the Ledger logo to your DApp
4. Web3Checks (recommended): Add your DApp to the whitelist using the form
5. Go to Discord to discuss announcements on social networks

These actions are detailed on the next page.
