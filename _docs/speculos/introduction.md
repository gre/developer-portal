---
title: Speculos emulator
subtitle:
tags: [speculos, emulate, emulator, Nano X emulator]
category: Speculos
author:
toc: true
layout: doc
sort: 6
---


Speculos is the emulator of Ledger hardware wallets (Nano S, Nano X, Nano S Plus and Blue) on desktop computers. It is particularly useful when  
- you don't have the physical hardware device, or 
- you want to facilitate the pressing of Nano buttons.

Click here for [the Speculos GitHub repository](https://github.com/ledgerhq/speculos).

Usage example:

```shell
./speculos.py apps/btc.elf
# ... and open a browser on http://127.0.0.1:5000
```

## Bugs and contributions

Feel free to open issues and create pull requests on the [Speculos GitHub repository](https://github.com/ledgerhq/speculos).

The `master` branch is protected against force pushing. Contributions should be made through pull requests, which are reviewed by @LedgerHQ members before being merged to `master`:  
  
- @LedgerHQ members can create branches directly on the repository (if member of a team with write access to the repository)
- External contributors should fork the repository


## Limitations

The Speculos emulator handles only a few syscalls made by common apps; for instance, syscalls related to app install, firmware update or OS info can't be implemented.

There is no guarantee that apps will have the same behaviour as on hardware devices:

- Invalid syscall parameters might throw an exception on real devices, but ignored on Speculos.
- Attempts to perform unaligned accesses when not allowed (eg. dereferencing a misaligned pointer) will cause an alignment fault on hardware devices.


## Security

Apps can make arbitrary Linux system calls (and use QEMU [semihosting](../user/semihosting) features), thus do not run untrusted apps on Speculos.

It is worth noting that system calls (`src/`) do not expect malicious inputs.  
Also, in Speculos there is no privilege separation between the app and the syscalls. This doesn't reflect the security of the firmware on hardware devices where the App and OS isolation is enforced.

Speculos is not part of Ledger bug bounty programme.
