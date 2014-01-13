COMMON_FILES = defs.ly
HORN1_FILES = $(COMMON_FILES) horn1-i.ly horn1-ii.ly horn1-iii.ly horn1-iv.ly
HORN2_FILES = $(COMMON_FILES) horn2-i.ly horn2-ii.ly horn2-iii.ly horn2-iv.ly
HORN3_FILES = $(COMMON_FILES) horn3-i.ly  horn3-ii.ly horn3-iii.ly horn3-iv.ly
HORN4_FILES = $(COMMON_FILES) horn4-i.ly horn4-ii.ly horn4-iii.ly horn4-iv.ly
FLUTE1_FILES = $(COMMON_FILES) flute1-i.ly flute1-ii.ly flute1-iii.ly	\
flute1-iv.ly
FLUTE2_FILES = $(COMMON_FILES) flute2-i.ly flute2-ii.ly flute2-iii.ly	\
flute2-iv.ly
VIOLIN1_FILES = $(COMMON_FILES) violin1-i.ly violin1-ii.ly	\
violin1-iii.ly violin1-iv.ly
VIOLIN2_FILES = $(COMMON_FILES) violin2-i.ly violin2-ii.ly	\
violin2-iii.ly violin2-iv.ly
VIOLA_FILES = $(COMMON_FILES) viola-i.ly viola-ii.ly viola-iii.ly viola-iv.ly
BASSO_FILES = $(COMMON_FILES) basso-i.ly basso-ii.ly basso-iii.ly basso-iv.ly

.PHONY: all help score violin1 violin2 viola basso flute1 flute2 horn1 horn2 horn3 horn4

all: score violin1 violin2 viola basso flute1 flute2 horn1 horn2 horn3 horn4

help:
	@echo "Usage: make [TARGET]"
	@echo "  where TARGET is one of the following:"
	@echo ""
	@echo "  all help score horn1 horn2 horn3 horn4"
	@echo "  flute1 flute2 violin1 violin2 viola basso"

%.pdf : %.ly
	lilypond -o $(patsubst %.pdf,%,$@) $< 

############################################################

flute1: k130-flute1.pdf

k130-flute1.pdf: k130-flute1.ly $(FLUTE1_FILES)

############################################################

flute2: k130-flute2.pdf

k130-flute2.pdf: k130-flute2.ly $(FLUTE2_FILES)

############################################################

horn1: k130-horn1.pdf

k130-horn1.pdf: k130-horn1.ly $(HORN1_FILES)

############################################################

horn2: k130-horn2.pdf

k130-horn2.pdf: k130-horn2.ly $(HORN2_FILES)

############################################################

horn3: k130-horn3.pdf

k130-horn3.pdf: k130-horn3.ly $(HORN3_FILES)

############################################################

horn4: k130-horn4.pdf

k130-horn4.pdf: k130-horn4.ly $(HORN4_FILES)

############################################################

flute: k130-flute.pdf

k130-flute.pdf: k130-flute.ly $(FLUTE_FILES)

############################################################

violin1: k130-violin1.pdf

k130-violin1.pdf: k130-violin1.ly $(VIOLIN1_FILES)

############################################################

violin2: k130-violin2.pdf

k130-violin2.pdf: k130-violin2.ly $(VIOLIN2_FILES)

############################################################

viola: k130-viola.pdf

k130-viola.pdf: k130-viola.ly $(VIOLA_FILES)

############################################################

basso: k130-basso.pdf

k130-basso.pdf: k130-basso.ly $(BASSO_FILES)

############################################################

score: k130-score.pdf

k130-score.pdf: k130-score.ly $(FLUTES_FILES) $(HORN1_FILES) $(HORN2_FILES) $(HORN3_FILES) $(HORN4_FILES) $(VIOLIN1_FILES) $(VIOLIN2_FILES) $(VIOLA_FILES) $(BASSO_FILES)


clean:
	rm -f *.midi *.pdf
