FROM andgineer/lean-python

USER root

COPY xkcd.otf /usr/share/fonts/

RUN ln -s /usr/include/locale.h /usr/include/xlocale.h \
    && apk --no-cache add musl-dev linux-headers gfortran g++ jpeg-dev zlib-dev cairo-dev

USER leanpython

COPY requirements.txt requirements.txt
RUN uv pip install -r requirements.txt
