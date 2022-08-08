---
title: Specifics
subtitle:
tags: []
category: Nano Application
author:
layout: doc
---


## What is a Nano application clone ?

A Nano application variant, or clone, is developed when all the logic for signing transaction can be contained in the parent Nano Application.

Just as for any Nano Application, you must follow our guidelines to comply Ledger's publication requirements.

## What is the process?

### Developing the application

Instead of building your application in a separate repository, you will make changes to the [Ethereum app](https://github.com/LedgerHQ/app-ethereum).
Click here to develop an [Ethereum clone](../eth-clones). More types of clone applications will be added to the documentation in the future.

### Building the application

To build the clone application, [follow these guidelines](../build).
1. First run the `make` command for the Ethereum App and run `make load`
2. Run `make clean`
2. Load the Nano App clone with the name of your chain. E.g: `make load CHAIN=ambrosus`

### Publishing the application

If you want to publish a clone application, follow the process in [Publishing an application](../publish-introduction).

## Get in touch with the Ledger developer community

Joing Discord is not required to code your Nano Application, but it will be easier to meet with our team and discuss the specifics of your project. Join us on the [Ledger's Discord server](https://developers.ledger.com/discord-pro) and introduce your project in the **#nano-app** channel.
