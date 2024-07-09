# Makefile.single_ly

all: $(addsuffix .rdf, $(basename $(wildcard *.ly))) \
     $(addsuffix .log, $(basename $(wildcard *.ly)))

%.rdf: %.ly
	mutopia-clean.sh
	Mutopia -f $<
	mutopia-compile.sh $<
	mutopia-combine.sh $(basename $<)

%.log: %.ly
	mutopia-history.sh
