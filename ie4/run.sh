#!/bin/bash

#export WINEDLLOVERRIDES="mshtml="
export WINEPREFIX="/home/browser/.wine"

#sudo chown -R browser /home/browser/.wine

USER_REG=/home/browser/.wine/user.reg

sed -i s/'$DIMENSION'/$SCREEN_WIDTH"x"$SCREEN_HEIGHT/g $USER_REG

#wine regedit $USER_REG

if [[ -n "$PROXY_HOST" ]]; then
    sed -i s/'$PROXY_HOST'/$PROXY_HOST/g proxy.reg
    sed -i s/'$PROXY_PORT'/$PROXY_PORT/g proxy.reg
    wine regedit proxy.reg
fi

run_browser wine start /max /W 'C:/Program Files/Internet Explorer/IEXPLORE.exe' $URL

