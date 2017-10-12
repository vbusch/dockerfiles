#!/bin/sh

set -e

SOURCES_DIR=/tmp/artifacts/

DISTRO_NAME=mqtt-lwt


# unpack
{
	tar xzf "${SOURCES_DIR}/$DISTRO_NAME.tgz" -C /opt
	mv /opt/mqtt-lwt.jar /
}

