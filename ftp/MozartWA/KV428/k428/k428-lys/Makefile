COMMON_FILES = defs.ily
VIOLIN1_FILES = $(COMMON_FILES) violin1-i.ily violin1-ii.ily	\
violin1-iii.ily violin1-iv.ily
VIOLIN2_FILES = $(COMMON_FILES) violin2-i.ily violin2-ii.ily	\
violin2-iii.ily violin2-iv.ily
VIOLA_FILES = $(COMMON_FILES) viola-i.ily viola-ii.ily viola-iii.ily	\
viola-iv.ily
CELLO_FILES = $(COMMON_FILES) cello-i.ily cello-ii.ily cello-iii.ily	\
cello-iv.ily


.PHONY: all help score violin1 violin2 viola cello

all: score violin1 violin2 viola cello

help:
	@echo "Usage: make [TARGET]"
	@echo "  where TARGET is one of the following:"
	@echo "  all help violin1 violin2 viola cello score"

%.pdf: %.ly
	lilypond $<

violin1: k428-violin1.pdf

k428-violin1.pdf: k428-violin1.ly $(VIOLIN1_FILES)


violin2: k428-violin2.pdf

k428-violin2.pdf: k428-violin2.ly $(VIOLIN2_FILES)


viola: k428-viola.pdf

k428-viola.pdf: k428-viola.ly $(VIOLA_FILES)


cello: k428-cello.pdf

k428-cello.pdf: k428-cello.ly $(CELLO_FILES)


score: k428-score.pdf

k428-score.pdf: k428-score.ly $(VIOLIN1_FILES) $(VIOLIN2_FILES) $(VIOLA_FILES) $(CELLO_FILES)
