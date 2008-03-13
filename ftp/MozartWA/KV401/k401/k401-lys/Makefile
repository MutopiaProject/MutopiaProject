COMMON_FILES = header.ly k401-voices.ly

.phony: all clean

all: k401-two-hands.pdf k401-four-hands.pdf \
k401-four-hands1.pdf k401-four-hands2.pdf

clean:
	rm -f *.midi *.pdf *.ps

k401-two-hands.pdf: k401-two-hands.ly $(COMMON_FILES)
	lilypond $<

k401-four-hands.pdf: k401-four-hands.ly $(COMMON_FILES)
	lilypond $<

k401-four-hands1.pdf: k401-four-hands1.ly $(COMMON_FILES) k401-breaks.ly
	lilypond $<

k401-four-hands2.pdf: k401-four-hands2.ly $(COMMON_FILES) k401-breaks.ly
	lilypond $<
