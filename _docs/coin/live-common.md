---
title: Ledger Live Setup
subtitle:
tags: [Ledger Live Common, typescript, environment variables, local packages]
category: Blockchain Support
author:
toc: true
layout: doc
---

## Introduction

All the JavaScript code related to the Ledger Live applications is in the `ledger-live` monorepository. The work to integrate a Blockchain in Ledger Live will all happen in this monorepository.

Ledger Live Common (`./libs/ledger-live-common`) is the shared core library used by Ledger Live Desktop and Mobile, that also includes a CLI for testing purpose or for using Ledger Live features directly from a terminal (in a limited way).

This library is built upon a pretty standard ES6 + Typescript stack and relies on a bunch of [ledgerjs](https://github.com/LedgerHQ/ledgerjs) packages, [RxJS 6.x](https://github.com/ReactiveX/rxjs/tree/6.x), [bignumber.js](https://github.com/MikeMcl/bignumber.js) and [React](https://github.com/facebook/react/) + [Redux](https://github.com/reduxjs/redux) for some front-end utilities and hooks.

It is designed to have very generic models and mechanics (for currencies, accounts, storage, synchronisation, events...) that also facilitates new blockchain integrations through flexibility.
All integrated coins are implemented in a `libs/ledger-live-common/src/families` dedicated folder which contains the specifics of a coin family - that can be shared by multiple crypto-assets that use the same implementation (i.e. Bitcoin-like coins share the same `bitcoin` family).

**This document only concerns new blockchain integrations using Typescript - we will use an imaginary coin named `MyCoin` as a walkthrough.**

## Setup

### Requirements

- [Node.js@14.x.x](https://nodejs.org/)
- [PnPm@7.x.x](https://pnpm.io/)
- Python 2.7 or 3.5+
- A C/C++ toolchain (see node-gyp documentation)

### Development tools (used or required)

- [yalc](../yalc) for locally linking ledger-live-common with other projects
- [eslint](https://github.com/eslint/eslint) - ensure it's working in your IDE ([vscode plugin](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint))
- [prettier](https://github.com/prettier/prettier) - through an eslint-plugin
- [typescript](https://www.typescriptlang.org/) - ensure it works fine with your IDE

### Hardware prerequisites

- A physical device (Ledger Nano S, Nano X or Nano S Plus)
- <i>MyCoin</i> app installed on device

### Installation

- Fork and clone the `ledger-live` repository [https://github.com/LedgerHQ/ledger-live](https://github.com/LedgerHQ/ledger-live)
- `cd` to the folder
- Install with `pnpm i`


**ASK HAKIM: should we add ledger-live-common installation**

## Structure

Your whole implementation of <i>MyCoin</i> must reside in a `mycoin` folder in `libs/ledger-live-common/src/families/` with the exception of some changes to apply in shared code.

Here is a typical family folder structure (TS integration):

```plaintext
./src/families/mycoin
├── bridge
│   └── js.ts
├── hw-app-mycoin
│   └── MyCoin.ts
├── api.ts
├── hw-getAddress.ts
├── errors.ts
├── deviceTransactionConfig.ts
├── account.ts
├── transaction.ts
├── serialization.ts
├── cli-transaction.ts
├── logic.ts
├── cache.ts
├── preload.ts
├── react.ts
├── specs.ts
├── speculos-deviceActions.ts
├── test-dataset.ts
├── test-specifics.ts
└── types.ts
```

<!--  -->
{% include alert.html style="note" text="You can refer to existing implementations to complete given examples, like <a href='https://github.com/LedgerHQ/ledger-live/tree/develop/libs/ledger-live-common/src/families/polkadot'>Polkadot integration</a>" %}
<!--  -->

## Building the CLI for Development

To install the CLI do:

```sh
npm i --global @ledgerhq/live-cli
```

To publish:

```sh
# build the cli for publishing
pnpm build:cli
```

You will find [the compete documentation here](https://github.com/LedgerHQ/ledger-live/tree/develop/apps/cli).



**ASK HAKIM: are the following information up to date and where they should be**

### Environment Variables

Ledger Live provides a lot of flexibility through ENV variables. You can export them, define them before calling cli or use a tool like [direnv](https://direnv.net/).

To list them all, you can execute:

```sh
ledger-live envs
```

The one you will use the most before releasing you integration is:

```sh
EXPERIMENTAL_CURRENCIES=mycoin
```

to use them : 
```sh
EXPERIMENTAL_CURRENCIES=mycoin ledger-live send -c mycoin --amount 0.1 ---recipient mycoinaddr -i 0
```

or for LLD :
```sh
EXPERIMENTAL_CURRENCIES=mycoin yarn start
```

It will consider `mycoin` as supported (you can also add it to the supported currencies in `src/ledger-live-common-setup-base.ts`).

**For clarity, we will omit this environment variable in this document.**

If needed, you can add your own in `src/env.ts` (always try to add a MYCOIN\_ prefix to avoid collisions):

```ts
// const envDefinitions = { ...
  MYCOIN_API_ENDPOINT: {
    def: "https://mycoin.coin.ledger.com",
    parser: stringParser,
    desc: "API for mycoin",
  },
// }
```
