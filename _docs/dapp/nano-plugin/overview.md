---
title: Overview
subtitle:
tags: [dapp, DApp plugin]
category: "Live App: Dapp integration"
author:
toc: true
layout: doc
---

Let’s start with a high-level overview of what a plugin is, how it interacts with the Ethereum app, and the steps required to write your plugin.

<!--  -->
{% include alert.html style="note" text="Even though this guide is relatively beginner-friendly, you need to have prior experience of C and Solidity development.
" %}
<!--  -->

## Why Plugins?

If you’ve already interacted with any smart contract using a Ledger Device, then you’ve already seen this screen:
<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="240" src="../images/4ajl6d2.png" ></div>
<!-- --------------------------------- -->

This is a UX disaster. The user has no guarantee of interacting with the right smart contract, nor of signing the correct data. The only user action is literally to blind-sign the transaction.

Display information is specific to each smart contract: so when swapping on a decentralised exchange, you probably want to see information such as “Swapping X ETH for Y DAI”. When depositing DAI on Aave, you need to see the amount in DAI. So, the information is specific to the smart contract.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="680" src="../images/plugin.png">
</div>
<!-- --------------------------------- -->

Modifying the Ethereum App would not do because its size would quickly go out of control. Instead, the solution lies in a small and versatile parser of smart contract data, which works hand-in-hand with the Ethereum App and decides what to display for the best user experience.

This is precisely what a plugin is: a small app that the user installs on their device to show just what needs to be signed. Since plugins are very small, users can install many without worrying about memory.

Ledger designed and implemented Paraswap, the first Ethereum plugin.

<video controls muted preload='none' poster='../images/paraswap.png' ><source src="../videos/paraswap.mp4" type='video/mp4'></video><br>

<!--  -->
{% include alert.html style="note" text="The second mandatory requirement to obtain official support by Ledger for your DApp is using a plugin to verify transaction details on the Nano device." %}
<!--  -->

## Example

Plugins work hand-in-hand with the Ethereum App, and implementation is straightforward. The Ethereum App handles parsing, signing, screen display etc. The only thing your plugin needs to do is:

1. Extract the relevant information from the data.
2. Send the string to be displayed back to the Ethereum App.

Here is an overview of what the flow looks like:

<div class="mermaid">
sequenceDiagram
    Eth App ->> Plugin: Are you installed on this device?
    Note right of Plugin: Fail if<br>no plugin found
    Plugin -->> Eth App: Yes, bring it on!
    Note left of Eth App: Parse transaction
    Eth App ->> Plugin: Here is the contract data
    Note right of Plugin: Extract<br>important fields
    Plugin -->> Eth App: Ok
    Note left of Eth App: Compute stuff
    Note left of Eth App: Prepare the display
    Eth App ->> Plugin: What must I display with this?
    Note right of Plugin: Decide<br>what to display
    Plugin -->> Eth App: 'Swap ETH 1 for DAI 10000'
    Note left of Eth App: Display<br>the message
</div>
<script async src="https://unpkg.com/mermaid@8.2.3/dist/mermaid.min.js"></script>

As you can see, the flow is a series of back-and-forth messages between the Ethereum App and the plugin.

Before we start to code, let's set up the development environment.
