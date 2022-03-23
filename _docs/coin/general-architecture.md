---
title: Architecture and work breakdown structure
subtitle: This section describes the high level technical architecture of Ledger Live and how the different components interact.
tags: [ledger live, live-common, ledgerjs, ledger-live-desktop, ledger-live-mobile]
category: Blockchain Support
author:
toc: true
layout: doc
---
  
## Global architecture overview

--- This is my contribution

<!-- ------------- Image ------------- -->
[![App architecture](../images/general-architecture-live.png)](../images/general-architecture-live.png)
<!-- --------------------------------- -->

- The Ledger device acts as a signing box and it defers most of the technical complexity to Ledger Live (Ledger's official **wallet application**). Ledger Live contains the business logic and is (typically) a GUI, running on a computer or a phone connected to the device.
- The Nano application acts as a transaction signer key in a deterministic way. Having a publicly listed Nano application is a mandatory requirement before getting your blockchain supported on Ledger Live.
- In the case of Ledger Live, and for performance reason, a third layer is handling the indexing of transaction for a given blockchain.


## What is Ledger Live?

Ledger Live is Ledger's offical wallet application for Desktop and Mobile, providing a unique interface to maintain multiple crypto currencies
for Ledger Nano S and X, manage devices, create accounts, receive and send cryptoassets. It communicates with hardware wallet devices to verify
addresses and sign transactions with ledgerjs.

Ledger Live desktop is an hybrid application built using Electron, React Native, React, Redux, RxJS. It is compatible with **macOS 10.10+, Windows 8+ (x64)** and **Linux (x64)**.
The Ledger Live mobile app is compatible with **iOS** and **Android**.


### Ledger Live architecture

<!-- ------------- Image ------------- -->
[![Global Architecture](../images/global-architecture.png)](../images/global-architecture.png)
<!-- --------------------------------- -->

The Ledger Live application act as a relay between the different blockchains, and the hardware wallets.

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


## Work breakdown 

### Timeline

This time line shows the relative time of the steps (XS, S, M and L) you will go through for most integrations.


<div class="uk-text-center" uk-grid>
	<div class="uk-child-width-1-6@m">
	    <div class="uk-card-default uk-card-hover border-xlight" style="padding:0px; width:200px;">
			<a href="../cryptoassets-library">
			 <img alt="" src="../images/cryptoassets-library.png">
			</a>
	    </div>
	</div>
	<div class="uk-child-width-1-6@m">
	    <div class="uk-card-default uk-card-hover border-xlight" style="padding:0px; width:200px;">
			<a href="../js-bindings">
			 <img alt="" src="../images/js-bindings.png">
			</a>
	    </div>
	</div>
	<div class="uk-child-width-1-6@m">
	    <div class="uk-card-default uk-card-hover border-xlight" style="padding:0px; width:200px;">
			<a href="../address-derivation">
			 <img alt="" src="../images/address-derivation.png">
			</a>
	    </div>
	</div>
	<div class="uk-child-width-1-6@m">
	    <div class="uk-card-default uk-card-hover border-xlight" style="padding:0px; width:200px;">
			<a href="../sync">
			 <img alt="" src="../images/sync-light.png">
			</a>
	    </div>
	</div>
	<div class="uk-child-width-1-6@m">
	    <div class="uk-card-default uk-card-hover border-xlight" style="padding:0px; width:200px;">
			<a href="../sync">
			 <img alt="" src="../images/sync-full.png">
			</a>
	    </div>
	</div>
	<div class="uk-child-width-1-6@m">
	    <div class="uk-card-default uk-card-hover border-xlight" style="padding:0px; width:200px;">
			<a href="../send">
			 <img alt="" src="../images/send.png">
			</a>
	    </div>
	</div>
</div>

For any complementary implempentation (staking, tokens, NFTs), you will be guided by the Blockchain support team. 

