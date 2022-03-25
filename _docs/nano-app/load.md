---
title: Load the application
subtitle:
tags: [compile, load app to nano, side loading, ledgerblue, make load, make delete]
category: Nano Application
toc: true
author:
layout: doc
---



<!--  -->
{% include alert.html style="tip" text="The <b>Nano X</b> does not support side loading, therefore you must use the device emulator <b>Speculos</b> for loading to work. See how to <a href='../../speculos/installation/build'>install</a> and <a href='../../speculos/user/usage'>use</a> it. For the Nano S, you can read the following instructions. This documentation will soon be adapted for the Nano S Plus." %}
<!--  -->

<!--  -->
{% include alert.html style="important" text="If you are a Mac or a Windows user, you should use a Linux Virtual Machine to load the application to a Nano S or Nano S Plus." %}
<!--  -->

## 1. Define the udev rules

If you wish to load applications on your device, you will need to add the appropriate `udev` rules.

``` bash
wget -q -O - https://raw.githubusercontent.com/LedgerHQ/udev-rules/master/add_udev_rules.sh | sudo bash
```

## 2. Load the application from inside the container image 

<!--  -->
{% include alert.html style="important" text='If you want to load and delete the app directly from the container image. You need to compile the application, in the source file of your application, adding the <code>--privileged</code> option: <br> <code>$ sudo docker run --rm -ti -v "/dev/bus/usb:/dev/bus/usb" -v "$(realpath .):/app" <br> --privileged ledger-app-builder:latest</code>' %}
<!--  -->

While the container image is running:
1. Plug and unlock the Nano S.
3. Use `make load` to load the app to the Nano S and `make delete` to delete it.
3. You can exit the image, with the command `exit`.


## 2. ... or load the application with ledgerblue

### 2.1. Install ledgerblue

`ledgerblue` is a package that contains Python tools to communicate with Ledger devices and manage applications life cycle. It is recommended to install this package in a Virtual Environment in your native environment (not a Docker image) to avoid hidapi issues.

#### Prerequisited packages

First, make sure you have installed the prerequisited packages:
  * libudev-dev
  * libusb-1.0-0-dev
  * python-dev (python 2.7)
  * virtualenv

#### ledgerblue package

Outside of your application folder, install the ledgerblue package in a virtual environment:

```bash
virtualenv ledger
source ledger/bin/activate
pip install ledgerblue
deactivate
```

### 2.2. Load and delete

#### Clone the SDK

<!--  -->
{% include alert.html style="important" text="The Nano S SDK must first be locally cloned and stored in <code>BOLOS_SDK</code> for the loading to work." %}
<!--  -->

Use the following commands for the Nano S:

```bash
git clone https://github.com/LedgerHQ/nanos-secure-sdk.git nanos-secure-sdk
export BOLOS_SDK=<path-to>nanos-secure-sdk
```

#### How-to

1. Plug and unlock the Nano S.
2. Move to the root of the application file and activate the virtual environment with `source ledger/bin/activate`.
3. Use `make load` to load the app to the Nano S and `make delete` to delete it.
4. You can deactivate the virtual environment with the command `deactivate`.

<!--  -->
{% include alert.html style="note" text="Before loading an application, make sure you have enough space on the device." %}
<!--  -->
