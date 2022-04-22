---
title: React hooks (optional/advanced)
tags: [Ledger Live Common, typescript, environment variables, local packages]
category: Blockchain Support
author:
toc:
layout: doc
---

If you are adding specific features to Ledger Live (like staking), you may need to access data through React hooks, that could provide common logic reusable for React components.

You are then free to add them in a `ledger-live/libs/ledger-live-common/src/families/mycoin/react.ts` file.

See examples like sorting and filtering validators, subscribing to preloaded data observable, or waiting for a transaction to be reflected in account, in the [Polkadot React hooks](https://github.com/LedgerHQ/ledger-live/tree/main/ledger-live-common/src/families/polkadot/react.ts).