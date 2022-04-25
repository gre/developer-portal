---
title: Display Management
subtitle: With Oscars for on-screen performance
tags: [on-screen display, screen, ux flow, ux, layouts]
category: Nano Application
toc: true
author:
layout: doc
---



## Introduction

## On-screen display

### Screens and Flows

Displaying information on the devices is done by defining a **flow**. Think of a flow as a **set of screens that will be displayed** to the user. The user will be able to navigate the flow using **left** and **right** buttons.

The macro `UX_FLOW` lets you define a flow. It first takes the **name of the flow** you are defining, and then the **different steps** of your flow.

Here's an example:

``` c
UX_FLOW(ux_sign_transaction,            // Name of the flow
        &step_destination_address,      // Reference to the first step
        &step_display_amount,           // Reference to second step
        &step_display_transaction_fees, // etc...
        &step_display_approve_step,
        &step_display_reject_step
        );
```

<i>"But what are those steps? Where can I find them?"</i> you ask? Well, they're **yours to declare in your app**! Let's have a look at how you can declare those.

### Declaring steps

A step is declared using one of the **macros provided by the SDK**. Here's a list of the **most used ones** (a more exhaustive list is available by looking at the SDK source code):

-   `UX_STEP_NOCB` : Your bread and butter step. A step that simply **displays information on-screen**, without having any callback function (hence the `NOCB` annotation). This is used to display information to the user (display a public key, display the network name...).
-   `UX_STEP_CB` : Another widely used step declaration. You need to **associate a callback function** (hence the `CB` annotation) that will be called if the **user presses both buttons simultaneously**. This is used mainly at the end of a flow, to either APPROVE or REJECT a signature for example.
-   `FLOW_LOOP` : This is a special macro that **doesn't take any arguments**. Put it as the last step of your `UX_FLOW` declaration, and the flow will wrap around: pressing the left button on the first screen will display the last screen, and pressing the right button on the last screen will jump right to the first screen.

Looking back at our previous flow (the `ux_display_pubkey_flow`), you
can guess which steps were declared with `UX_STEP_NOCB` and
`UX_STEP_CB`:

| Step                             | STEP\_MACRO    | Note                                                                                                                                                                                                                                          |
|----------------------------------|----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `ux_display_destination_address` | `UX_STEP_NOCB` | This step will just display the destination address to the user, **we're not expecting him to confirm or reject anything**.                                                                                                                   |
| `ux_display_amount`              | `UX_STEP_NOCB` | This step will just display the amount to the user, **we're not expecting him to confirm or reject**.                                                                                                                                         |
| `ux_display_transaction_fees`    | `UX_STEP_NOCB` | This step will just display the transaction fees to the user, **we're not expecting him to confirm or reject**.                                                                                                                               |
| `ux_display_approve_step`        | `UX_STEP_CB`   | This step will prompt the user to CONFIRM that he wishes to sign the transaction. If the user **presses both button**, the application will **call the callback function** associated with this step (the code to sign a transaction).       |
| `ux_display_reject_step`         | `UX_STEP_CB`   | This step will prompt the user to REJECT the signature of the transaction. If the user **presses both button**, the application will **call the callback function** associated with this step (the code to reject the transaction signature). |

**Previous example explained**

Here's how the first step is defined:

``` c
UX_STEP_NOCB(
    step_destination_address,
    bnnn_paging,
    {
        .title = "Address",
        .text = g_address
    }
);
```

-   The first argument is the **name** that we are going to give to this step.
-   The second are what we call a `layout` option.
-   The third argument goes hand-in-hand with the `layout` option.

It looks like the `layout` is where the black-magic happens. Let's have a closer look at layouts.

### Layouts

Layouts are nothing more than rules that specify the format / number of lines / fonts we are going to use on the screen. They are easy to remember once you understand that:

-   `b` stands for **bold**.
-   `n` stands for **normal**.
-   `p` stands for **picture**.
-   `paging` means that if the data doesn't fit on screen, user will be able to navigate through multiple screens to see the data (e.g a public key).
-   Finally, the number of letters used stands for the **number of lines**

Note that **not all combinations of letters are possible**. For example `paging` only exists with `bnnn`. `nnnn` only exists on Nano X, etc...

This table contains the **most commonly used layouts**:

| | | |
| Denomination  | Comment <img align="left" width="320" src="">                                                                                                                                                     | Usage                                                      |
|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------|
| `bn`          | Bold font for the first line, normal font for the second line.                                                                                                                                    | `bn, {"BoldLine", "NormalLine"}`                           |
| `pb`          | Picture for the first line, bold font for the second line.                                                                                                                                        | `pb, {&RefToPicture, "BoldLine"}`                          |
| `pnn`         | Picture for the first line, normal font for the second line and third line.                                                                                                                       | `pnn, {&RefToPicture, "NormalLine1", "NormalLine2"}`       |
| `bnnn_paging` | Bold first line, normal fonts for the other lines. If the data to be displayed doesn't fit on a single screen, the user will be able to navigate through different screens to see the whole text. | `bnnn_paging, {.title = "BoldLine", .text = "NormalLine"}` |
|

**Most commonly used layouts**

Here is a table that compares how those layouts are displayed on a Nano S and on a Nano X or S Plus.

Notice that the **Nano X and S Plus can fit up to 4 lines**, whereas the **Nano S can only fit 2**.
<!-- ------------- Image ------------- -->
<!-- --------------------------------- -->

| | | |
| LAYOUT        | NANO S                                                        | NANO X  and S Plus                                            |
|---------------|---------------------------------------------------------------|---------------------------------------------------------------|
| `pb`          | <img align="left" width="280" src="../images/nanos_approve.png">       | <img align="left" width="327" src="../images/nanox_approve.png">       |
| `bn`          | <img align="left" width="280" src="../images/nanos_amount.png">        | <img align="left" width="327" src="../images/nanox_amount.png">        |
| `pnn`         | <img align="left" width="280" src="../images/nanos_boilerplate.png">   | <img align="left" width="327" src="../images/nanox_boilerplate.png">   |
| `bnnn_paging` | <img align="left" width="280" src="../images/nanos_address_merged.png">| <img align="left" width="327" src="../images/nanox_address_merged.png">|
|



## Examples

### Menu

Here's a typical flow for any app that will display its name (along with its logo), then its version, then the settings and finally a quit (along with a icon).

``` c
UX_STEP_NOCB(step_menu, pnn, {&C_app_logo, "App", "is ready"});
UX_STEP_NOCB(step_version, bn, {"Version", &g_version});
UX_STEP_CB(step_settings, pb, ui_settings_menu(), {&C_icon_settings, "Settings"})
UX_STEP_CB(step_exit_step, pb, os_sched_exit(-1), {&C_icon_dashboard_x, "Quit"});

UX_FLOW(ux_app_dashboard,
        &step_menu,
        &step_version,
        &step_settings,
        &step_exit_step,
        FLOW_LOOP
);
```

Pressing both buttons when on the **QUIT** screen calls `os_sched_exit(-1)`, effectively quitting the app. Pressing both button while on the `Settings` screen calls `ui_settings_menu()`, another function that you need to define with `UX_FLOW`. We also added the `FLOW_LOOP` step at the end to have the menu wrap around. Users can now indefinitely cycle through the menu, yay!

### Signing a transaction

Here's the example of a flow to sign a transaction. We first display "Confirm address" along with a picture, then use `bnnn_paging` to display the address because it might not fit on a single screen. We then display the amount and the transactions fees, and finally add two callback steps: the first one to confirm, the second one to reject.

``` c
UX_STEP_NO_CB(step_review, pn, {&C_icon_eye, "Confirm Address"});
UX_STEP_NO_CB(step_address, bnnn_paging, { .title = "Address", .text = &g_destination_address});
UX_STEP_NO_CB(step_amount, bn, {"Amount", &g_amount});
UX_STEP_NO_CB(step_fees, bn, {"Fees", &g_fees});
UX_STEP_CB(step_approve, pb, sign_transaction(), {&C_icon_validate_14, "Approve"});
UX_STEP_CB(step_reject, pb, reject_transaction(), {&C_icon_crossmark, "Reject"});

UX_FLOW(ux_sign_transaction,
        &step_review,
        &step_address,
        &step_amount,
        &step_fees,
        &step_approve,
        &step_reject
    );
```

### Advanced display management

The special [advanced display management](../advanced-display-management) section details more advanced UX\_FLOW delcaration. [Low-level display management](../low-level-display-management) has details about the inner-workings of flows, but feel free to skip this one as it is not mandatory to write new apps.

