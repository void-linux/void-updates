#!/bin/sh

if [ -d /void-packages-origin/.git ] ; then
    printf "local origin is possible, bootstrapping from that...\n"
    git clone /void-packages-origin /void-packages
fi

/usr/local/bin/void-updates \
    -p "$PARALLELISM" \
    -r https://github.com/void-linux/void-packages.git \
    -s /void-packages \
    -o /void-updates
