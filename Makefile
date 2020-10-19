# Copyright 2020 Alex Woroschilow (alex.woroschilow@gmail.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
PWD:=$(shell pwd)
DESTINATION="Clementine.AppImage"

all: clean

	mkdir --parents $(PWD)/build

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm https://pkgs.dyn.su/el8/multimedia/x86_64/clementine-1.4.0-2.el8.rc1.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/qt5-qtbase-5.12.5-4.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/qt5-qtbase-gui-5.12.5-4.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/qt5-qtx11extras-5.12.5-1.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/qt5-qtsvg-5.12.5-1.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/l/libqxt-qt5-0.7.0-0.19.20130718giteaf6872f6ad4.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/q/qtsingleapplication-qt5-2.6.1-37.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/q/qtsinglecoreapplication-qt5-2.6.1-37.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/q/qtiocompressor-2.3.1-19.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/q/qtlockedfile-qt5-2.4-30.20150629git5a07df5.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/protobuf-3.5.0-7.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/l/libprojectM-3.1.7-1.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm https://pkgs.dyn.su/el8/base/x86_64/liblastfm-qt5-1.1.0-1.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm https://pkgs.dyn.su/el8/base/x86_64/libmygpo-qt5-1.1.0-3.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/libgpod-0.8.3-23.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/c/cryptopp-8.2.0-2.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/BaseOS/x86_64/os/Packages/libicu-60.3-2.el8_1.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --no-check-certificate --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/libcdio-2.0.0-3.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..


	cp -r --force $(PWD)/AppDir $(PWD)/build
	cp -r --force $(PWD)/build/usr/* $(PWD)/build/AppDir
	cp -r --force $(PWD)/build/usr/lib64/qt5/plugins/platforms $(PWD)/build/AppDir/bin/

	export ARCH=x86_64 && $(PWD)/bin/appimagetool.AppImage  $(PWD)/build/AppDir $(PWD)/Clementine.AppImage
	make clean


clean:
	rm -rf $(PWD)/build
