---
title: Introduction
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

This documentation describes the cryptography API and the syscalls that can be invoked by a Nano App to the Nano devices operating system (BOLOS) to use basic arithmetic and cryptographic functions. It is basically divided into:
- **Cryptography API** which consists of signature algorithms, hash functions, message authentication codes and encryption algorithms
- **Syscalls** which enable computations for GF(p) and GF(2<sup align="right">n</sup>) arithmetic and efficient implementation of elliptic curves.

Here is a non-exhaustive list of supported algorithms:
- AES and DES in different modes
- ECDSA with a random or deterministic nonce
- EDDSA
- ECDH
- Schnorr signature with different implementations, especially the one used for Zilliqa and BIP-0340
- Multiple hash functions from SHA-2 and SHA-3 families as well as extendable output functions (SHAKE-128 and SHAKE-256)
- GROESTL and RIPEMD-160 
- Keyed-hash Message Authentication Code


On [the next page](../files), you will find the files list as represented in the Ledger devices SDKs. It is your entrypoint to all the Cryptography API and the syscalls.

If you need examples about how to use the functions, [read this page](../../crypto-examples).
