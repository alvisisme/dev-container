# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.140.1/containers/ubuntu/.devcontainer/base.Dockerfile

ARG VARIANT="18.04"
# FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}
FROM alvisisme/ubuntu:${VARIANT}
# FROM ubuntu:${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  # && apt-get -y install --no-install-recommends wget curl ca-certificates

COPY library-scripts/git-from-src.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/git-from-src.sh 2.29.0