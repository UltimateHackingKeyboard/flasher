#!/bin/bash
bootloaderVer=1.0.1
firmwareVer=8.2.5
bootloaderFile=uhk-bootloader-$bootloaderVer.hex
firmwareFile=uhk-firmware-$firmwareVer.tar.bz2
wget https://github.com/UltimateHackingKeyboard/bootloader/releases/download/v$bootloaderVer/$bootloaderFile
wget https://github.com/UltimateHackingKeyboard/firmware/releases/download/v$firmwareVer/$firmwareFile
mkdir -p firmware
cp $bootloaderFile firmware/bootloader.hex
tar -xjf $firmwareFile -C firmware
