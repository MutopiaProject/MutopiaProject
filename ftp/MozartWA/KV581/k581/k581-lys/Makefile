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

%.pdf : %.ly
	lilypond $<

############################################################

clarinet: k581-clarinet.pdf

k581-clarinet.pdf: $(CLARINET_FILES)

############################################################

violin1: k581-violin1.pdf $(VIOLIN1_FILES)

k581-violin1.pdf: $(VIOLIN1_FILES)

############################################################

violin2: k581-violin2.pdf $(VIOLIN2_FILES)

k581-violin2.pdf: $(VIOLIN2_FILES)

############################################################

viola: k581-viola.pdf $(VIOLA_FILES)

k581-viola.pdf: $(VIOLA_FILES)

############################################################

cello: k581-cello.pdf $(CELLO_FILES)

k581-cello.pdf: $(CELLO_FILES)

############################################################

score: k581-score.pdf

k581-score.pdf: $(CLARINET_FILES) $(VIOLIN1_FILES) $(VIOLIN2_FILES) $(VIOLA_FILES) $(CELLO_FILES)

