FROM webrecorder/base-wine-browser

USER browser
WORKDIR /home/browser

ADD ns48.tar.gz /home/browser/

COPY prefs.js /home/browser/prefs.js
COPY proxy_prefs.js /home/browser/proxy_prefs.js

COPY run.sh /app/run.sh
RUN sudo chmod a+x /app/run.sh

CMD /app/entry_point.sh /app/run.sh

LABEL wr.name="Netscape" \
      wr.version="4.8" \
      wr.os="windows" \
      wr.caps.java="1" \
      wr.caps.midi="1"

