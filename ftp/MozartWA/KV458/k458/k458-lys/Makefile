COMMON_FILES = defs.ly
VIOLIN1_FILES = $(COMMON_FILES) violin1-i.ly violin1-ii.ly	\
violin1-iii.ly violin1-iv.ly
VIOLIN1SOLO_FILES = $(COMMON_FILES) violin1-i.ly violin1-ii-solo.ly	\
violin1-iii.ly violin1-iv.ly
VIOLIN2_FILES = $(COMMON_FILES) violin2-i.ly violin2-ii.ly	\
violin2-iii.ly violin2-iv.ly
VIOLA_FILES = $(COMMON_FILES) viola-i.ly viola-ii.ly viola-iii.ly	\
viola-iv.ly
CELLO_FILES = $(COMMON_FILES) cello-i.ly cello-ii.ly cello-iii.ly	\
cello-iv.ly
CELLOSOLO_FILES = $(COMMON_FILES) cello-i.ly cello-ii-solo.ly	\
cello-iii.ly cello-iv.ly


.PHONY: all help score violin1 violin2 viola cello

all: score violin1 violin2 viola cello

help:
	@echo "Usage: make [TARGET]"
	@echo "  where TARGET is one of the following:"
	@echo "  all help violin1 violin2 viola cello score"

violin1: k458-violin1.ps

k458-violin1.ps: k458-violin1.ly $(VIOLIN1SOLO_FILES)
	ly2dvi -P k458-violin1.ly


violin2: k458-violin2.ps

k458-violin2.ps: k458-violin2.ly $(VIOLIN2_FILES)
	ly2dvi -P k458-violin2.ly


viola: k458-viola.ps

k458-viola.ps: k458-viola.ly $(VIOLA_FILES)
	ly2dvi -P k458-viola.ly


cello: k458-cello.ps

k458-cello.ps: k458-cello.ly $(CELLOSOLO_FILES)
	ly2dvi -P k458-cello.ly


score: k458-score.ps

k458-score.ps: k458-score.ly $(VIOLIN1_FILES) $(VIOLIN2_FILES) $(VIOLA_FILES) $(CELLO_FILES)
	ly2dvi -P k458-score.ly
