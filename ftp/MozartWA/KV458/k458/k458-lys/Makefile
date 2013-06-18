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

%.pdf : %.ly
	lilypond $<

############################################################

violin1: k458-violin1.pdf

k458-violin1.pdf: k458-violin1.ly $(VIOLIN1_FILES)

############################################################

violin2: k458-violin2.pdf

k458-violin2.pdf: k458-violin2.ly $(VIOLIN2_FILES)

############################################################

viola: k458-viola.pdf

k458-viola.pdf: k458-viola.ly $(VIOLA_FILES)

############################################################

cello: k458-cello.pdf

k458-cello.pdf: k458-cello.ly $(CELLO_FILES)

############################################################

score: k458-score.pdf

k458-score.pdf: k458-score.ly $(VIOLIN1_FILES) $(VIOLIN2_FILES) $(VIOLA_FILES) $(CELLO_FILES)
