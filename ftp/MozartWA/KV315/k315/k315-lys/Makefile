COMMON_FILES = defs.ly
OBOE1_FILES = $(COMMON_FILES) oboe1.ly
OBOE2_FILES = $(COMMON_FILES) oboe2.ly
HORN1_FILES = $(COMMON_FILES) horn1.ly
HORN2_FILES = $(COMMON_FILES) horn2.ly
FLUTE_FILES = $(COMMON_FILES) flute.ly
VIOLIN1_FILES = $(COMMON_FILES) violin1.ly
VIOLIN2_FILES = $(COMMON_FILES) violin2.ly
VIOLA_FILES = $(COMMON_FILES) viola.ly
BASSO_FILES = $(COMMON_FILES) basso.ly

.PHONY: all help score violin1 violin2 viola basso oboe1 oboe2 horn1 horn2 flute

#all: score violin1 violin2 viola basso oboe1 oboe2 horn1 horn2 flute
all: score

help:
	@echo "Usage: make [TARGET]"
	@echo "  where TARGET is one of the following:"
	@echo ""
	@echo "  all help score oboe1 oboe2 horn1 horn2"
	@echo "  flute violin1 violin2 viola basso"

%.pdf : %.ly
	lilypond $<

############################################################

oboe1: k315-oboe1.pdf

k315-oboe1.pdf: k315-oboe1.ly $(OBOE1_FILES)

############################################################

oboe2: k315-oboe2.pdf

k315-oboe2.pdf: k315-oboe2.ly $(OBOE2_FILES)

############################################################

horn1: k315-horn1.pdf

k315-horn1.pdf: k315-horn1.ly $(HORN1_FILES)

############################################################

horn2: k315-horn2.pdf

k315-horn2.pdf: k315-horn2.ly $(HORN2_FILES)

############################################################

flute: k315-flute.pdf

k315-flute.pdf: k315-flute.ly $(FLUTE_FILES)

############################################################

violin1: k315-violin1.pdf

k315-violin1.pdf: k315-violin1.ly $(VIOLIN1_FILES)

############################################################

violin2: k315-violin2.pdf

k315-violin2.pdf: k315-violin2.ly $(VIOLIN2_FILES)

############################################################

viola: k315-viola.pdf

k315-viola.pdf: k315-viola.ly $(VIOLA_FILES)

############################################################

basso: k315-basso.pdf

k315-basso.pdf: k315-basso.ly $(BASSO_FILES)

############################################################

score: k315-score.pdf

k315-score.pdf: k315-score.ly $(OBOE1_FILES) $(OBOE2_FILES) $(HORN1_FILES) $(HORN2_FILES) $(FLUTE_FILES) $(VIOLIN1_FILES) $(VIOLIN2_FILES) $(VIOLA_FILES) $(BASSO_FILES)
