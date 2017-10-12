#!/bin/sh

set -e

SOURCES_DIR=/tmp/artifacts/

DISTRO_NAME=topic-forwarder


# unpack
{
	tar xzf "${SOURCES_DIR}/$DISTRO_NAME.tgz" -C /opt
}

