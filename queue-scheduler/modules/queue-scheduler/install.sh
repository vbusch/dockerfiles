#!/bin/sh

set -e

SOURCES_DIR=/tmp/artifacts/

DISTRO_NAME=queue-scheduler


# unpack
{
	tar xzf "${SOURCES_DIR}/$DISTRO_NAME.tgz" -C /opt
}

