#!/bin/sh

set -exu
export PKG_PATH=https://cloudflare.cdn.openbsd.org/pub/OpenBSD/%c/packages/$(machine -a)/

# Add your additional provisioning here for custom VM images.
pkg_add -u
pkg_add git
pkg_add -Dsnap ngtcp2 nghttp3 curl rust rust-src

mkdir -p /opt/sysroot/i386 /opt/sysroot/arm64
curl -sSf https://cloudflare.cdn.openbsd.org/pub/OpenBSD/7.9/i386/base79.tgz  | tar -C /opt/sysroot/i386  -xzf - ./usr/lib
curl -sSf https://cloudflare.cdn.openbsd.org/pub/OpenBSD/7.9/arm64/base79.tgz | tar -C /opt/sysroot/arm64 -xzf - ./usr/lib
