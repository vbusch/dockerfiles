#!/bin/sh
set -e

SCRIPT_DIR=$(dirname $0)
ADDED_DIR=${SCRIPT_DIR}/added

mv ${ADDED_DIR}/launch.sh /opt

chmod -R ug+x /opt/launch.sh
chown jboss:0 /opt/launch.sh