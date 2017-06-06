SUBDIRS=address-controller broker console configserv mqtt-gateway mqtt-lwt qpid-proton qdrouterd queue-scheduler router-agent router-metrics subscription-service topic-forwarder 

all: $(SUBDIRS)

clean: $(SUBDIRS) 
	$(MAKE) -C $@ clean

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)
#	curl -s https://raw.githubusercontent.com/EnMasseProject/travis-scripts/master/trigger-travis.sh | bash /dev/stdin

.PHONY: all $(SUBDIRS)
