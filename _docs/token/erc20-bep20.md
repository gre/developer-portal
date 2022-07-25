---
title: Process
subtitle: Addition or modification
tags: [tokens]
category: Tokens
toc: true
author:
layout: doc
---




## How to request a token addition

### 1. Is my ERC20, BEP20 or Polygon token listed?

First, make sure your token isn’t already listed by checking this table of the [supported crypto-assets](https://github.com/LedgerHQ/ledger-live/blob/develop/apps/ledger-live-desktop/cryptoassets.md).

Please note you can easily change the tag version to check the content of a specific Ledger Live version. 

<!--  -->
{% include alert.html style="tip" text="The list of supported assets on the <a href='https://www.ledger.com/supported-crypto-assets/'>website</a> is managed through an internal Ledger process. For the moment it’s difficult to guarantee the exact mapping between tokens available on Ledger Live and listed on the website." %}
<!--  -->

### 2. How to get my token listed?

Fill in this form:

<div data-tf-widget="Miekq8b2" style="width:100%;height:400px;"></div><script src="//embed.typeform.com/next/embed.js"></script>

### 3. How to add token icon?

To add the icon, you must open a Pull Request in the Ledger Live repository. You can [check this PR](https://github.com/LedgerHQ/ledger-live/pull/107) for an example.

Some rules about the icon:
- Don't use Linear gradients, defs, masks, clip-path, filters and inline styles
- Only use svg, path, circle, ellipse, rect, polyline, line tags if needed and add fill="black"

Feel free to look at the other icons to see what is expected. 

<!--  -->
{% include alert.html style="important" text="Before contributing to the Ledger Live repository, please read and follow <a href='https://github.com/LedgerHQ/ledger-live/blob/develop/CONTRIBUTING.md'>the guidelines</a> otherwise your PR will automatically be rejected." %}
<!--  -->

### What next?

This is all you need to do. We will review the list of tokens on a bi-montly basis and will apply our own internal signature process. Once signed, the new tokens will become available after a Ledger Live update. Ledger reserves the right to decide which token will be listed.
