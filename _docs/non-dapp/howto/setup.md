---
title: Setup
subtitle:
tags: []
category: "Live Application: Non-DApp integration"
toc: true
layout: doc
---

To develop an application able to communicate with Ledger Live, you will need to use our [Live App SDK](../reference/sdk/). 

## Install the SDK npm dependency

Install our typescript Live App SDK library:

```bash
yarn add @ledgerhq/live-app-sdk
```

## Import and connect the SDK to your project

Import and instantiate the Live App SDK: 

```bash
import LedgerLiveApi from "@ledgerhq/live-app-sdk";
import { WindowMessageTransport } from "@ledgerhq/live-app-sdk";

---

const llapi = new LedgerLiveApi(new WindowMessageTransport());
llapi.connect();
```
