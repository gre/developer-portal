---
title: Ethereum Nano app clones
subtitle:
tags: []
category: Nano Application
author:
layout: doc
---

## Start here

- Clone the Ethereum application: `git clone https://github.com/LedgerHQ/app-ethereum.git`
- Before commiting your changes remember to sign your commits.
- Please make your changes to the `develop` branch

{% include alert.html style="important" text="For security reasons, the repository is set up to accept only pull requests with signed commits. To sign your commits, use the -S flag : <code>$ git commit -S -m your commit message</code>" %}

## 1. Create a file in app-ethereum/makefile_conf/chain

Following the next example, add a `.mk` file in `app-ethereum/makefile_conf/chain`

``` c
APP_LOAD_PARAMS += --path "44'/889'"
DEFINES += CHAINID_UPCASE=\"TOMOCHAIN\" CHAINID_COINNAME=\"TOMO\"CHAIN_KIND=CHAIN_KIND_TOMOCHAIN CHAIN_ID=88
APPNAME = "TomoChain"
```

<!--  -->
{% include alert.html style="important" text="It is necessary to choose a Derivation Path and a Chain ID specific to your network to prevent the risk of replay attack (Introduced by EIP155) that can happen when using the same Derivation Path ( m/44'/60'/0') and Chain ID as Ethereum. This could expose your users to loss of funds.<br>
You can either use the same Derivation Path but define a new chain ID (make sure this is not used by another network) or use slip44/BIP44 standard to reserve a dedicated coin type that will allow you to define a new derivation path." %}
<!--  -->

## 2. Modify src/chainConfig.h

Inside `scr/chainConfig.h`, add your chain in `chain_kind_e`:

``` c
typedef enum chain_kind_e {
    CHAIN_KIND_ETHEREUM,
  CHAIN_KIND_REOSC,
  (...)
  CHAIN_KIND_HPB,
  CHAIN_KIND_TOMOCHAIN
} chain_kind_t;

```
## 3. Upload your app's icons

Once you have created your App's icons following the [Design requirements](../design-requirements), upload them in the `/icons` folder.

## 4. Modify src/main.c

Add:

```c
case CHAIN_KIND_TOMOCHAIN:
    numTokens = NUM_TOKENS_TOMOCHAIN;
    break;
```

and:
```c
case CHAIN_KIND_TOMOCHAIN:
    currentToken = (tokenDefinition_t *)PIC(&TOKENS_TOMOCHAIN[i]);
    break;
```

## 5. Open a pull request

When your application is ready, open a pull request on the Ethereum application repository.

Please get in touch with our team on the [Ledger's Discord server](https://discord.gg/Ledger) to get your PR reviewed.
