#!/bin/sh

# This is a collection of simple patchs
#
# The repos are not forked because most of the bugs are quite small 
# and i'm not going to fork things just because googles QA team
# was on holidays. (= i still have hope that google may fix this)

CWD=`pwd`

cd ../../../../

patch -d external/sepolicy     -f -p1 < $CWD/01-selinux.diff
patch -d packages/apps/Browser -f -p1 < $CWD/02-browser.diff
patch -d packages/apps/Nfc     -f -p1 < $CWD/03-nfc.diff
# patch -d packages/apps/Email   -f -p1 < $CWD/04-email.diff
patch -d hardware/qcom/display -f -p1 < $CWD/05-qcom-display.diff
patch -d hardware/qcom/media   -f -p1 < $CWD/06-qcom-media.diff
patch -d external/bluetooth/bluedroid -f -p1 < $CWD/07-bluedroid.diff
patch -d external/libnfc-nxp   -f -p1 < $CWD/08-nxp-nfc.diff
