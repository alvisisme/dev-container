#!/usr/bin/env bash
#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Alvis Zhao. All rights reserved.
# Licensed under the MIT License.
#-------------------------------------------------------------------------------------------------------------
#
# Syntax: ./apt-source.sh
sed -i -E "s/(archive|security).ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list