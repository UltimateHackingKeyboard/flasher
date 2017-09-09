#!/bin/sh

`dirname $0`/bin/JLinkExe -If SWD -CommandFile ../shared/uhk-bootloader.jlink
