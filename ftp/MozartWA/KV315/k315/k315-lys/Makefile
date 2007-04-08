COMMON_FILES = defs.ly
OBOE1_FILES = $(COMMON_FILES) oboe1.ly
OBOE2_FILES = $(COMMON_FILES) oboe2.ly
OBOI_FILES = $(COMMON_FILES) oboi.ly
HORN1_FILES = $(COMMON_FILES) horn1.ly
HORN2_FILES = $(COMMON_FILES) horn2.ly
HORNS_FILES = $(COMMON_FILES) horns.ly
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

%.ps : %.ly
	ly2dvi -P -o $@ $<

############################################################

oboe1: k315-oboe1.ps

k315-oboe1.ps: k315-oboe1.ly $(OBOE1_FILES)

############################################################

oboe2: k315-oboe2.ps

k315-oboe2.ps: k315-oboe2.ly $(OBOE2_FILES)

############################################################

horn1: k315-horn1.ps

k315-horn1.ps: k315-horn1.ly $(HORN1_FILES)

############################################################

horn2: k315-horn2.ps

k315-horn2.ps: k315-horn2.ly $(HORN2_FILES)

############################################################

flute: k315-flute.ps

k315-flute.ps: k315-flute.ly $(FLUTE_FILES)

############################################################

violin1: k315-violin1.ps

k315-violin1.ps: k315-violin1.ly $(VIOLIN1_FILES)

############################################################

violin2: k315-violin2.ps

k315-violin2.ps: k315-violin2.ly $(VIOLIN2_FILES)

############################################################

viola: k315-viola.ps

k315-viola.ps: k315-viola.ly $(VIOLA_FILES)

############################################################

basso: k315-basso.ps

k315-basso.ps: k315-basso.ly $(BASSO_FILES)

############################################################

score: k315-score.ps

k315-score.ps: k315-score.ly $(OBOI_FILES) $(HORNS_FILES) $(FLUTE_FILES) $(VIOLIN1_FILES) $(VIOLIN2_FILES) $(VIOLA_FILES) $(BASSO_FILES)
