#!/bin/sh
set -e # fail the script if a command fails

current_dir=`dirname $0`
blhost=$current_dir/bin/blhost
$blhost --usb 0x1d50,0x6120 flash-security-disable 0403020108070605
$blhost --usb 0x1d50,0x6120 flash-erase-region 0xc000 475136
$blhost --usb 0x1d50,0x6120 flash-image $current_dir/../shared/uhk-right.hex
$blhost --usb 0x1d50,0x6120 reset
