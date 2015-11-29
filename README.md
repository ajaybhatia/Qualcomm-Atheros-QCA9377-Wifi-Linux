# Qualcomm-Atheros-QCA9377-Wifi-Linux
Drivers and Firmware for Qualcomm Atheros QCA9377 Driver 0042 [rev. 30]. 
This repo also contains PKGBUILD for Arch Distribution and a generic bash script for any GNU\Linux distro.

##For Arch Linux Distro
makepkg -i

##For Any Distro
chmod +x install.sh

./install.sh

###For Kernel 4.4-rc2
Compile your own kernel by applying qca9377_hw1.1_for_linux_4.4-rc2.patch to the kernel source code.

Use distribution specific kernel compilation steps (Read it more about it on your distribution wiki pages).

chmod +x install_for_kernel_4.4-rc2.sh

./install_for_kernel_4.4-rc2.sh 
