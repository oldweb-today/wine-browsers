#!/bin/bash

export WINEDLLOVERRIDES="mscoree="
export WINEPREFIX="/home/browser/.wine"

#sudo chown -R browser /home/browser/.wine

USER_REG=/home/browser/.wine/custom_user.reg

sed -i s/'$DIMENSION'/$SCREEN_WIDTH"x"$SCREEN_HEIGHT/g $USER_REG

#wine regedit $USER_REG

if [[ -n "$PROXY_HOST" ]]; then
    sed -i s/'$PROXY_HOST'/$PROXY_HOST/g /home/browser/proxy.reg
    sed -i s/'$PROXY_PORT'/$PROXY_PORT/g /home/browser/proxy.reg
    wine regedit /home/browser/proxy.reg
fi

run_forever wine start /max /W 'C:/Program Files/Internet Explorer/IEXPLORE.exe' $URL

