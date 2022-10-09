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

.PHONY: all

all: clean init

	mkdir --parents $(PWD)/build/Boilerplate.AppDir
	$(PWD)/bin/Apprepo.AppImage --destination=$(PWD)/build appdir clementine \
			libcrypto++6 libqt5sql5-sqlite gstreamer gstreamer1.0-alsa gstreamer1.0-gl \
			gstreamer1.0-espeak libqt5gstreamer-1.0-0 qtgstreamer-plugins-qt5 \
			gstreamer1.0-plugins-bad gstreamer1.0-libav qtwayland5 \
			libwayland-cursor0 libselinux1
			
	echo "exec \$${APPDIR}/bin/clementine \"\$${@}\"" >> $(PWD)/build/Clementine.AppDir/AppRun

	rm -rf $(PWD)/build/Clementine.AppDir/*.desktop

	cp --force $(PWD)/AppDir/*.desktop $(PWD)/build/Clementine.AppDir | true
	cp --force $(PWD)/AppDir/*.svg $(PWD)/build/Clementine.AppDir | true
	cp --force $(PWD)/AppDir/*.png $(PWD)/build/Clementine.AppDir | true

	export ARCH=x86_64 && $(PWD)/bin/appimagetool.AppImage  $(PWD)/build/Clementine.AppDir $(PWD)/Clementine.AppImage
	chmod +x $(PWD)/Clementine.AppImage


init:
	mkdir --parents $(PWD)/bin

	wget https://apprepo.de/appimage/download/apprepo \
		--output-document=$(PWD)/bin/Apprepo.AppImage
	chmod +x $(PWD)/bin/Apprepo.AppImage

	wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage \
		--output-document=$(PWD)/bin/appimagetool.AppImage
	chmod +x $(PWD)/bin/appimagetool.AppImage

clean:
	rm -rf $(PWD)/*.AppImage
	rm -rf $(PWD)/bin/*
	rm -rf $(PWD)/build
