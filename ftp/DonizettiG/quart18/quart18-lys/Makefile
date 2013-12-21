COMMON_FILES = defs.ily edited.ily autograph.ily
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

%-edited.pdf : %.ly
	lilypond -o ${@:.pdf=} $<

%-autograph.pdf : %.ly
	lilypond -dautograph -o ${@:.pdf=} $<

############################################################

violin1: quart18-violin1-edited.pdf quart18-violin1-autograph.pdf

quart18-violin1-edited.pdf: quart18-violin1.ly $(VIOLIN1_FILES)
quart18-violin1-autograph.pdf: quart18-violin1.ly $(VIOLIN1_FILES)

############################################################

violin2: quart18-violin2-edited.pdf quart18-violin2-autograph.pdf

quart18-violin2-edited.pdf: quart18-violin2.ly $(VIOLIN2_FILES)
quart18-violin2-autograph.pdf: quart18-violin2.ly $(VIOLIN2_FILES)

############################################################

viola: quart18-viola-edited.pdf quart18-viola-autograph.pdf

quart18-viola-edited.pdf: quart18-viola.ly $(VIOLA_FILES)
quart18-viola-autograph.pdf: quart18-viola.ly $(VIOLA_FILES)

############################################################

cello: quart18-cello-edited.pdf quart18-cello-autograph.pdf

quart18-cello-edited.pdf: quart18-cello.ly $(CELLO_FILES)
quart18-cello-autograph.pdf: quart18-cello.ly $(CELLO_FILES)

############################################################

score: quart18-score-edited.pdf quart18-score-autograph.pdf

quart18-score-edited.pdf: quart18-score.ly $(VIOLIN1_FILES) $(VIOLIN2_FILES) $(VIOLA_FILES) $(CELLO_FILES)
quart18-score-autograph.pdf: quart18-score.ly $(VIOLIN1_FILES) $(VIOLIN2_FILES) $(VIOLA_FILES) $(CELLO_FILES)
