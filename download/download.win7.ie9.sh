#!/bin/bash

curl https://az412801.vo.msecnd.net/vhd/VMBuild_20131127/VirtualBox/IE9_Win7/Linux/IE9.Win7.For.LinuxVirtualBox.part1.sfx > IE9.Win7.For.LinuxVirtualBox.part1.sfx
curl https://az412801.vo.msecnd.net/vhd/VMBuild_20131127/VirtualBox/IE9_Win7/Linux/IE9.Win7.For.LinuxVirtualBox.part2.rar > IE9.Win7.For.LinuxVirtualBox.part2.rar
curl https://az412801.vo.msecnd.net/vhd/VMBuild_20131127/VirtualBox/IE9_Win7/Linux/IE9.Win7.For.LinuxVirtualBox.part3.rar > IE9.Win7.For.LinuxVirtualBox.part3.rar
curl https://az412801.vo.msecnd.net/vhd/VMBuild_20131127/VirtualBox/IE9_Win7/Linux/IE9.Win7.For.LinuxVirtualBox.part4.rar > IE9.Win7.For.LinuxVirtualBox.part4.rar
sudo chmod +x IE9.Win7.For.LinuxVirtualBox.part1.sfx
./IE9.Win7.For.LinuxVirtualBox.part1.sfx
mv *.ova /vagrant/boxes
