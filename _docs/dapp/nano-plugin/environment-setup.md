---
title: Setup
subtitle:
tags: [dapp, DApp plugin]
category: "Live App: Dapp integration"
author:
toc: true
layout: doc
---

This step is getting the plugin to compile. But first, we need to set up the working environment.

## Base-path

Let’s now create a new directory to contain everything that is plugin related.  
In a terminal:

```sh
mkdir plugin_dev
cd plugin_dev
```
## Clone repositories

In the `plugin_dev/` folder, clone the Ethereum-app:
```sh
git clone https://github.com/LedgerHQ/app-ethereum
cd app-ethereum
git checkout master
```
And the Plugin-tools (`cd` back to the `plugin_dev/` first):
```sh
cd ..
git clone https://github.com/LedgerHQ/plugin-tools
```
The plugin-tools repository contains tools for your plugin development, 

## Connect to the container

We have created docker images to start coding quickly rather than installing all the dependencies on your computer from scratch.

You need to install these if you don’t already have them:

1. Docker: [instructions here](https://docs.docker.com/get-docker/)
2. Docker-compose: [instructions here](https://docs.docker.com/compose/install/)

<!--  -->
{% include alert.html style="important" text="Make sure you have correctly installed the tools above.
" %}
<!--  -->

There is no need to launch Docker because `docker-compose` (in the `plugin-tools` repository) does all the magic. 

In the same terminal, simply type:

```sh
cd plugin-tools
./start.sh
```

<!--  -->
{% include alert.html style="tip" text="If you get this error:<br>
<code>ERROR: Couldn't connect to Docker daemon at http+docker://localhost - is it running? </code><br>
This means you either:<br>
- Failed to install <code>docker</code>.<br>
- Need to add <code>sudo</code> in front of <code>sudo ./start.sh</code><br>
" %}
<!--  -->

You are now connected to the container. The `plugin_dev` directory you see in the container is the one created in the steps above. (They are shared using `volume` in docker-compose.)

At the prompt, `ls` gives
```sh
app-ethereum    plugin-tools
```
## Compile the Ethereum app

Still in the terminal, compile the Ethereum app:
```sh
cd app-ethereum
make
```

In the first compilation, you may come across:
1. messages such as `BOLOS_ENV is not set: falling back to CLANGPATH and GCCPATH`. These are expected.
2. `continue connecting` messages: type `yes`.
3. a few `gcc` or `clang` warnings about the C code. This is (unfortunately) expected.

If everything goes well, you should end with:
```sh
...
[LINK] bin/app.elf
```

Congratulations, you have successfully compiled the Ethereum app!  
Now you are ready to walk through the Boilerplate plugin example.
