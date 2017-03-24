#!/bin/sh

exec java -Dvertx.disableFileCaching=true -Dvertx.disableFileCPResolving=true -jar /opt/mqtt-lwt/mqtt-lwt.jar