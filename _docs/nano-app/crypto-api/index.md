---
title: Start here
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<div class="textblock">
<p>This documentation describes the cryptography API and the syscalls that can be invoked to the operating system to use basic arithmetic and cryptographic functions. It is basically divided into:</p><ul>
<li><b>cryptography API</b> which consists of signature algorithms, hash functions, message authentication codes and encryption algorithms</li>
<li><b>syscalls</b> which enable computations for GF(p) and GF(2<sup align="right">n</sup>) arithmetic and efficient implementation of elliptic curves.</li>
</ul>
<p>Here is a non-exhaustive list of supported algorithms:</p><ul>
<li>AES and DES in different modes</li>
<li>ECDSA with a random or deterministic nonce</li>
<li>EDDSA</li>
<li>ECDH</li>
<li>Schnorr signature with different implementations, especially the one used for Zilliqa and BIP-0340</li>
<li>Multiple hash functions from SHA-2 and SHA-3 families as well as extendable output functions (SHAKE-128 and SHAKE-256)</li>
<li>GROESTL and RIPEMD-160</li>
<li>Keyed-hash Message Authentication Code </li>
</ul>
