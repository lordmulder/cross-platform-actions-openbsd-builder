#!/bin/sh

set -exu

# Add your additional provisioning here for custom VM images.
pkg_add -u
pkg_add git rust rust-src

mkdir -p /opt/sysroot/i386 /opt/sysroot/arm64
curl -sSf https://cdn.openbsd.org/pub/OpenBSD/7.8/i386/base78.tgz  | tar -C /opt/sysroot/i386  -xzf - ./usr/lib
curl -sSf https://cdn.openbsd.org/pub/OpenBSD/7.8/arm64/base78.tgz | tar -C /opt/sysroot/arm64 -xzf - ./usr/lib
