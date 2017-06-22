SUBDIRS=qpid-proton qdrouterd router-metrics

all: $(SUBDIRS)

clean: $(SUBDIRS) 
	$(MAKE) -C $@ clean

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)
#	curl -s https://raw.githubusercontent.com/EnMasseProject/travis-scripts/master/trigger-travis.sh | bash /dev/stdin

.PHONY: all $(SUBDIRS)
