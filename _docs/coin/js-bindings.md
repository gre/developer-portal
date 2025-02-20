---
title: 2 - Nano App JS Bindings
subtitle:
tags: [ledgerjs, getAddress, signTransaction]
category: Blockchain Support
author:
toc: true
layout: doc
---

You will need to provide a JS implementation to interact with your coin Nano app on the Ledger Nano.
These bindings can either be implemented directly into live-common (as a folder in your coin family folder), or published in [LedgerJS/packages](https://github.com/LedgerHQ/ledgerjs) as a package - i.e. `hw-app-mycoin`.

## Minimal Implementation

The app implementation should provide at least 2 methods:
* `getAddress(path: string, display?: bool)`: derive an address providing the BIP32 path
* `signTransaction(path: string, message)`: sign a raw message for provided BIP32 path

<!--  -->
{% include alert.html style="tip" text="Arguments are provided as example, but try to follow as much as possible other implementations for easy integration." %}
<!--  -->

Any features provided by the Nano App should be provided through these JS bindings, such as `getAppConfiguration` or any blockchain-specific capabilities.

## Example

You can find many implementations (`hw-app-*`) in [LedgerJS](https://github.com/LedgerHQ/ledgerjs/blob/master/packages/)

```ts

import type Transport from "@ledgerhq/hw-transport";
import BIPPath from "bip32-path";
import { UserRefusedOnDevice, UserRefusedAddress } from "@ledgerhq/errors";

const CHUNK_SIZE = 250;

const CLA = 0xe0;
const INS = {
  GET_VERSION: 0x00,
  GET_ADDR: 0x01,
  SIGN: 0x02,
};
const PAYLOAD_TYPE_INIT = 0x00;
const PAYLOAD_TYPE_ADD = 0x01;
const PAYLOAD_TYPE_LAST = 0x02;

const SW_OK = 0x9000;
const SW_CANCEL = 0x6986;

/**
 * MyCoin App API
 */
export default class MyCoin {
  transport: Transport;

  constructor(transport: Transport, scrambleKey: string = "MYC") {
    this.transport = transport;
    transport.decorateAppAPIMethods(
      this,
      ["getAddress", "signTransaction", "getAppConfiguration"],
      scrambleKey
    );
  }

  /**
   * Serialize a bip path to data buffer
   */
  serializePath(path: Array<number>): Buffer {
    const data = Buffer.alloc(1 + path.length * 4);

    data.writeInt8(path.length, 0);
    path.forEach((segment, index) => {
      data.writeUInt32BE(segment, 1 + index * 4);
    });

    return data;
  }

  /**
   * Iterates callback over chunks and return a single Promise
   */
  foreach<T, A>(arr: T[], callback: (T, number) => Promise<A>): Promise<A[]> {
    function iterate(index, array, result) {
      if (index >= array.length) {
        return result;
      } else
        return callback(array[index], index).then(function (res) {
          result.push(res);
          return iterate(index + 1, array, result);
        });
    }
    return Promise.resolve().then(() => iterate(0, arr, []));
  }

  /**
   * Get MyCoin address for a given BIP 32 path.
   *
   * @param path a path in BIP 32 format
   * @param display optionally enable or not the display
   * @return an object with a publicKey, address
   * @example
   * const result = await myCoin.getAddress("44'/8008'/0'/0/0");
   * const { publicKey, address, returnCode } = result;
   */
  async getAddress(
    path: string,
    display?: boolean
  ): Promise<{
    publicKey: string,
    address: string,
    returnCode: number,
  }> {
    const bipPath = BIPPath.fromString(path).toPathArray();
    const serializedPath = this.serializePath(bipPath);

    const p1 = display ? 0x01 : 0x00;
    const p2 = 0x00;
    const statusList = [SW_OK, SW_CANCEL];

    const response = await this.transport.send(
      CLA,
      INS.GET_ADDR,
      p1,
      p2,
      serializedPath,
      statusList
    );

    const errorCodeData = response.slice(-2);
    const returnCode = errorCodeData[0] * 0x100 + errorCodeData[1];

    if (returnCode === SW_CANCEL) {
      throw new UserRefusedAddress();
    }

    return {
      publicKey: response.slice(0, 32).toString("hex"),
      address: response.slice(32, response.length - 2).toString("ascii"),
      returnCode,
    };
  }

  /**
   * Sign a MyCoin transaction with a given BIP 32 path
   *
   * @param path a path in BIP 32 format
   * @param message a raw hex string representing a serialized transaction.
   * @return an object with signature and returnCode
   */
  async signTransaction(
    path: string,
    message: string
  ): Promise<{ signature: null | Buffer, returnCode: number }> {
    const bipPath = BIPPath.fromString(path).toPathArray();
    const serializedPath = this.serializePath(bipPath);

    const chunks = [];
    chunks.push(serializedPath);
    const buffer = Buffer.from(message);

    for (let i = 0; i < buffer.length; i += CHUNK_SIZE) {
      let end = i + CHUNK_SIZE;
      if (i > buffer.length) {
        end = buffer.length;
      }
      chunks.push(buffer.slice(i, end));
    }

    let response = {};

    return this.foreach(chunks, (data, j) =>
      this.transport
        .send(
          CLA,
          INS.SIGN,
          j === 0
            ? PAYLOAD_TYPE_INIT
            : j + 1 === chunks.length
            ? PAYLOAD_TYPE_LAST
            : PAYLOAD_TYPE_ADD,
          0,
          data,
          [SW_OK, SW_CANCEL]
        )
        .then((apduResponse) => (response = apduResponse))
    ).then(() => {
      const errorCodeData = response.slice(-2);
      const returnCode = errorCodeData[0] * 0x100 + errorCodeData[1];

      let signature = null;
      if (response.length > 2) {
        signature = response.slice(0, response.length - 2);
      }

      if (returnCode === SW_CANCEL) {
        throw new UserRefusedOnDevice();
      }

      return {
        signature,
        returnCode,
      };
    });
  }

  /**
   * get the version of the MyCoin app installed on the hardware device
   *
   * @return an object with a version
   * @example
   * const result = await myCoin.getAppConfiguration();
   *
   * {
   *   "version": "1.0.0"
   * }
   */
  async getAppConfiguration(): Promise<{
    version: string,
  }> {
    const response = await this.transport.send(
      CLA,
      INS.GET_VERSION,
      0x00,
      0x00
    );
    const result = {};
    result.version = "" + response[1] + "." + response[2] + "." + response[3];
    return result;
  }
}
```

### Usage Example

```ts
 import MyCoinSdk from "my-coin-sdk"; // Your coin js sdk
 import Transport from "@ledgerhq/hw-transport-node-hid";
 // import Transport from "@ledgerhq/hw-transport-u2f"; // for browser
 import MyCoin from "@ledgerhq/hw-app-mycoin"; // App JS Bindings

 function establishConnection() {
     return Transport.create()
         .then(transport => new MyCoin(transport));
 }

 function fetchAddress(myCoin) {
     return myCoin.getAddress("44'/8008'/0'/0/0");
 }

 function signTransaction(myCoin, deviceData, nonce) {
     let tx = {
         type: "send",
         from: deviceData.address,
         to: "destination-address",
         amount: "1000000",
         nonce,
     };
     const serialized = MyCoinSdk.encode(tx);

     console.log('Sending transaction to device for approval...');
     return myCoin.signTransaction("44'/8008'/0'/0/0", serialized);
 }

function prepareAndSign(myCoin, nonce) {
     return fetchAddress(myCoin)
         .then(deviceData => signTransaction(myCoin, deviceData, nonce));
}

establishConnection()
  .then(myCoin => prepareAndSign(myCoin, 123))
  .then(({ signature }) => console.log(`Signature: ${signature}`))
  .catch(e => console.log(`An error occurred (${e.message})`));
```
