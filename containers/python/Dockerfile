FROM alvisisme/dev-container:base

ENV PYTHON_VERSION=3.8.3
ARG PYTHON_PATH=/usr/local/python
ENV PIPX_HOME=/usr/local/py-utils \
    PIPX_BIN_DIR=/usr/local/py-utils/bin
ENV PATH=${PYTHON_PATH}/bin:${PATH}:${PIPX_BIN_DIR}
COPY library-scripts/python3.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/python3.sh "${PYTHON_VERSION}" "${PYTHON_PATH}" "${PIPX_HOME}"

# china mirror
COPY library-scripts/apt-source.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/apt-source.sh && apt-get update

ENV NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

COPY library-scripts/node-mirror.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/node-mirror.sh

COPY library-scripts/python-mirror.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/python-mirror.sh

USER vscode
