FROM oldwebtoday/base-wine-browser

ADD wine.tar.gz /home/browser/

COPY custom_user.reg /home/browser/custom_user.reg
COPY run.sh /app/run.sh

CMD /app/entry_point.sh /app/run.sh

LABEL wr.name="Internet Explorer" \
      wr.version="4.0" \
      wr.os="windows"
 
