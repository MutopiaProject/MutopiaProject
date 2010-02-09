
all: winter ;


# Lilypond doesn't have conditional compilation,
# so I'm using sed to filter the score file for parts
winter-solo.ly : winter-score.ly
	sed -ne'/% *part=[^s]/,/% *end/!p' $< > $@

winter-violin1.ly : winter-score.ly
	sed -ne'/% *part=[^1]/,/% *end/!p' $< > $@

winter-violin2.ly : winter-score.ly
	sed -ne'/% *part=[^2]/,/% *end/!p' $< > $@

winter-viola.ly : winter-score.ly
	sed -ne'/% *part=[^v]/,/% *end/!p' $< > $@

winter-cello.ly : winter-score.ly
	sed -ne'/% *part=[^c]/,/% *end/!p' $< > $@


winter-score.pdf : winter-score.ly winter-sonnet.ly winter1.ly winter2.ly winter3.ly winter1a.ly winter2a.ly winter3a.ly winter1b.ly winter2b.ly winter3b.ly winter1c.ly winter2c.ly winter3c.ly winter1d.ly winter2d.ly winter3d.ly winter1f.ly winter2f.ly winter3f.ly
	lilypond --pdf winter-score.ly

winter-solo.pdf : winter-solo.ly winter-sonnet.ly winter1.ly winter2.ly winter3.ly
	lilypond --pdf winter-solo.ly

winter-violin1.pdf : winter-violin1.ly winter1a.ly winter2a.ly winter3a.ly
	lilypond --pdf winter-violin1.ly

winter-violin2.pdf : winter-violin2.ly winter1b.ly winter2b.ly winter3b.ly
	lilypond --pdf winter-violin2.ly

winter-viola.pdf : winter-viola.ly winter1c.ly winter2c.ly winter3c.ly
	lilypond --pdf winter-viola.ly

winter-cello.pdf : winter-cello.ly winter1d.ly winter2d.ly winter3d.ly winter1f.ly winter2f.ly winter3f.ly
	lilypond --pdf winter-cello.ly



winter:	score parts ;

score: winter-score.pdf ;

parts: solo violin1 violin2 viola cello

solo: winter-solo.pdf 

violin1: winter-violin1.pdf 

violin2: winter-violin2.pdf 

viola: winter-viola.pdf 

cello: winter-cello.pdf 



clean:
	rm -f *.ps *.dvi *.midi *-solo.ly *-violin1.ly *-violin2.ly *-viola.ly *-cello.ly

zip: winter
	zip winter-lys.zip winter1a.ly winter1b.ly winter1c.ly winter1d.ly winter1f.ly winter1.ly winter2a.ly winter2b.ly winter2c.ly winter2d.ly winter2f.ly winter2.ly winter3a.ly winter3b.ly winter3c.ly winter3d.ly winter3f.ly winter3.ly winter-cello.ly winter-header.ly winter-score.ly winter-solo.ly winter-sonnet.ly winter-viola.ly winter-violin1.ly winter-violin2.ly Makefile
