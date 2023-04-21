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

# EL 9 platform
platform="el9" test_platforms="almalinux:9 quay.io/centos/centos:stream9 rockylinux:9 registry.access.redhat.com/ubi9/ubi:latest" ./build_and_test_platform.sh
retval=$?
if [[ retval -ne 0 ]]; then
  exit $retval
fi
