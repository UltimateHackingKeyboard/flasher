#!/bin/sh

current_dir=`dirname $0`
$current_dir/bin/JLinkExe -If SWD -CommandFile $current_dir/../shared/uhk-left.jlink
