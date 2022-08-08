---
title: Developing and submitting a Nano App
subtitle: Find the necessary instructions to develop and submit an app for Ledger devices
tags: [development phases, develop nano app, submit an app, submission]
category: Nano Application
toc: true
author:
layout: doc
---

## User profile  

#### If you are new to developing Nano Applications

Please read this section entirely.

#### If you already understand BOLOS and Personal Security Devices (PSDs)

You can skip the first paragraph and go to [Things to do](#things-to-do).

## Development phases

[![Development phases](../images/nanoappdevphases.png)](../images/nanoappdevphases.png) 


## Things to know

### The BOLOS platform (Learn - Bolos)

BOLOS is the operating system behind all Ledger personal security devices. It provides a lightweight, open-source framework for developers to build source code portable applications that run in a secure environment.

[Learn about the BOLOS platform](../bolos-introduction)

### Personal Security Devices (Learn - PSDs)

Ledger Personal Security Devices allows users to store cryptographic secrets and sign transactions securely and conveniently. It is important to understand how they work before coding a Nano Application.

[Learn about the personal security devices](../psd-introduction)


## Things to do

### Get in touch with the Ledger developer community
Joing Discord is not required to code your Nano Application, but it will be easier to meet with our team and discuss the specifics of your project. Join us on the [Ledger's Discord server](https://developers.ledger.com/discord-pro) and introduce your project in the **#nano-app** channel.

### Process & Requirements
Make sure you understand the [Process](../publish-introduction/) and follow the [Requirements](../requirements-intro) starting here. The [Guidelines](../display-management) will also help you on certain technical topics.  

### Set up the BOLOS development environment
In order to build or compile BOLOS applications for Ledger devices, the appropriate environment must be set up. This environment consists in an SDK and two compilers. The environment is all set in [a Docker image](../build).

### Code
Nano applications are [coded](../secure-app/) in C on the Blockchain Open Ledger Operating System (BOLOS).

To develop a Nano Application you will need to:
- Have Linux (or a VM running Linux)
- Set up the BOLOS environment (consisting of the Nano S, X or S Plus SDK, and two compilers)
- Either get a physical device or use the [Speculos emulator](../../speculos/introduction)

Other languages are possible (no details here).

## Need a team to build your Nano App?

You need a Nano App but don't have an application developer in your team? The following companies have experience building Nano Apps, feel free to contact them to talk about your project:
- [Blooo](https://blooo.io/en/)
- [Obsidian Systems](https://obsidian.systems/)
- [Vacuum Labs](https://vacuumlabs.com/)
- [Zondax](https://zondax.ch/)

## Contribute
If you want to improve the documentation you can use the comment box at the bottom of each page, or open a pull request on our repository
