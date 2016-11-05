#!/bin/bash

export WINEPREFIX="/home/browser/.wine"

# interpolate registry settings
sed -i s/'$PROXY_HOST'/"$PROXY_HOST"/g $WINEPREFIX/user.reg
sed -i s/'$PROXY_PORT'/$(printf "%08x" $PROXY_PORT)/g $WINEPREFIX/user.reg

sed -i s/'$SCREEN_WIDTH'/$(printf "%08x" $SCREEN_WIDTH)/g $WINEPREFIX/user.reg
sed -i s/'$SCREEN_HEIGHT'/$(printf "%08x" $SCREEN_HEIGHT)/g $WINEPREFIX/user.reg

if [[ -n "$PROXY_HOST" ]]; then
    sed -i s/'"Proxy Type"=dword:00000000'/'"Proxy Type"=dword:00000001'/g $WINEPREFIX/user.reg
fi

run_browser wine $WINEPREFIX/drive_c/Program\ Files/Netscape/Navigator/Program/netscape.exe "$URL"
