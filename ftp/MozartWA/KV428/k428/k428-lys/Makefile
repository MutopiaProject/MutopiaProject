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

violin1: k428-violin1.ps

k428-violin1.ps: k428-violin1.ly $(VIOLIN1_FILES)
	ly2dvi -P k428-violin1.ly


violin2: k428-violin2.ps

k428-violin2.ps: k428-violin2.ly $(VIOLIN2_FILES)
	ly2dvi -P k428-violin2.ly


viola: k428-viola.ps

k428-viola.ps: k428-viola.ly $(VIOLA_FILES)
	ly2dvi -P k428-viola.ly


cello: k428-cello.ps

k428-cello.ps: k428-cello.ly $(CELLO_FILES)
	ly2dvi -P k428-cello.ly


score: k428-score.ps

k428-score.ps: k428-score.ly $(VIOLIN1_FILES) $(VIOLIN2_FILES) $(VIOLA_FILES) $(CELLO_FILES)

	ly2dvi -P k428-score.ly
