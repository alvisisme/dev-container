FROM alvisisme/dev-container:base

RUN apt-get update \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get -y install \
    build-essential cppcheck valgrind gcovr clang-format \
    g++ clang lldb llvm gdb \
    autoconf automake make cmake \
    doxygen graphviz \
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rfv /var/lib/apt/lists/*

ENV GTEST_VERSION 1.8.1
RUN curl -fsSLO --compressed "https://github.com/google/googletest/archive/release-${GTEST_VERSION}.tar.gz" \
    && mkdir -p /opt \
    && tar -zxf release-${GTEST_VERSION}.tar.gz -C /opt \
    && cd /opt/googletest-release-${GTEST_VERSION} \
    && cmake . \
    && make \
    && make install \
    && ldconfig \
    && rm -rf release-${GTEST_VERSION}.tar.gz \
    && rm -rf /opt/googletest-release-${GTEST_VERSION}

# china mirror
COPY library-scripts/apt-source.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/apt-source.sh && apt-get update

ENV NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

COPY library-scripts/node-mirror.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/node-mirror.sh
