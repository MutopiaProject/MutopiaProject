# Makefile for the score of Mozart's "Kegelstatt" Trio KV.~498
# for clarinet, viola and piano.
#
# This score has been placed under a Public Domain License on
# www.mutopiaproject.org
#
# Maurizio Tomasi, 2002

COMMON_FILES = defs.ly
CLARINET_FILES = $(COMMON_FILES) clarinet-i.ly \
	clarinet-ii.ly clarinet-iii.ly
VIOLA_FILES = $(COMMON_FILES) viola-i.ly viola-ii.ly \
	viola-iii.ly
PIANO_FILES = $(COMMON_FILES) piano-dynamics.ly \
	piano-right-i.ly piano-left-i.ly \
	piano-right-ii.ly piano-left-ii.ly \
	piano-right-iii.ly piano-left-iii.ly

.PHONY: help all clarinet violin viola piano-solo piano

help:
	@echo "Usage: make [TARGET]"
	@echo "where TARGET can be one of the following:"
	@echo "    help       This help"
	@echo "    all        Make the piano, violin, viola, clarinet and piano solo part"
	@echo "    clarinet   Create k498-clarinet.pdf (solo clarinet part)"
	@echo "    violin     Create k498-violin.pdf (solo clarinet part transposed for violin)"
	@echo "    viola      Create k498-viola.pdf (solo viola part)"
	@echo "    piano-solo Create k498-piano-solo.pdf (solo piano part)"
	@echo "    piano      Create k498-piano.pdf (complete score)"

all: clarinet violin viola piano-solo piano

clarinet: k498-clarinet.pdf

violin: k498-violin.pdf

viola: k498-viola.pdf

piano-solo: k498-piano-solo.pdf

piano: k498-piano.pdf

%.pdf : %.ly
	lilypond $<

k498-clarinet.pdf: k498-clarinet.ly $(CLARINET_FILES)

k498-violin.pdf: k498-violin.ly $(CLARINET_FILES)

k498-viola.pdf: k498-viola.ly $(VIOLA_FILES)

k498-piano-solo.pdf: k498-piano-solo.ly $(PIANO_FILES)

k498-piano.pdf: k498-piano.ly $(CLARINET_FILES) \
	 $(VIOLA_FILES) $(PIANO_FILES)
