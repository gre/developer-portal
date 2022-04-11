---
title: 3 - Address derivation
subtitle:
tags: [Ledger Live Common, typescript, environment variables, local packages]
category: Blockchain Support
author:
toc: true
layout: doc
---

### Derive Address from device

<!--  -->
{% include alert.html style="success" text="If your app <a href='../js-bindings'>JS bindings</a> are not yet published in <a href='https://github.com/LedgerHQ/ledgerjs'>LedgerJS</a>, use <a href='../yalc'>yalc</a> to link your local packages." %}
<!--  -->

First and easiest step is to get an address from the device for <i>MyCoin</i>, by creating the `hw-getAddress.ts` Resolver:

`src/families/mycoin/hw-getAddress.js`:

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

Make changes to [`src/derivation.ts`](https://github.com/LedgerHQ/ledger-live-common/tree/master/src/derivation.ts):

1. Add a new derivation mode with `overridesDerivation`:

```ts
// const modes = Object.freeze({
// ...
  mycoinbip44h: { // Hardened BIP44 for MyCoin
    overridesDerivation: "44'/8008'/<account>'/0'/<address>'",
  },
// });
```

2. add the mode to family in `legacyDerivations`:

```ts
// const legacyDerivations: $Shape<CryptoCurrencyConfig<DerivationMode[]>> = {
// ...
  mycoin: ["mycoinbip44h"],
// };
```

3. disable the default use of BIP44 in `disableBIP44`:

```ts
// const disableBIP44 = {
// ...
  mycoin: true,
// };
```

See [Derivation documentation](https://github.com/LedgerHQ/ledger-live-common/blob/master/docs/derivation.md) for further details.

You can check that the derivationMode is correct by executing:

```sh
ledger-live derivation --currency mycoin

#>  default: MyCoin 1: 44'/8008'/<account>'/<change>/<address>
```