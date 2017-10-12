#!/bin/sh

set -e

SOURCES_DIR=/tmp/artifacts/

DISTRO_NAME=artemis-image


# unpack
{
	tar xzf "${SOURCES_DIR}/$DISTRO_NAME.tar"
    mv opt/apache-artemis-2.3.0 /opt
    mv opt/artemis-shutdown-hook /opt
	mv config_templates /  
}

chown -R 185:0 /opt/apache-artemis-2.3.0
chown -R 185:0 /opt/artemis-shutdown-hook
