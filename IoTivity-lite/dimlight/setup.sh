#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

cp ${EXAMPLEPATH}/Emulator-Code/IoTivity-lite/dimlight/devbuildmake ${CURPWD}/devbuildmake
cp ${EXAMPLEPATH}/Emulator-Code/IoTivity-lite/dimlight/dimlight-config.json ${CURPWD}/${PROJNAME}-config.json
cp ${EXAMPLEPATH}/Emulator-Code/emulator/dimlight/dimlight.json ${CURPWD}/${PROJNAME}.json
# add 'mkdir src' for making directory : if doesn't, pc show 'cannot create regular file' message.
mkdir ${CURPWD}/src
cp ${EXAMPLEPATH}/Emulator-Code/IoTivity-lite/dimlight/dimlight.c ${CURPWD}/src/${PROJNAME}.c
cp ${EXAMPLEPATH}/Emulator-Code/IoTivity-lite/dimlight/dimlight-main.c ${CURPWD}/src/${PROJNAME}-main.c
cp ${EXAMPLEPATH}/Emulator-Code/IoTivity-lite/dimlight/dimlight-gen.c ${CURPWD}/src/${PROJNAME}-old.c
# add -p for making '/bin' directory.
mkdir -p ${CURPWD}/bin/glade/
cp ${EXAMPLEPATH}/Emulator-Code/emulator/dimlight/glade/* ${CURPWD}/bin/glade/
