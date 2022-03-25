---
title: Running iOS and Android Dev Apps
subtitle:
tags: [ledger-live-common, ledger-live-common proxy, proxy, testing test, tests]
category: Blockchain Support
author:
toc: true
layout: doc
---

<!-- 2021-03-30 also based on 2177138906 in Confluence -->

This article explains how to run a Ledger Live dev app for iOS on macOS.

## Prerequisites

For iOS: [Building iOS build](../build-ios-devapp).
For Android: [Building Android build](../build-android-devapp).


## Connecting to Nano S / X / S Plus

In this part, we'll connect a Ledger Nano S to the application, using the ledger-live-common proxy feature.

You need nvm to install and use node version 12. Installation details are [here](https://github.com/nvm-sh/nvm).

Once installed, open a new terminal and type:

```sh
nvm install 12 (if not already done)
nvm use 12
```

Then clone the ledger-live-common repo:

```sh
git clone https://github.com/LedgerHQ/ledger-live-common
cd ledger-live-common/cli
yarn
```

Now, launch the ledger-live-common proxy command:

```sh
node bin/index.js proxy
```

The expected output is:

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="680" src="../images/2177138906/2193555513.png" /></div>
<!-- --------------------------------- -->

- Open the LL [DEV] application on the simulator
- Choose "Ledger Nano X" as the device (even if you're going to use a Nano S)
- "Use initialized device" [...] → Settings
- On the Ledger logo, click very rapidly until the "Debug" menu appears (a mouse is recommended, as it's virtually impossible with a trackpad).

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="340" src="../images/2177138906/2193227841.png" /></div>
<!-- --------------------------------- -->

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="340" src="../images/2177138906/2193489982.png" /></div>
<!-- --------------------------------- -->

- Go to "Debug http transport" and copy-paste the IP address given
previously by ledger-live-common

Once that is done, an onboarding page pops up.
- Connect your Nano, and choose the Ledger Nano X device once again
- Go through the setup

Congratulations! You have successfully connected your device

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="340" src="../images/2177138906/2193195145.png" /></div>
<!-- --------------------------------- -->

## Testing on the Nano

- On your ledger-live-mobile directory, double-click on the ledgerlivemobile.**xcworkspace** file.

It opens XCode. Switch back to the Xcode toolchain (Xcode → Toolchains → Xcode xx.x)

You may want to change the default scheme to either build a debug or a release version (Product → Scheme → Edit Scheme...):

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="720" src="../images/2177138906/2193129601.png" /></div>
<!-- --------------------------------- -->

- Connect your device to your mac
- Select it as the target

You can try to launch a build. If it fails because of a problem with a certificate, then:
- Under the ledgerlivemobile menu, go to "Signing & Capabilities"
- Click "Revoke Certificate", XCode will automatically create a new one

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="720" src="../images/2177138906/2193293401.png" /></div>
<!-- --------------------------------- -->

- Try to build it a second time. It works!

If you need to export the **.ipa** file, click on Product → Archive
After the build is complete you should have this window displayed:

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="720" src="../images/2177138906/2193064065.png" /></div>
<!-- --------------------------------- -->

- Click on Distribute App → Development → Next → Automatically manage signing
- Export it to the folder you want to save it in.

You can then do without Xcode or a developer account to install the iOS app by using "Apple Configurator 2".
Download it from the Apple store.
