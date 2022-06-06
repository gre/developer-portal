---
title: Ledger Live Architecture
subtitle: This section describes the high level technical architecture of Ledger Live and how the different components interact.
tags: [ledger live, live-common, ledgerjs, ledger-live-desktop, ledger-live-mobile]
category: Blockchain Support
author:
toc: true
layout: doc
---
  
## Global architecture overview

<!-- ------------- Image ------------- -->
[![App architecture](../images/general-architecture-live.png)](../images/general-architecture-live.png)
<!-- --------------------------------- -->

- The Ledger device acts as a signing box and it defers most of the technical complexity to Ledger Live (Ledger's official **wallet application**). Ledger Live contains the business logic and is (typically) a GUI, running on a computer or a phone connected to the device.
- The Nano application acts as a transaction signer key in a deterministic way. Having a publicly listed Nano application is a mandatory requirement before getting your blockchain supported on Ledger Live.
- In the case of Ledger Live, and for performance reason, a third layer is handling the indexing of transaction for a given blockchain.


## What is Ledger Live?

Ledger Live is Ledger's offical wallet application for Desktop and Mobile, providing a unique interface to maintain multiple crypto currencies for Ledger Nano S, X and S Plus, manage devices, create accounts, receive and send cryptoassets. It communicates with hardware wallet devices to verify
addresses and sign transactions with ledgerjs.

Ledger Live desktop is an hybrid application built using Electron, React Native, React, Redux, RxJS. It is compatible with **macOS 10.10+, Windows 8+ (x64)** and **Linux (x64)**.
The Ledger Live mobile app is compatible with **iOS** and **Android**.


### Ledger Live architecture

The Ledger Live application act as a relay between the different blockchains, and the hardware wallets. 

Its architecture is unconventional and may take some time to understand. Please take time to understand it because this will speed up your development. Please use the comment box at the bottom of the page for suggestions.

<!-- ------------- Image ------------- -->
[![Global Architecture](../images/global-architecture.png)](../images/global-architecture.png)
<!-- --------------------------------- -->

#### Live Common

The Common library of Ledger Live is called [Ledger-live-common](https://github.com/LedgerHQ/ledger-live-common). It provides a single library compatible with both desktop and mobile version of Ledger Live.

#### Communication with the Device

[ledgerjs](https://github.com/LedgerHQ/ledgerjs) is a set of packages. It allows a JavaScript
application to use the API of a Nano app. Nano apps are using APDU to
transfer data and commands to and from the external world. `ledgerjs` only
allows to use commands developed on the Nano app.


#### Communication with the different blockchains

The Ledger Live application wil retrieve transaction history and broadcast new transactions using different explorers.

As part of a Ledger Live blockchain integration, you should provide a indexer allowing a Ledger Live user to synchronize his account in a timely manner. It can be an open source project or your own explorer.

The Ledger Live application uses our own explorers for Bitcoin and Ethereum forks.
