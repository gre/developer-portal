---
title: Types of apps and global architecture
subtitle:
tags: [nano app, nano application, dapp plugin, dapp, other applications, applications, apps]
category: Nano Application
toc: true
author:
layout: doc
---

## Types of apps

### Nano App
This is the application that allows the users to manage their crypto-assets with their Ledger devices. It is the first step to an integration of your coin or token to the Ledger environment and to an integration of your blockchain to Ledger Live.
The following sections will help you develop this type of application.

### DApp plugins
DApp Plugins are developed to integrate an Ethereum DApp to Ledger live. Ledger Live has a DApp browser where your DApp will be visible and usable through an iframe. Ethereum DApps can be developed for example to lend or borrow, swap, trade, pay with cryptoassets or manage your portfolio.
More information [here](../../dapp/process).

### Utility applications
These applications leverage Ledger technology but are not involved in managing crypto assets. They interact with Ledger devices and BOLOS operating system and can serve many purposes. They can be, for example, a password manager application, or a two-factor authentication application.

## Global architecture

Let’s see the typical end-to-end architecture of a BOLOS application, in the case of an app for a cryptocurrency:

<!-- ------------- Image ------------- -->
<div class="uk-text-center">
	<figure>
	    <a href="../images/app_architecture.png" style="border-bottom:none;">
			<img src="../images/app_architecture.png" class="align-center" alt="End-to-end architecture of a BOLOS application" />
		</a>
	<figcaption>End-to-end architecture of a BOLOS application</figcaption>
	</figure>
</div>
<!-- --------------------------------- -->

Three pieces of software are required:
- A BOLOS application, written in C, running on a Ledger device
- The with business logic and typically a GUI, running on a computer or a phone connected to the Ledger device
- A transaction explorer that interfaces between the front-end and the cryptocurrency daemon, running either locally (in the case of a full node) or remotely (light wallet)

If you’re not developing an app adding support for a cryptocurrency, then you can ignore the 3rd piece. Depending on your use case, the wallet app might be a simple daemon or a command line tool, without a GUI.

The Ledger Manager is the service which centralizes the distribution of [BOLOS](https://developers.ledger.com/docs/nano-app/bolos-introduction/) applications on Ledger devices. It is the place where both Ledger’s apps and third party apps are distributed to users.

<!-- ------------- Image ------------- -->
<div class="uk-text-center">
	<figure>
	    <a href="../images/manager.png" style="border-bottom:none;">
			<img src="../images/manager.png" class="align-center" alt="The Ledger Manager" />
		</a>
		<figcaption aria-hidden="true">The Ledger Manager</figcaption>
	</figure>
</div>
<!-- --------------------------------- -->





When these pieces are ready for deployment, they must be sent to Ledger for a security review. One of the things we're going to do is review the security of the BOLOS application code, and check that it functions as intended in conjunction with its wallet app. Here is a non-exhaustive list of what we're looking at during the review process:

- Backdoors
- Buffer overflows
- Correct use of the device (for example, minimizing [NVRAM wearing](../persistent-storage#flash-memory-endurance))
- Correct use of the SDK
- Application stability, correct handling of errors
- Correct usability (see [Design Guidelines](#design-guidelines))


Review time depends on Ledger’s available resources and code complexity. The more unique and complex the code, the longer the review. Please note that forks of supported BOLOS apps will require a new review. The decision to reject or revoke an app is at Ledger’s sole discretion. We will make our best efforts to provide a rationale for such decisions. Upon fixing identified issues, app authors will be allowed to re-submit their apps.




