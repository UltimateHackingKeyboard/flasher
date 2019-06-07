# flasher

This repo contains a couple of scripts and their dependencies which flash the bootloader and firmware images of the [Ultimate Hacking Keyboard](https://ultimatehackingkeyboard.com/).


## Instructions

### Prerequisites

Hardware
---

You will need a SWD programmer. The scripts are written for 'Segger J-Link' line of programmers

- [J-Link Base / Base Compact](https://www.segger.com/products/debug-probes/j-link/models/j-link-edu/)  
- [J-Link EDU](https://www.segger.com/products/debug-probes/j-link/models/j-link-edu/)  
- [J-Link EDU mini](https://www.segger.com/products/debug-probes/j-link/models/j-link-edu-mini/)  


Software
---

#### Mac / Linux

Install the following programs using your OS's package manager

- wget
- tar

#### Windows

TODO: Document windows software requirements


### Connect Programmer

The Pins are located on the 'right half' of the keyboard. 

Looking from the *back* of the keyboard, the pin headers are:

| SWDIO | SWCLK |  |  | RESET |
|-------|-------|-----|---|-------|
| 3.3v | GND | GND |  | GND |

![](https://cl.ly/bc4a7b40d857/Screenshot%202018-10-25%2021.21.21.png)

Connect SWDIO, SWCLK, RESET 3.3v and any of the GND pins to your programmer. 

If using the 'J-Link EDU mini' you can plug the pin headers directly into the back of the keyboard

![](https://cl.ly/3472d540f2af/IMG_6966.jpg)

Before programming, ensure the SWD programmer *and* USB power are connected to keyboard


### Firmware Setup

#### Mac / Linux
Download the hex binaries

```
./fetch-firmware.sh
```

Flash a new bootloader (mac)

```
cd macintosh
./update-bootloader.sh
```

Install firmware (mac)

```
cd macintosh
./update-right.sh
./update-left.sh
```
