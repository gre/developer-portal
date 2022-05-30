---
title: Ledger Live CLI
subtitle:
tags: [clone ledger live]
category: Blockchain Support
author:
toc: true
layout: doc
---

### Introduction

Using a local version of Ledger Live to test your integration can be time consuming. If you would rather have a faster process, you can use the CLI.

### Set up

Clone the [ledger-live-common](https://github.com/LedgerHQ/ledger-live.git) repository

```sh
cd ledger-live/libs/ledger-live-common
yarn
cd cli
yarn
```

You can test that your local Live Common and your device works correctly by executing a CLI command like:

```sh
ledger-live version      # should print live-common version
ledger-live deviceInfo   # should display information about connected device
```

<!--  -->
{% include alert.html style="tip" text="Ensure <code>yarn global bin</code> is in your $PATH. You can build automatically the CLI by running <code>yarn watch</code> in a separate terminal to ensure <code>ledger-live</code> bin is always up-to-date with your work." %}
<!--  -->

If everything is fine, you are ready to start integrating your blockchain!


#### Ledger Live CLI cmd example

Do not forget to clean dbdata and libcoredb directories between cmds.

```sh
ledger-live sync -c bitcoin -i 0 -s native_segwit   # using device
ledger-live sync -c bitcoin --xpub 'xpub......'    # using xpub
ledger-live getAddress -c bitcoin --path "84'/0'/0'/0/0" --derivationMode ''
ledger-live send -i 0 -s segwit --recipient 13LcRWZyZnZu1xrABuAK9Ayftg4kfVs1AA --amount 0.00056 --feePerByte 5
```

