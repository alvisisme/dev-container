ARG VARIANT="18.04"
FROM ubuntu:${VARIANT}

COPY library-scripts/common.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/common.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /tmp/library-scripts

ENV GIT_VERSION=2.29.0
COPY library-scripts/git-from-src.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/git-from-src.sh $GIT_VERSION

ENV SDKMAN_DIR="/usr/local/sdkman"
ENV PATH=${SDKMAN_DIR}/bin:${PATH}
COPY library-scripts/sdkman.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/sdkman.sh

ENV JAVA_VERSION=8.0.265-open
ENV PATH=${SDKMAN_DIR}/candidates/java/current/bin:${PATH}
COPY library-scripts/java.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/java.sh "${JAVA_VERSION}"

ENV GRADLE_VERSION=6.7.1
ENV PATH=${SDKMAN_DIR}/candidates/gradle/current/bin:${PATH}
COPY library-scripts/gradle.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/gradle.sh "${GRADLE_VERSION}" "${SDKMAN_DIR}"

ENV MAVEN_VERSION=3.6.3
ENV PATH=${SDKMAN_DIR}/candidates/maven/current/bin:${PATH}
COPY library-scripts/maven.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/maven.sh "${MAVEN_VERSION}" "${SDKMAN_DIR}"

ENV PYTHON_VERSION=3.8.3
ARG PYTHON_PATH=/usr/local/python
ENV PIPX_HOME=/usr/local/py-utils \
    PIPX_BIN_DIR=/usr/local/py-utils/bin
ENV PATH=${PYTHON_PATH}/bin:${PATH}:${PIPX_BIN_DIR}
COPY library-scripts/python3.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/python3.sh "${PYTHON_VERSION}" "${PYTHON_PATH}" "${PIPX_HOME}"

ENV NODE_VERSION=12.8.1
ENV NVM_DIR="/usr/local/share/nvm"
ENV NVM_SYMLINK_CURRENT=true \
    PATH=${NVM_DIR}/current/bin:${PATH}
COPY library-scripts/node.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/node.sh "${NVM_DIR}"

# china mirror
COPY library-scripts/apt-source.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/apt-source.sh && apt-get update

ENV NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

COPY library-scripts/node-mirror.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/node-mirror.sh

COPY library-scripts/python-mirror.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/python-mirror.sh
