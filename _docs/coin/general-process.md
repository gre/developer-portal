---
title: General Process
subtitle: This article describes the general process and way of working Ledger will follow while interacting with the teams wishing to add their currency on Ledger Live.
tags: [coin, protocol, ledger live, integration, ledger live integration]
category: Blockchain Support
author:
toc: true
layout: doc
---

<div class="uk-text-center">
    <video controls muted preload='none' poster='/uploads//videos/covers/BlockchainSupport.png' ><source src="/uploads//videos/BlockchainSupport.mp4" type='video/mp4'></video><br>
</div>

## General Ledger Live Overview

If you already have a public [Nano application](https://developers.ledger.com/docs/nano-app/types-apps/) and are looking for a way to get your blockchain supported on Ledger Live, then congratulations, you are in the right place. To confirm if your Nano application is already supported, please check if your currency is visible on [this page](https://www.ledger.com/supported-crypto-assets/).

The Ledger Live application acts as a user-friendly platform for managing the digital assets as well as the application installed on the Ledger device.

Having your blockchain supported on Ledger Live will allow the community of users to easily interact with your protocol.

Ledger Live offers a standardized UI combined with a high quality of service. It also offers several features that are not available through other wallets.

**These features include:**
- Sending & receiving the Blockchain native currency and its tokens
- Displaying account balances and operation history
- Staking cryptocurrency (where applicable) to earn rewards

The Ledger Live application is available for Windows, Mac and Linux in its desktop version and on Android & iOS for mobile.

To be officially released by Ledger, your protocol must be included on all five platforms Ledger Live.


## Open source, but not Open bar

<!-- ------------- Image ------------- -->
<img align="left" width="132" src="../images/open_bar.png">
<!-- --------------------------------- -->


The Ledger Live code is Open source under MIT license. As such, you are free to copy/fork and modify it at will.

In some rare cases, you may want to go it alone, and do your own Solo Integration, where there is virtually no interaction with Ledger, nor code review, nor supported communication by Ledger to your blockchain community. You are free to use this documentation in that way.

In most cases however, you will want to have your blockchain officially supported in Ledger Live for your community, with an updated release of Ledger Live Desktop and Mobile. In this case it is a Participant Integration, because this involves various Ledger teams: Security, Product, Engineering and QA, we will have discussions with you to enter into an Agreement Framework in order to clarify the roles and responsibilities between us.


## Agreeing on a Framework
<!-- ------------- Image ------------- -->
<img align="right" width="156"  src="../images/agreement.png" >
<!-- --------------------------------- -->
Assuming you are on course for a Participant Integration, here is how we suggest working together.

### Phase 1 - You contact us on Discor

- Unlock the dev oriented channels in [#get-role](https://discord.com/channels/885256081289379850/907595590962122802) and post a message in the [#blockchain](https://discord.com/channels/885256081289379850/907623688759803935) channel mentioning **@Dev Support** saying that you wish to be part of Ledger Live Participant integration
- You will be contacted on Discord by a Blockchain support team member


### Phase 2 - You introduce your project

Ledger will share a link to the **Ledger Live Integration application form**.

In this questionnaire, you will answer a set of questions that will help our team get a better understanding of the following aspects of your project:
- Technical specificities of your Blockchain and its ecosystem
- Connectivity to Third Party Services
- Scope of the desired integration

<!--  -->
{% include alert.html style="important" text="<ul>
    <li>The validation of the scope AND of the technical feasibility of the integration are required before starting the development phase.</li>
    <li>Do not start the development phase before getting an official GO from the Ledger team.</li>
    <li>We will not provide any technical support and/or code review to teams who did not get vetted by Ledger team upfront</li>
</ul>" %}
<!--  -->

{% include alert.html style="disclaimer" text="<ul>
    <li>Please be mindful when filling in this questionnaire, any unanswered or unclear question will delay the review process.</li>
    <li>Ledger keeps the right to refuse and/or cancel any Participant Integration at any time without further notice or explanation.
</li>
</ul>
" %}

### Phase 3 - Ledger reviews your project candidature


Upon reception of your project information, Ledger will start reviewing it. 
Please note that we do receive a lot of submissions and our bandwidth is limited so it can take some time before you hear back from us, but don’t worry we do review all the applications. 


### Phase 4 - We clarify together the scope and technical specificities of your project

Upon review of your project information, Ledger will share a Google sheet document with your team.
This document is a breakdown of all questions / answers you provided in the Application form.

Most of the time, Ledger will require further clarifications about the information provided.
Ledger will use the “comment” feature of Google sheet to interact with your team.

Phase 4 ends when all items of the shared Gsheet are in status “validated”

### Phase 5 - Ledger gives you a final answer

Now that our team at Ledger have a full understanding of the technical specificities of your Blockchain and of the scope of the desired integration. There will be 3 options: 

**Option 1**: Ledger gives you an official GO and you can start working on Ledger Live integration on the full desired scope.

**Option 2**: Ledger gives you an official GO and you can start working on Ledger Live integration BUT on a reduced scope. 
For example, we could reduce the scope to send & receive only if we identify technical blockers that could put the integration process at risk. 

**Option 3**: Ledger considers that for technical or business reasons your Blockchain can’t be integrated within Ledger Live. 
This decision can be taken at Ledger sole discretion.


### Phase 6 - Integration kickoff

The Ledger team will plan a kickoff meeting in order to discuss the following:

- Scope and Blockchain specificities
- Integration steps and milestones
- How to get support from the Ledger team
- When to submit a PR
- Code review
- Maintenance

Our team will also be able to answer all the questions you might have. 

After this meeting, you are finally ready to start! 
