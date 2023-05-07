FROM docker.io/amake/innosetup
USER root
ENV HOME /home/xclient
ENV WINEPREFIX /home/xclient/.wine
ENV WINEARCH win32
RUN chown -R root /home
WORKDIR /work

COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]


