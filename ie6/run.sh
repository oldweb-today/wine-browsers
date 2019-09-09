#!/bin/bash

#export WINEDLLOVERRIDES="mshtml="
export WINEPREFIX="/home/browser/.wine"

USER_REG=/home/browser/custom_user.reg

sed -i s/'$DIMENSION'/$SCREEN_WIDTH"x"$SCREEN_HEIGHT/g $USER_REG

wine regedit proxy.reg
wine regedit $USER_REG

run_forever wine start /max /W 'C:/Program Files/Internet Explorer/IEXPLORE.exe' $URL

