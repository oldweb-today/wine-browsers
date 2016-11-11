#!/bin/bash

export WINEDLLOVERRIDES="mshtml=;mscoree=d"
export WINEPREFIX="/home/browser/.wine"

USER_REG=/home/browser/custom_user.reg

# interpolate registry settings
sed -i s/'$PROXY_HOST'/"$PROXY_HOST"/g $USER_REG
sed -i s/'$PROXY_PORT'/$(printf "%08x" $PROXY_PORT)/g $USER_REG

sed -i s/'$SCREEN_WIDTH'/$(printf "%08x" $SCREEN_WIDTH)/g $USER_REG
sed -i s/'$SCREEN_HEIGHT'/$(printf "%08x" $SCREEN_HEIGHT)/g $USER_REG

if [[ -n "$PROXY_HOST" ]]; then
    sed -i s/'"Proxy Type"=dword:00000000'/'"Proxy Type"=dword:00000001'/g $USER_REG
fi

wine regedit $USER_REG

run_browser wine $WINEPREFIX/drive_c/Program\ Files/Netscape/Navigator/Program/netscape.exe "$URL"
