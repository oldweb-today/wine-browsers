FROM webrecorder/base-wine-browser

USER browser
WORKDIR /home/browser

ADD wine.tar.gz /home/browser/

RUN mkdir fontconfig
COPY fonts.conf /home/browser/fontconfig/

COPY prefs.js /home/browser/prefs.js
COPY proxy_prefs.js /home/browser/proxy_prefs.js
COPY custom_user.reg /home/browser/custom_user.reg

COPY run.sh /app/run.sh

CMD /app/entry_point.sh /app/run.sh

LABEL wr.name="Netscape" \
      wr.version="4.8" \
      wr.os="windows" \
      wr.caps.java="1.1.5" \
      wr.caps.midi="1"

