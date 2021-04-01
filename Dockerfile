ARG BASE=ghcr.io/void-linux/void-linux:20210312rc01-thin-x86_64-musl
FROM ${BASE}
RUN xbps-install -yMU git bash curl util-linux findutils
COPY void-updates.sh /usr/local/bin/void-updates
COPY entrypoint.sh /entrypoint

# Needed to allow the update checker to run as root.
ENV XBPS_ALLOW_CHROOT_BREAKOUT=1
ENV PARALLELISM=20

LABEL org.opencontainers.image.source https://github.com/void-linux/void-updates

ENTRYPOINT ["/entrypoint"]
