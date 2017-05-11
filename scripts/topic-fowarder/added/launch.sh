#!/bin/sh

. /usr/local/dynamic-resources/dynamic_resources.sh
MAX_HEAP=`get_heap_size`
if [ -n "$MAX_HEAP" ]; then
	export JAVA_OPTS="-Xms${MAX_HEAP}m -Xmx${MAX_HEAP}m $JAVA_OPTS"
fi
exec /opt/topic-forwarder/bin/topic-forwarder