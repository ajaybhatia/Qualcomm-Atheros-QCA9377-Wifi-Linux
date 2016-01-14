# Maintainer: Ajay Bhatia <prof.ajaybhatia@gmail.com>

pkgname=ath10k-qca9377-wifi
pkgbase=${pkgname}
pkgver=0.1
pkgrel=1
pkgdesc='Qualcomm Atheros QCA9377 Wireless-AC Device 0042 [rev 30]'
_srcname=qca9377
arch=('any')
license=('GPL')
source=("qca9377.tar.xz"
		    "ath10k.conf")
md5sums=('756934dba6b59e2ee19922b63b8a97bb'
         'fce5dbe873ca616de7d519cb55af8e68')


build() {
  cd "${srcdir}/${_srcname}"
  make defconfig-ath10k
  make -j`getconf _NPROCESSORS_ONLN` 
  sudo make install
}

package() {
  mkdir -p $pkgdir/etc/modprobe.d
  cp ath10k.conf $pkgdir/etc/modprobe.d/ath10k.conf
  
  DESTDIR="$pkgdir/usr/lib/firmware/"
  mkdir -p $DESTDIR
  cd "${srcdir}/${_srcname}"
  cp -r ath10k-firmware/ath10k/ $DESTDIR
  cp -r ath10k-firmware/QCA9377 $DESTDIR/ath10k/
  cp $DESTDIR/ath10k/QCA9377/hw1.0/firmware-5.bin_WLAN.TF.1.0-00267-1 $DESTDIR/ath10k/QCA9377/hw1.0/firmware-5.bin
}
