#!/bin/sh

set -e

SOURCES_DIR=/tmp/artifacts/

DISTRO_NAME=keycloak-controller


# unpack
{
	tar xzf "${SOURCES_DIR}/$DISTRO_NAME.tgz"
	mv $DISTRO_NAME /opt  
}

