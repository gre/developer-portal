---
title: Demo
subtitle:
tags: [nano app, nano application, applications, deliverables]
category: Nano Application
toc: true
author:
layout: doc
---

## Requirement Summary

|    Release Type       |          Unaudited     |          Audited       |          Public        |
|-----------------------|------------------------|------------------------|------------------------|
|  This requirement is: |    <b>Mandatory</b>    |   <b>Mandatory</b>     |   <b>Mandatory</b>     |

You are required to submit a video demo of your Nano App as described below.



## UI Flows

To create the flow you will show in the video, we recommend you follow the UI flows shown below.

### Send and receive examples

<!-- ------------- Image ------------- -->
<a href="../images/eth-flow.png">
	<img width="395" src="../images/eth-flow.png" style="float:right">
</a>
<!-- --------------------------------- -->

Please create your flow following the given [Ethereum example](../docs/eth-flow.pdf).  

It contains the basic functions App information, Receive and send operations. Include the main operations that your Nano app contains. Try to apply the same kind of flow design for all of them.  


### Blind signing

In case you need the users to blind sign transactions, you will need to include the blind signing flows.

- This screen should be displayed when blind signing is not enabled and the user wants to sign a transaction requiring blind signing:

{: .uk-text-center}
[![](../images/blind-signing-not-enabled.png){:width="180"}](../images/blind-signing-not-enabled.png)

- How to modify the blind signing settings:

{: .uk-text-center}
[![](../images/blind-signing-settings.png){:width="320"}](../images/blind-signing-settings.png)


- When blind signing is enabled:

{: .uk-text-center}
[![](../images/blind-signing-enabled.png){:width="550"}](../images/blind-signing-enabled.png)



## Video

You must **create your own video** using the example given.  

<video controls width="395" style="float:right; padding-top:60px;" muted preload='none' poster='../images/ledger-submission.png'><source src="../videos/ledger-submission.mp4" type='video/mp4'></video><br>

On the video demo you must show how to: 
- Verify a public address on the Ledger device
- Display the transaction information before allowing the signature
- Reject a transaction on the Ledger device
- Sign a transaction on the Ledger device
- Try to sign a transaction requiring blind signing when blind signing is not enabled (if applicable)
- Allow blind signing (if applicable)
- Sign a transaction with blind signing (if applicable)

