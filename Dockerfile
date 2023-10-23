ARG BASE=ghcr.io/void-linux/void-musl-full:20231003R1
FROM ${BASE}
RUN xbps-install -yMu xbps && xbps-install -yMu git bash curl util-linux findutils
COPY void-updates.sh /usr/local/bin/void-updates
COPY entrypoint.sh /entrypoint

# Needed to allow the update checker to run as root.
ENV XBPS_ALLOW_CHROOT_BREAKOUT=1
ENV PARALLELISM=20

LABEL org.opencontainers.image.source https://github.com/void-linux/void-updates

ENTRYPOINT ["/entrypoint"]
