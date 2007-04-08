COMMON_FILES = header.ly k401-voices.ly

.phony: all

all: k401-two-hands.ps k401-four-hands.ps \
k401-four-hands1.ps k401-four-hands2.ps

k401-two-hands.ps: k401-two-hands.ly $(COMMON_FILES)
	lilypond $<

k401-four-hands.ps: k401-four-hands.ly $(COMMON_FILES)
	lilypond $<

k401-four-hands1.ps: k401-four-hands1.ly $(COMMON_FILES) k401-breaks.ly
	lilypond $<

k401-four-hands2.ps: k401-four-hands2.ly $(COMMON_FILES) k401-breaks.ly
	lilypond $<
