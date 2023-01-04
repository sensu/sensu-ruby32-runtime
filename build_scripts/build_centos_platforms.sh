#!/bin/bash

mkdir -p dist
mkdir -p assets
mkdir -p scripts

# CentOS 8 platform
platform="centos8" test_platforms="centos:8 debian:10 ubuntu:20.04" ./build_and_test_platform.sh
retval=$?
if [[ retval -ne 0 ]]; then
  exit $retval
fi
