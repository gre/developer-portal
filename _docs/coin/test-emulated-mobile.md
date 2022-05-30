---
title: Run tests on emulated Android and iOS
subtitle:
tags: [emulator, live-common, ledger-live-mobile, llm]
category: Blockchain Support
author:
toc: true
layout: doc
---

<!-- 2021-03-30 based on 2548924630 in Confluence -->

<!--  -->
{% include alert.html style="tip" text="<b>Prerequisite</b> - Your computer is expected to have been set up accordingly. Please follow the following guides for this purpose:
<ul>
<li><a href='../build-android-devapp/' class='alert-link'>Building Android Dev App</a></li>
<li><a href='../build-ios-devapp/' class='alert-link'>Building iOS Dev App</a></li></ul>" %}
<!--  -->

<!--  -->
{% include alert.html style="important" text="Different terminals have to be opened at the same time. Obviously, that could be terminal tabs. In this guide, <code>terminal X</code> refers indifferently to a terminal or one of its tabs." %}
<!--  -->


## Preliminary steps (common to Android and iOS)

1.  Build the relevant version of `live-common` and `yalc publish`

2.  Clone or pull [Ledger-Coin-Integration-team/ledger-live-mobile](https://github.com/LedgerHQ/ledger-live.git) **and checkout the relevant branch**


| **Terminal 1** | **Terminal 2** |
| -------------- | -------------- |
| From `ledger-live-mobile` directory:<br>`$ yalc add @ledgerhq/live-common` <br> `$ yarn` <br> `$ yarn start` <br> Expected output: <br> <video controls muted preload='none' poster='../images/test-emulated-mobile/terminal1-poster.png'><source src="../images/test-emulated-mobile/Terminal1.mp4" type='video/mp4'></video>  | `$ ledger-live proxy` <br>  Expected output: <br> <video controls muted preload='none' poster='../images/test-emulated-mobile/terminal2-poster.png'><source src="../images/test-emulated-mobile/Terminal2.mp4" type="video/mp4"></video> <br> At this stage, an IP address is provided.<br> It will be used at a further stage to pair the Nano with the mobile app.|


## Android

| **Terminal 3** | **Terminal 4** |
| -------------- | -------------- |
| `$ adb start-server` <br> `$ emulator -avd <name of the device>` <br> `# e.g. emulator -avd Pixel_XL_API_30` <br> Expected output: <br>  <video controls muted preload='none' poster='../images/test-emulated-mobile/terminal3-poster.png'><source src="../images/test-emulated-mobile/Terminal3.mp4" type="video/mp4"></video>  <br> At this stage, the emulator starts. | `$ yarn run android` <br>  Expected output: <br>  <video controls muted preload='none' poster='../images/test-emulated-mobile/terminal4-poster.png'><source src="../images/test-emulated-mobile/Terminal4.mp4" type="video/mp4"></video>  <br> At this stage, the Mobile app starts. <br> _Note: if the app is blank, just relaunch it._|

Then, pair the Nano using the IP address provided in the preliminary steps


## iOS

| **Terminal 3** |
| -------------- |
| `$ yarn run ios` <br> Expected output: <br>  <video controls muted  preload='none' poster='../images/test-emulated-mobile/terminal3-IOS-poster.png'><source src="../images/test-emulated-mobile/Terminal3-IOS.mp4" type='video/mp4'></video>  <br> At this stage, both the emulator and the Mobile app start.|

Then, pair the Nano using the IP address provided in the preliminary steps

