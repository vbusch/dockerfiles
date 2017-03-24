SUBDIRS=address-controller configserv mqtt-gateway mqtt-lwt qpid-proton qdrouterd queue-scheduler router-agent subscription-service topic-forwarder 
#TODO: once volumes are in the dogen release add in the broker
all: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ all
#	curl -s https://raw.githubusercontent.com/EnMasseProject/travis-scripts/master/trigger-travis.sh | bash /dev/stdin

.PHONY: all $(SUBDIRS)
