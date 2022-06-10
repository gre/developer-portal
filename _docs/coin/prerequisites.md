---
title: Prerequisites
subtitle:
tags: [technical assessment, indexer]
category: Blockchain Support
author:
toc: true
layout: doc
---

Cryptocurrencies projects have always been technically complex, involving state-of-the-art technologies and designs in cryptography and decentralization, among others.
Nowadays, they are also functionally complex: it’s no longer just about sending and receiving a single currency, we see more and more individual projects with their own purpose and identity, their own innovative features, such as staking, rewards, tokens, smart contracts, on-chain governance, etc.

Therefore, every new blockchain integration calls for a preliminary analysis, to gather all information about the blockchain and its coin before being able to start coding and make sure nothing is left in the shadow. In order to do so, this pre-analysis has to cover both the functional and technical aspects of the coin.

***
## The application form

This phase consists in acquiring a thorough understanding of your blockchain protocol, considering the generic and specific aspects. 

The output of this phase is a detailed proposition of choices made and discussed with Ledger for agreement, before coding starts. This is done at a joint meeting to agree on the Acceptance Plan.

To submit the application form for your Blockchain:  
1.  Make sure you have [all the required information](../application-form)
2.  Carefully answer the questions in [the form](https://ledger.typeform.com/to/loUoDiVY). <br> They will help you and Ledger to be more efficient in the integration of your Coin.

***
## Choice of Specific features

The technical choices made concerning Specific features regard all staking operations, including rewards operations.


## Indexer

[//]: To know more about the indexing service requirements, please have a look at  **LINK**
[//]: 786 × 525

<!-- ------------- Image ------------- -->
<div style="text-align:center">
	<a href="../images/blockchain_infra.png">
		<img align="centre" width="471" height="315" src="../images/blockchain_infra.png" >
	</a>
</div>
<!-- --------------------------------- -->

Both UTXO and account-based blockchains can contain a serious amount of transactions for any given account. Because Ledger Live shows the complete list of operations to the end user, the synchronisation process can take a long time, especially if addressing the blockchain node directly.

To improve performances and allow fast, incremental and optimistic synchronisation, Ledger Live relies on indexing services.

Ledger runs its own indexing services but can also rely on third parties to operate and maintain these services. In the latter case, and to ensure the end user privacy, Ledger adds a reverse proxy layer between the end-user and the indexing service.

### Choosing the right Indexer solution for your your project

<!-- ------------- Image ------------- -->
[![Indexer decision tree](../images/indexer-decision-tree.png)](../images/indexer-decision-tree.png)
<!-- --------------------------------- -->
