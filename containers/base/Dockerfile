ARG VARIANT="18.04"
FROM ubuntu:${VARIANT}

COPY library-scripts/common.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/common.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /tmp/library-scripts

ENV LANG=en_US.UTF-8 
ENV LANGUAGE=en_US:en 
ENV LC_ALL=en_US.UTF-8

ENV GIT_VERSION=2.29.0
COPY library-scripts/git-from-src.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/git-from-src.sh $GIT_VERSION

ENV NODE_VERSION=12.8.1
ENV NVM_DIR="/usr/local/share/nvm"
ENV NVM_SYMLINK_CURRENT=true \
    PATH=${NVM_DIR}/current/bin:${PATH}
COPY library-scripts/node.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/node.sh "${NVM_DIR}" "${NODE_VERSION}"

# 一些工程化工具
RUN yarn global add \
    yo generator-standard-readme \
    markdownlint-cli \
    @ls-lint/ls-lint \
    commitizen cz-conventional-changelog \
    && echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
