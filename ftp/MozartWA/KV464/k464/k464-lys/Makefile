COMMON_FILES = defs.ly
VIOLIN1_FILES = $(COMMON_FILES) violin1-i.ly violin1-ii.ly	\
violin1-iii.ly violin1-iv.ly
VIOLIN2_FILES = $(COMMON_FILES) violin2-i.ly violin2-ii.ly	\
violin2-iii.ly violin2-iv.ly
VIOLA_FILES = $(COMMON_FILES) viola-i.ly viola-ii.ly viola-iii.ly	\
viola-iv.ly
CELLO_FILES = $(COMMON_FILES) cello-i.ly cello-ii.ly cello-iii.ly	\
cello-iv.ly


.PHONY: all help score violin1 violin2 viola cello

all: score violin1 violin2 viola cello

help:
	@echo "Usage: make [TARGET]"
	@echo "  where TARGET is one of the following:"
	@echo "  all help violin1 violin2 viola cello score"
	@echo ""
	@echo "Warning: you must have GNU m4 installed"

%.ps : %.ly
	ly2dvi -P -o $@ $<

############################################################

violin1: k464-violin1.ps

k464-violin1.ly: k464-violin1.ly.m4 $(VIOLIN1_FILES)
	m4 -DSOLO=1 $< > $@

############################################################

violin2: k464-violin2.ps

k464-violin2.ly: k464-violin2.ly.m4 $(VIOLIN2_FILES)
	m4 -DSOLO=1 $< > $@

############################################################

viola: k464-viola.ps

k464-viola.ly: k464-viola.ly.m4 $(VIOLA_FILES)
	m4 -DSOLO=1 $< > $@

############################################################

cello: k464-cello.ps

k464-cello.ly: k464-cello.ly.m4 $(CELLO_FILES)
	m4 -DSOLO=1 $< > $@

############################################################

score: k464-score.ps

k464-score.ly: k464-score.ly.m4 $(VIOLIN1_FILES) $(VIOLIN2_FILES) $(VIOLA_FILES) $(CELLO_FILES)
	m4 $< > $@
