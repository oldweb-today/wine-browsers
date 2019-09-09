#!/bin/bash

export WINEDLLOVERRIDES="mshtml= mscoree="
export WINEPREFIX="/home/browser/.wine"

USER_REG=/home/browser/custom_user.reg

sed -i s/'$DIMENSION'/$SCREEN_WIDTH"x"$SCREEN_HEIGHT/g $USER_REG

sudo chown browser /home/browser/prefs.js
echo "user_pref(\"browser.window_rect\", \"0,0,$SCREEN_WIDTH,$SCREEN_HEIGHT\");" >> /home/browser/prefs.js

if [[ -n "$PROXY_HOST" ]]; then
    sudo chown browser /home/browser/proxy_prefs.js
    sed -i s/'$PROXY_HOST'/$PROXY_HOST/g /home/browser/proxy_prefs.js
    sed -i s/'$PROXY_PORT'/$PROXY_PORT/g /home/browser/proxy_prefs.js
    cat /home/browser/proxy_prefs.js >> /home/browser/prefs.js
fi

cp /home/browser/prefs.js $WINEPREFIX/drive_c/Program\ Files/Netscape/Users/webrecorder/prefs.js

wine regedit $USER_REG

run_forever wine 'C:/Program Files/Netscape/Communicator/Program/netscape.exe' $URL

