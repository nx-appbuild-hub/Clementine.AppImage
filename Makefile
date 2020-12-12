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
	apprepo --destination=$(PWD)/build appdir clementine libcrypto++6 libqt5sql5-sqlite
	echo "exec \$${APPDIR}/bin/clementine \"\$${@}\"" >> $(PWD)/build/Clementine.AppDir/AppRun

	rm -rf $(PWD)/build/Clementine.AppDir/*.desktop

	cp --force $(PWD)/AppDir/*.desktop $(PWD)/build/Clementine.AppDir | true
	cp --force $(PWD)/AppDir/*.svg $(PWD)/build/Clementine.AppDir | true
	cp --force $(PWD)/AppDir/*.png $(PWD)/build/Clementine.AppDir | true

	export ARCH=x86_64 && $(PWD)/bin/appimagetool.AppImage  $(PWD)/build/Clementine.AppDir $(PWD)/Clementine.AppImage
	chmod +x $(PWD)/Clementine.AppImage


clean:
	rm -rf $(PWD)/build
