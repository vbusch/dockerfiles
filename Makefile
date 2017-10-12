SUBDIRS=base-nodejs qpid-proton address-controller  configserv console mqtt-gateway mqtt-lwt queue-scheduler router-agent router router-metrics subscription-service topic-forwarder none-authservice broker
#keycloak-controller keycloak
BASEIMAGE_SUBDIRS=base base-epel base-java 

all:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir; \
	done
	
baseimages:
	for dir in $(BASEIMAGE_SUBDIRS); do \
		$(MAKE) -C $$dir; \
	done	

pushall:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir push; \
	done

snapshotall:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir snapshot; \
	done

cleanall:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir clean; \
	done

copyartifactall:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir copyartifact; \
	done

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)
#	curl -s https://raw.githubusercontent.com/EnMasseProject/travis-scripts/master/trigger-travis.sh | bash /dev/stdin

.PHONY: all $(SUBDIRS) push snapshot clean pushall snapshotall cleanall
