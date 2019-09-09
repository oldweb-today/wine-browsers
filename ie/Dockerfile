FROM oldwebtoday/base-wine-browser

ARG WINE_DIR
ARG VERSION

ADD ./wines/$WINE_DIR /home/browser/

COPY custom_user.reg /home/browser/custom_user.reg
COPY run.sh /app/run.sh

LABEL wr.name="Internet Explorer" \
      wr.version="$VERSION" \
      wr.os="windows"
 
