FROM alvisisme/dev-container:base

# china mirror
COPY library-scripts/apt-source.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/apt-source.sh && apt-get update

ENV NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

COPY library-scripts/node-mirror.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/node-mirror.sh
