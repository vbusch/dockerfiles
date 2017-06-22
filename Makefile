SUBDIRS=qpid-proton qdrouterd router-metrics

all: $(SUBDIRS)

push: $(SUBDIRS)
	$(MAKE) -C $@ push

snapshot: $(SUBDIRS)
	$(MAKE) -C $@ snapshot

clean: $(SUBDIRS) 
	$(MAKE) -C $@ clean

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)
#	curl -s https://raw.githubusercontent.com/EnMasseProject/travis-scripts/master/trigger-travis.sh | bash /dev/stdin

.PHONY: all $(SUBDIRS) push snapshot clean
