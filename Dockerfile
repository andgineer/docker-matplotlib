FROM andgineer/python-base

COPY pip.requirements.txt /pip.requirements.txt
COPY xkcd.otf /

RUN ln -s /usr/include/locale.h /usr/include/xlocale.h \
    && mkdir -p ~/.fonts \
    && cp xkcd.otf ~/.fonts/ \
    && apk --no-cache add musl-dev linux-headers gfortran g++ jpeg-dev zlib-dev cairo-dev \
    && pip install -r pip.requirements.txt
