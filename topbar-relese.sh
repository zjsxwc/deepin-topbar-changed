#!/bin/bash
set -e
echo "安装编译环境......"
sudo apt install -y debhelper  pkg-config  dpkg-dev  qttools5-dev-tools  expect  cmake  qt5-default  qtbase5-dev  libdtkwidget-dev  libdtkwidget-dev  libdtkcore-dev  libdtkcore-bin  libxcb-ewmh-dev  libxcb-util0-dev  libdframeworkdbus-dev  libgsettings-qt-dev  libxcb-image0-dev  libxcb-icccm4-dev  libxcb-composite0-dev  libqt5svg5-dev  libxtst-dev  libgsettings-qt-dev  libdbusmenu-qt5-dev  libdde-network-utils-dev libprocps-dev
echo "获取最新版本并编译......"
deskpath=~/Desktop
gitpath=~/Desktop/deepin-topbar
debpath=~/Desktop/temp.deb
cd $deskpath
# git clone https://github.com/justforlxz/deepin-topbar.git
cd $gitpath
mkdir -p build
cd build
cmake ../
make

# exit 0

echo "打包DEB......"
cd $deskpath
mkdir -p temp.deb
cd $debpath
mkdir DEBIAN
touch DEBIAN/control
mkdir -p usr/share/deepin-topbar/translations/
mkdir -p usr/bin/
mkdir -p usr/share/dbus-1/services/
mkdir -p usr/share/polkit-1/actions/
mkdir -p usr/share/icons/hicolor/scalable/apps/
mkdir -p usr/share/applications/
cd $gitpath
ts_list=(`ls translations/*.ts`)
for ts in "${ts_list[@]}"
do
    printf "\nprocess ${ts}\n"
    lrelease "${ts}"
done
cp translations/*.qm $debpath/usr/share/deepin-topbar/translations
cd $gitpath
cp com.deepin.dde.topbar.service $debpath/usr/share/dbus-1/services/
cp com.deepin.dde.topbar.polkit.service $debpath/usr/share/polkit-1/actions/
cp deepin-topbar.svg deepin-logo.svg $debpath/usr/share/icons/hicolor/scalable/apps/
cp deepin-topbar.desktop $debpath/usr/share/applications/
cp $gitpath/build/src/deepin-topbar $debpath/usr/bin/
echo Package: deepin-topbar >> $debpath/DEBIAN/control
echo Version: 1.0.0 >> $debpath/DEBIAN/control
echo Architecture: amd64 >> $debpath/DEBIAN/control
echo Maintainer: kirigaya-kirigaya@mkacg.com  >> $debpath/DEBIAN/control
echo Installed-Size: 1492 >> $debpath/DEBIAN/control
echo Conflicts: dde-topbar >> $debpath/DEBIAN/control
echo Replaces: dde-topbar >> $debpath/DEBIAN/control
echo Section: base >> $debpath/DEBIAN/control
echo Priority: optional >> $debpath/DEBIAN/control
echo Homepage: https://github.com/haruyukilxz/deepin-topbar >> $debpath/DEBIAN/control
echo Description: topbar for deepin. >> $debpath/DEBIAN/control
echo >> $debpath/DEBIAN/control
cd $deskpath
dpkg-deb -b temp.deb deepin-topbar.deb
rm -rf temp.deb
echo "打包完成!!!"


