#!/bin/sh

current_dir=`realpath $(dirname $0)`
cd $current_dir/../shared
$current_dir/bin/JLinkExe -If SWD -CommandFile uhk-bootloader.jlink
