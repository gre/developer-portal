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

To install the CLI do:

```sh
npm i --global @ledgerhq/live-cli
```

To publish:

```sh
# build the cli for publishing
pnpm build:cli
```

To use it:
```sh
pnpm run:cli <command> args
```

You can test that your local Live Common and your device works correctly by executing a CLI command like:

```sh
pnpm run:cli version      # should print live-common version
pnpm run:cli deviceInfo   # should display information about connected device
```

<!--  -->
{% include alert.html style="tip" text="Ensure <code>yarn global bin</code> is in your $PATH. You can build automatically the CLI by running <code>yarn watch</code> in a separate terminal to ensure <code>ledger-live</code> bin is always up-to-date with your work." %}
<!--  -->

If everything is fine, you are ready to start integrating your blockchain!


#### Ledger Live CLI cmd example

Do not forget to clean dbdata and libcoredb directories between cmds.

```sh
pnpm run:cli sync -c bitcoin -i 0 -s native_segwit   # using device
pnpm run:cli sync -c bitcoin --xpub 'xpub......'    # using xpub
pnpm run:cli getAddress -c bitcoin --path "84'/0'/0'/0/0" --derivationMode ''
pnpm run:cli send -i 0 -s segwit --recipient 13LcRWZyZnZu1xrABuAK9Ayftg4kfVs1AA --amount 0.00056 --feePerByte 5
```

