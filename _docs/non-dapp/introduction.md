---
title: Introduction
subtitle:
tags: [non dapp, live app, ledger live app]
category: "Live Application: Non-DApp integration"
toc: true
layout: doc
---

## Context

In this section, we will guide you through the process of developing your non-DApp and integrating it to the Ledger Live ecosystem. By having your application supported in Ledger Live, you offer security, ease and accessibility to millions of users.

## What is a non-DApp?

In the context of Live Apps, a non-DApp is an application that leverages the Ledger Live SDK. By doing so it can get access to the native features of Ledger Live and to the user’s accounts and information.

## How do I develop a non-DApp?

To integrate a **non-DApp**, you need to:

- write [a manifest](../reference/manifest),
- use the [Live App SDK](../reference/sdk/).

To develop an application compatible with Ledger Live, we provide you with a set of particular APIs ([Live App SDK](../reference/sdk/)). According to the services and features you want to provide, you may have to use some specific APIs in order to interact with Ledger Live. An example would be account registration, or signing transactions. This set of APIs will evolve over time.

You basically develop a web version of your application, which is then integrated in an iframe inside Ledger Live so all our users can discover it. This means that you will be hosting the app, not Ledger.

You can follow our step-by-step [Tutorial](../tutorial/introduction) to learn how to develop your first Live App using our [Live App SDK](../reference/sdk/)!

You will find use cases [here](../use-cases).

Please find UX requirements [here](../ux-req).
