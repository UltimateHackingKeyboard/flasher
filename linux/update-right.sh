#!/bin/sh
set -e # fail the script if a command fails

blhost --usb 0x1d50,0x6120 flash-security-disable 0403020108070605
blhost --usb 0x1d50,0x6120 flash-erase-region 0xc000 475136
blhost --usb 0x1d50,0x6120 flash-image ../shared/uhk-right.srec
blhost --usb 0x1d50,0x6120 reset
