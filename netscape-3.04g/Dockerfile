FROM oldwebtoday/base-wine-browser

USER browser
WORKDIR /home/browser

ADD wine.tar.gz /home/browser/

RUN mkdir fontconfig
COPY fonts.conf /home/browser/fontconfig/

COPY custom_user.reg /home/browser/custom_user.reg

COPY run.sh /app/run.sh

CMD /app/entry_point.sh /app/run.sh

LABEL wr.name="Netscape" \
      wr.version="3.04g" \
      wr.os="Windows (Wine)" \
      wr.caps.java="1.0" \
      wr.caps.flash="2.0" \
      wr.caps.shockwave="6.0.1" \
      wr.caps.quicktime="2.1.2" \
      wr.caps.realplayer="4.01"
