#!/bin/sh
set -e # fail the script if a command fails

bin/blhost --usb 0x1d50,0x6120 flash-security-disable 0403020108070605
bin/blhost --usb 0x1d50,0x6120 flash-erase-region 0xc000 475136
bin/blhost --usb 0x1d50,0x6120 flash-image ../shared/uhk-right.srec
bin/blhost --usb 0x1d50,0x6120 reset
