#!/bin/sh

set -e

SOURCES_DIR=/tmp/artifacts/
DISTRO_NAME=router-metrics
# unpack
{
	tar xzf "${SOURCES_DIR}/$DISTRO_NAME.tgz" -C /opt
	cd /opt
	pip install prometheus_client
}