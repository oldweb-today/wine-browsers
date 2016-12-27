FROM oldwebtoday/base-browser

# Install wine and related packages
RUN dpkg --add-architecture i386 \
        && apt-get update \
        && apt-get install -y --no-install-recommends software-properties-common \
        && add-apt-repository ppa:ubuntu-wine/ppa \
        && apt-get update \
        && apt-get install -y --no-install-recommends \
                wine1.8 winetricks pulseaudio:i386 \
        && rm -rf /var/lib/apt/lists/*

# Use the latest version of winetricks
RUN curl -SL 'http://winetricks.org/winetricks' -o /usr/local/bin/winetricks \
        && chmod +x /usr/local/bin/winetricks

# Adapter from suchja/wine
ENV WINE_MONO_VERSION 0.0.8

# Get latest version of mono for wine
RUN mkdir -p /usr/share/wine/mono \
    && curl -SL 'http://sourceforge.net/projects/wine/files/Wine%20Mono/$WINE_MONO_VERSION/wine-mono-$WINE_MONO_VERSION.msi/download' -o /usr/share/wine/mono/wine-mono-$WINE_MONO_VERSION.msi \
    && chmod +x /usr/share/wine/mono/wine-mono-$WINE_MONO_VERSION.msi

# Put gecko installer into wine directory for wine 1.6
#RUN mkdir -p /usr/share/wine/gecko
#COPY wine_gecko-2.21-x86.msi /usr/share/wine/gecko/
#RUN chmod a+rx /usr/share/wine/gecko/wine_gecko-2.21-x86.msi

# Wine really doesn't like to be run as root, so let's use a non-root user
USER browser
ENV HOME /home/browser
ENV WINEARCH win32

# Use xclient's home dir as working dir
WORKDIR /home/browser

COPY proxy.reg /home/browser/proxy.reg

COPY run.sh /app/run.sh

CMD /app/entry_point.sh /app/run.sh

