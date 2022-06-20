---
title: Test
subtitle:
tags: []
category: "Live Application: Non-DApp integration"
layout: doc
toc: true
---

## Prerequisites

 Before testing your appplication, make sure you have completed the following requirements:
 - Download and install [Ledger Live Desktop](https://www.ledger.com/ledger-live/download).
 - Enable Ledger Live [Developer Mode](../../../live-app/developer-mode).
 - Write your [Manifest file](../../reference/manifest).

## Test your Live App in Ledger Live

In the Ledger Live developer tab, enable the option **Enable Platform dev tools**. It will allow you to use a browser-like developer tools window to inspect your application.

Then click on **Browse** next to **Add a local app** and import your application's [Manifest file](../../reference/manifest).

![Browse button](../../images/tuto-3-3-browse.png "Browse button")

Your application appears in a new row below. 

Click **Open** to open your application inside Ledger Live.

![Add local App](../../images/tuto-3-4-local-app.png "Add local app")

You are now able to locally and autonomously test your application integration inside Ledger Live.

You can refer to the [Tutorial](../../tutorial/4-test) for more details.
