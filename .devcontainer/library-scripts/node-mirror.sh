#!/usr/bin/env bash
#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Alvis Zhao. All rights reserved.
# Licensed under the MIT License.
#-------------------------------------------------------------------------------------------------------------
#
# Syntax: ./node-mirror.sh

npm config set registry https://registry.npm.taobao.org
npm config set disturl https://npm.taobao.org/dist
npm config set electron_mirror https://npm.taobao.org/mirrors/electron/
npm config set sass_binary_site https://npm.taobao.org/mirrors/node-sass/
npm config set phantomjs_cdnurl https://npm.taobao.org/mirrors/phantomjs/
npm config set chromedriver_cdnurl https://npm.taobao.org/mirrors/chromedriver
npm config set operadriver_cdnurl https://npm.taobao.org/mirrors/operadriver
npm config set selenium_cdnurl https://npm.taobao.org/mirrors/selenium
