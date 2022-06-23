---
title: Write and load the manifest
subtitle:
tags: [dapp, developer mode, local version]
category: "Live App: Dapp integration"
author:
toc: true
layout: doc
---

If you have followed instructions on the previous page, you should now be ready to interact with the Dapp directly from Ledger Live interface to make sure all the basic features work as expected.

To test and integrate your application, you first need to write your application Manifest file.
This file must contain some mandatory information, such as the app package names, the components, the permissions needed, the hardware and software features, etc.

Check and if necessary edit your manifest file as described [below](#example-of-manifest-json-format-for-the-lido-application).

### Load your Live App locally on desktop

To load your Live App locally, [Unlock the Developer mode](../../live-app/developer-mode) in Ledger Live and [add a local app](../../live-app/developer-mode#add-a-local-app).

### Load your Live App locally on mobile (Android only)

Go to the **Settings** -> **Developer** section, and click on **Load Platform Manifest** you can copy your manifest here and load it.

### Example of Manifest (JSON format) for the “Lido” application:

```json
{
    "id": "lido",
    "name": "Lido",
    "url": "https://dapp-browser.apps.ledger.com",
    "params": {
      "dappUrl": "https://stake.lido.fi/?embed=true",
      "nanoApp": "Lido",
      "dappName": "Lido",
      "networks": [
        {
          "currency": "ethereum",
          "chainID": 1,
          "nodeURL": "wss://eth-mainnet.ws.alchemyapi.io/v2/xxx"
        }
      ]
    }
    "homepageUrl": "https://lido.fi/",
    "icon": "https://cdn.live.ledger.com/icons/platform/lido.png",
    "platform": "all",
    "apiVersion": "0.0.1",
    "manifestVersion": "1",
    "branch": "stable",
    "categories": [
      "staking",
      "defi"
    ],
    "currencies": [
      "ethereum"
    ],
    "content": {
      "shortDescription": {
        "en": "Stake your ETH with Lido to earn daily staking rewards."
      },
      "description": {
        "en": "Stake your ETH with Lido to earn daily staking rewards."
      }
    },
    "permissions": [],
    "domains": [
      "https://*"
    ]
  }
```

Here is the list of the mandatory fields required in your Manifest file:

<table>
    <thead>
        <tr>
            <th style="width:20%;">Field</th>
            <th style="width:70%;">Description</th>
            <th style="width:10%;">Type</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>The identification of your application. Must be in lowercase.</td>
            <td>String</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>The name of your application ("Lido" in this example).</td>
            <td>String</td>
        </tr>
        <tr>
            <td><code>url</code></td>
            <td>https://dapp-browser.apps.ledger.com</td>
            <td>String</td>
        </tr>
        <tr>
            <td><code>params</code></td>
            <td>dappUrl is the URL of your DApp; nanoApp is the plugin needed to clear sign your DApp; dappName should be the same as nanoApp; networks is the list of networks supported by your DApp, Ledger Live currently only support mainnet, BSC and Polygon, the nodeURL param will be set by Ledger in prod to use your node, for testing purposes, you can replace it with your own.</td>
            <td>String</td>
        </tr>
        <tr>
            <td><code>homepageUrl</code></td>
            <td>The homepage of your service. For instance, "https://www.google.fr/".</td>
            <td>String</td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>A link to the icon displayed in the Ledger Live Discover section. Will be hosted on Ledger CDN before being released in production.</td>
            <td>URL</td>
        </tr>
        <tr>
            <td><code>platform</code></td>
            <td>To set the platform (desktop, mobile, iOS, Android) on which your service is available. By default, you should set the value to "all".</td>
            <td>String</td>
        </tr>
        <tr>
            <td><code>apiVersion</code></td>
            <td>The API version, by default "0.0.1".</td>
            <td>String</td>
        </tr>
        <tr>
            <td><code>manifestVersion</code></td>
            <td>The manifest version. By default should be "1".</td>
            <td>String</td>
        </tr>
        <tr>
            <td><code>branch</code></td>
            <td>The specific branch used by Ledger to deploy the changes. Can take the values stable | experimental | debug | soon. By default, you should set it to  "stable". The value “soon” will mark your app as “Coming soon” and it won’t be usable.</td>
            <td>String</td>
        </tr>
        <tr>
            <td><code>categories</code></td>
            <td>A JSON array of metadata information about your application. For instance : ["staking","defi" ]. You can add as many as you want. It is not used for the moment but will be used for filtering in the future.</td>
            <td>List(string)</td>
        </tr>
        <tr>
            <td><code>currencies</code></td>
            <td>A JSON array of the currency/network being used by your application. For instance ["ethereum",”polygon”]. Leave blank if the App does not require any currency.</td>
            <td>List(string)</td>
        </tr>
        <tr>
            <td><code>content</code></td>
            <td>A description of your service. It will be displayed on the entry card of your application.
Type: l18n strings.</td>
            <td>L18n strings</td>
        </tr>
        <tr>
            <td><code>permissions</code></td>
            <td>Leave blank for now.</td>
            <td></td>
        </tr>
        <tr>
            <td><code>domains</code></td>
            <td>Leave blank for now.</td>
            <td></td>
        </tr>
    </tbody>
</table>

