---
title: Ledger Live Mobile and Desktop Setup
subtitle:
tags:
category: Blockchain Support
author:
toc: true
layout: doc
---

1. Fork github.com/LedgerHQ/ledger-live
2. Clone the repository 

## Running the Ledger Live Desktop

```bash
cd apps/ledger-live-desktop
```

### Requirements

- [NodeJS](https://nodejs.org) `lts/fermium` (Node 14.x)
- [Yarn 1.x](https://classic.yarnpkg.com/) (Classic)
- [Python](https://www.python.org/) 2.7 or 3.5+
- A C/C++ toolchain (see [node-gyp documentation](https://github.com/nodejs/node-gyp#on-unix))
- On Linux: `sudo apt-get update && sudo apt-get install libudev-dev libusb-1.0-0-dev`

### Install

```bash
# install dependencies
yarn
```

### Run

```bash
# launch the app
yarn start
```

### Build

```bash
# Build & package the whole app
# Creates a .dmg for Mac, .exe installer for Windows, or .AppImage for Linux
# Output files will be created in dist/ folder
yarn dist
```

### Debug

If you are using [Visual Studio Code](https://code.visualstudio.com/) IDE, here is a [Launch Configuration](https://code.visualstudio.com/docs/nodejs/nodejs-debugging#_launch-configuration) that should allow you to run and debug the main process as well as the render process of the application.

As stated in the [debugging documentation](https://code.visualstudio.com/docs/editor/debugging), this file should be named `launch.json` and located under the `.vscode` folder.

```json
{
  "version": "0.2.0",
  "compounds": [
    {
      "name": "Run and Debug LLD",
      "configurations": ["Debug Main Process", "Debug Renderer Process"],
      "stopAll": true
    }
  ],
  "configurations": [
    {
      "name": "Debug Main Process",
      "type": "node",
      "request": "launch",
      "cwd": "${workspaceFolder}",
      "runtimeExecutable": "yarn",
      "args": ["start"],
      "outputCapture": "std",
      "resolveSourceMapLocations": null,
      "env": {
        "ELECTRON_ARGS": "--remote-debugging-port=8315"
      }
    },
    {
      "name": "Debug Renderer Process",
      "type": "chrome",
      "request": "attach",
      "address": "localhost",
      "port": 8315,
      "timeout": 60000
    }
  ]
}
```

---

### Config (optional helpers)

#### Environment variables

(you can use a .env or export environment variables)

```bash
NO_DEBUG_COMMANDS=1
NO_DEBUG_DB=1
NO_DEBUG_ACTION=1
NO_DEBUG_TAB_KEY=1
NO_DEBUG_NETWORK=1
NO_DEBUG_ANALYTICS=1
NO_DEBUG_WS=1
NO_DEBUG_DEVICE=1
NO_DEBUG_COUNTERVALUES=1
```

other envs can be seen in [live-common:src/env.js](https://github.com/LedgerHQ/ledger-live/tree/main/ledger-live-common/src/env.js)

#### Run tests

In a terminal you need to have webpack dev server running

```bash
yarn start
```

In an other terminal you need to launch the webdriver/electron container. First run will be slow.
Next ones will be fast unless some changes are made to the container or package.json. You need to kill and re run the command if package.json changed. Make sure you are running Docker.

```bash
yarn start-electron-webdriver
```

You can point VNCViewer to `localhost::5900` to check what is happening in the container. `secret` is the password.
Then you can launch tests.

```bash
yarn spectron
```

or

```bash
node_modules/.bin/jest tests/specs/<FILEREGEX>.spec.js
```

By default it uses --runInBand jest option otherwise it explodes!

If you need to create an app.json, run a test that set up what you need and run it with the env var `SPECTRON_DUMP_APP_JSON` set. It will create `tests/dump.json` at the end of the spec.

**Please put the image expectations at the end of the it(...) tests so that it does not break the whole flow if a snapshot breaks**

#### Run code quality checks

```bash
yarn ci
```

## Running the Ledger Live Mobile

```bash
cd apps/ledger-live-desktop
```
### Pre-requisites

- Node LTS version
- Pnpm

#### iOS

- XCode

#### Android

- Android Studio

### Scripts

**pnpm install**

install dependencies.

**pnpm start**

Runs your app in development mode.

Sometimes you may need to reset or clear the React Native packager's cache. To do so, you can pass the `--reset-cache` flag to the start script:

```
pnpm start -- --reset-cache
```

**pnpm run ios**

or `open ios/ledgerlivemobile.xcworkspace`

**pnpm run android**

or open `android/` in Android Studio.

**pnpm android:clean**

Delete the application data for Ledger Live Mobile, equivalent to doing it manually through settings

**pnpm android:import importDataString**

Passing a base64 encoded export string (the export from desktop) will trigger an import activity and allow
easy data setting for development.

### Environment variables

Optional environment variables you can put in `.env`, `.env.production` or `.env.staging` for debug, release, or staging release builds respectively.

[A more exhaustive list of documented environment variables can be found here](https://github.com/LedgerHQ/ledger-live/tree/main/ledger-live-common/src/env.ts).

- `DEVICE_PROXY_URL=http://localhost:8435` Use the ledger device over HTTP. Useful for debugging on an emulator. More info about this in the section [Connection via HTTP bridge](#connection-via-http-bridge).
- `BRIDGESTREAM_DATA=...` Come from console.log of the desktop app during the qrcode export. allow to bypass the bridgestream scanning.
- `DEBUG_RNDEBUGGER=1` Enable react native debugger.
- `DISABLE_READ_ONLY=1` Disable readonly mode by default.
- `SKIP_ONBOARDING=1` Skips the onboarding flow.

### Maintenance

**Refresh the flow-typed from flow-typed Github**

```
pnpm sync-flowtyped
```

**Refresh the languages (when we add new languages)**

```
pnpm sync-locales
```

### Debugging

**Javascript / React**

It's recommended to use [react-native-debugger](https://github.com/jhen0409/react-native-debugger) instead of Chrome dev tools as it features some additional React and Redux panels.

- Get the react-native-debugger app from the [official repo](https://github.com/jhen0409/react-native-debugger)
- Run it
- Run Ledger Live Mobile in debug mode (`pnpm ios` or `pnpm android`)
- Open React Native _Development menu_ (shake gesture)
- Chose _Enable Remote JS Debugging_

Keep in mind that doing so will run your Javascript code on a Chromium JS engine ([V8](https://v8.dev/)) on your computer, instead of iOS' system JS engine (JavaScript Core), or our bundled JS engine (JSC for now, soon to be replaced with [Hermes](https://github.com/facebook/hermes)) on Android.

**End to end testing**

Refer to the e2e specific [README.md](e2e/README.md)

**Native code**

- XCode / Android studio

  Run the app from the Apple or Google own IDE to get some native debugging features like breakpoints etc.

**And more**

- Flipper 

  [Flipper](https://fbflipper.com/) has been integrated in the project, so you can use it to get additional debugging information (like network monitoring) and find other useful data you could previously get from scattered places, here neatly presented in a single interface (like logs and crash reports for both platforms).

  React Native integration seems pretty bleeding edge right now, so don't expect everything to work just yet.

  - Install [Flipper](https://fbflipper.com/) on your computer
  - Launch it 🚀
  - Run Ledger Live Mobile in debug as usual
  - No need to enable remote debug!

**Working on iOS or Android emulators**

- Connection via HTTP bridge

  It is possible to run Ledger Live Mobile on an emulator and connect to a Nano that is plugged in via USB.

  - Install the [ledger-live cli](https://github.com/LedgerHQ/ledger-live/tree/main/ledger-live-common/docs/cli.md).
  - Plug in your Nano to your computer.
  - Run `ledger-live proxy`. A server starts and displays variable environments that can be used to build Ledger-Live Mobile. For example:
    ```
    DEVICE_PROXY_URL=ws://localhost:8435
    DEVICE_PROXY_URL=ws://192.168.1.14:8435
    Nano S proxy started on 192.168.1.14
    ```
  - Either do `export DEVICE_PROXY_URL=the_adress_given_by_the_server` or paste this variable environment in the `.env` file at the root of the project (create it if it doesn't exist)
  - Build & run Ledger Live Mobile `pnpm ios` or `pnpm android`
  - When prompted to choose a Nano device in Ledger Live Mobile, you will see your Nano available with the adress from above, just select it and it should work normally.

**Extra Docs**

- [Deep Linking](https://github.com/LedgerHQ/ledger-live/blob/42b6a71876e4ecd9fd8cf9f29b7e108c82a94abb/apps/ledger-live-mobile/docs/linking.md)
- [UI Theming](https://github.com/LedgerHQ/ledger-live/blob/42b6a71876e4ecd9fd8cf9f29b7e108c82a94abb/apps/ledger-live-mobile/docs/theming.md)

