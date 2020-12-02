FROM alvisisme/dev-container:base

RUN apt-get update && \
    apt-get -y install \
      git gnupg wget curl ca-certificates tar \
      autotools-dev autoconf make cmake \
      indent splint \
      gcc \
      gcovr \
      doxygen graphviz && \
    rm -rfv /var/lib/apt/lists/*

ENV CMOCKERY_VERSION 0.1.2
RUN wget "https://github.com/google/cmockery/archive/v${CMOCKERY_VERSION}.tar.gz" \
    && tar -zxf v${CMOCKERY_VERSION}.tar.gz -C /usr/src \
    && cd /usr/src/cmockery-${CMOCKERY_VERSION} \
    && ./configure \
    && make \
    && make install \
    && ldconfig \
    && cd / \
    && rm -f v${CMOCKERY_VERSION}.tar.gz \
    && rm -rf /usr/src/cmockery-${CMOCKERY_VERSION}

# china mirror
COPY library-scripts/apt-source.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/apt-source.sh && apt-get update

ENV NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

COPY library-scripts/node-mirror.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/node-mirror.sh
