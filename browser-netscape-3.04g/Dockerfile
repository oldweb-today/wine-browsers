FROM webrecorder/base-wine-browser

USER browser
WORKDIR /home/browser

ADD wine.tar.gz /home/browser/

RUN mkdir fontconfig
COPY fonts.conf /home/browser/fontconfig/

COPY run.sh /app/run.sh

RUN sudo chmod a+x /app/run.sh

CMD /app/entry_point.sh /app/run.sh

LABEL wr.name="Netscape" \
      wr.version="3" \
      wr.os="windows" \
      wr.caps.java="1"

