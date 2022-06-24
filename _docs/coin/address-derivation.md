---
title: 3 - Address derivation
subtitle:
tags: [Ledger Live Common, typescript, environment variables, local packages]
category: Blockchain Support
author:
toc: true
layout: doc
---

From step 3 to step 6, you work will be implemented in the [Ledger Live repository](https://github.com/LedgerHQ/ledger-live/tree/develop/libs/ledger-live-common).

### Derive Address from device

Before starting this step, make sure [you have setup your environment](../live-common/) to work with `ledger-live`.

First and easiest step is to get an address from the device for <i>MyCoin</i>, by creating the `hw-getAddress.ts` Resolver:

`apps/ledger-live-common/src/families/mycoin/hw-getAddress.js`:

```ts
import type { Resolver } from "../../hw/getAddress/types";
import MyCoin from "@ledgerhq/hw-app-mycoin";

const resolver: Resolver = async (transport, { path, verify }) => {
  const myCoin = new MyCoin(transport);

  const r = await myCoin.getAddress(path, verify);

  return {
    address: r.address,
    publicKey: r.publicKey,
    path,
  };
};

export default resolver;
```

Test that you can derive an address:

```sh
ledger-live getAddress --currency mycoin --path "44'/8008'/0'/0/0" --derivationMode ""
```

### Derivation

Ledger Live uses the BIP44 derivation mode by default (as `derivationMode=""`), which is standard and most common way for HD wallet.
If <i>MyCoin</i> has a conventional derivation path (BIP44), Ledger Live should already be able to derive an address correctly.

**If you need to use another derivation mode:**

Make changes to [`src/derivation.ts`](https://github.com/LedgerHQ/ledger-live/tree/develop/libs/ledger-live-common/src/derivation.ts):

1. Add a new derivation mode with `overridesDerivation`:
  ```ts
  // const modes = Object.freeze({
  // ...
    mycoinbip44h: { // Hardened BIP44 for MyCoin
      overridesDerivation: "44'/8008'/<account>'/0'/<address>'",
    },
  // });
  ```
2. Add the mode to family in `legacyDerivations`:
  ```ts
  // const legacyDerivations: $Shape<CryptoCurrencyConfig<DerivationMode[]>> = {
  // ...
    mycoin: ["mycoinbip44h"],
  // };
  ```
3. Disable the default use of BIP44 in `disableBIP44`:
  ```ts
  // const disableBIP44 = {
  // ...
    mycoin: true,
  // };
  ```
4. Add the coin to `seedIdentifierPath`:
  ```ts
  // const seedIdentifierPath = {
  // ...
    mycoin: `${purpose}'/${coinType}'/0'/0'/0'`,
  // };
  ```

See [Derivation documentation](https://github.com/LedgerHQ/ledger-live/tree/develop/libs/ledger-live-common/docs/derivation.md) for further details.

You can check that the derivationMode is correct by executing:

```sh
ledger-live derivation --currency mycoin

#>  default: MyCoin 1: 44'/8008'/<account>'/<change>/<address>
```