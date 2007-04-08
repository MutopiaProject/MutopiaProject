COMMON_FILES = defs.ly
CLARINET_FILES = $(COMMON_FILES) clarinet-i.ly clarinet-ii.ly	\
clarinet-iii.ly clarinet-iv.ly
VIOLIN1_FILES = $(COMMON_FILES) violin1-i.ly violin1-ii.ly	\
violin1-iii.ly violin1-iv.ly
VIOLIN2_FILES = $(COMMON_FILES) violin2-i.ly violin2-ii.ly	\
violin2-iii.ly violin2-iv.ly
VIOLA_FILES = $(COMMON_FILES) viola-i.ly viola-ii.ly viola-iii.ly	\
viola-iv.ly
CELLO_FILES = $(COMMON_FILES) cello-i.ly cello-ii.ly cello-iii.ly	\
cello-iv.ly


.PHONY: all help score clarinet violin1 violin2 viola cello

all: score clarinet violin1 violin2 viola cello

help:
	@echo "Usage: make [TARGET]"
	@echo "  where TARGET is one of the following:"
	@echo "  all help clarinet violin1 violin2 viola cello score"

%.ps : %.ly
	ly2dvi -P -o $@ $<

############################################################

clarinet: k581-clarinet.ps

k581-clarinet.ps: $(CLARINET_FILES)

############################################################

violin1: k581-violin1.ps $(VIOLIN1_FILES)

k581-violin1.ps: $(VIOLIN1_FILES)

############################################################

violin2: k581-violin2.ps $(VIOLIN2_FILES)

k581-violin2.ps: $(VIOLIN2_FILES)

############################################################

viola: k581-viola.ps $(VIOLA_FILES)

k581-viola.ps: $(VIOLA_FILES)

############################################################

cello: k581-cello.ps $(CELLO_FILES)

k581-cello.ps: $(CELLO_FILES)

############################################################

score: k581-score.ps

k581-score.ps: $(CLARINET_FILES) $(VIOLIN1_FILES) $(VIOLIN2_FILES) $(VIOLA_FILES) $(CELLO_FILES)

