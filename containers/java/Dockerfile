FROM alvisisme/dev-container:base

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

# china mirror
COPY library-scripts/apt-source.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/apt-source.sh && apt-get update

ENV NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

COPY library-scripts/node-mirror.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/node-mirror.sh
