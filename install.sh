#! /bin/bash
#
#  install.sh
#
#  Copyright 2015 Ajay Bhatia <prof.ajaybhatia@gmail.com>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#
#
#  This script will install QCA9377 (Qualcomm Atheros QCA9377 Driver 0042 [rev. 30])
#  on any GNU\Linux Distribution
# 

echo "options ath10k_core skip_otp=y" | sudo tee /etc/modprobe.d/ath10k_core.conf
sudo cp -r firmware-only/QCA9377 /lib/firmware/ath10k/
tar -xvf qca9377.tar.xz
cd qca9377
make defconfig-ath10k
make -j9
sudo make install
sudo reboot
