
all: autumn ;


# Lilypond doesn't have conditional compilation,
# so I'm using sed to filter the score file for parts
%-solo.ly : %-score.ly
	sed -ne'/% *part=[^s]/,/% *end/!p' $< > $@

%-violin1.ly : %-score.ly
	sed -ne'/% *part=[^1]/,/% *end/!p' $< > $@

%-violin2.ly : %-score.ly
	sed -ne'/% *part=[^2]/,/% *end/!p' $< > $@

%-viola.ly : %-score.ly
	sed -ne'/% *part=[^v]/,/% *end/!p' $< > $@

%-cello.ly : %-score.ly
	sed -ne'/% *part=[^c]/,/% *end/!p' $< > $@



autumn-score.pdf : autumn-score.ly autumn-sonnet.ly autumn1.ly autumn2.ly autumn3.ly autumn1a.ly autumn2a.ly autumn3a.ly autumn1b.ly autumn2b.ly autumn3b.ly autumn1c.ly autumn2c.ly autumn3c.ly autumn1d.ly autumn2d.ly autumn3d.ly autumn1f.ly autumn2f.ly autumn3f.ly
	lilypond --pdf autumn-score.ly

autumn-solo.pdf : autumn-solo.ly autumn-sonnet.ly autumn1.ly autumn2.ly autumn3.ly
	lilypond --pdf autumn-solo.ly

autumn-violin1.pdf : autumn-violin1.ly autumn1a.ly autumn2a.ly autumn3a.ly
	lilypond --pdf autumn-violin1.ly

autumn-violin2.pdf : autumn-violin2.ly autumn1b.ly autumn2b.ly autumn3b.ly
	lilypond --pdf autumn-violin2.ly

autumn-viola.pdf : autumn-viola.ly autumn1c.ly autumn2c.ly autumn3c.ly
	lilypond --pdf autumn-viola.ly

autumn-cello.pdf : autumn-cello.ly autumn1d.ly autumn2d.ly autumn3d.ly autumn1f.ly autumn2f.ly autumn3f.ly
	lilypond --pdf autumn-cello.ly



autumn:	score parts ;

score: autumn-score.pdf ;

parts: solo violin1 violin2 viola cello

solo: autumn-solo.pdf 

violin1: autumn-violin1.pdf 

violin2: autumn-violin2.pdf 

viola: autumn-viola.pdf 

cello: autumn-cello.pdf 




clean:
	rm -f *.ps *.dvi *.midi *-solo.ly *-violin1.ly *-violin2.ly *-viola.ly *-cello.ly

zip: autumn
	zip autumn-lys.zip autumn1a.ly autumn1b.ly autumn1c.ly autumn1d.ly autumn1f.ly autumn1.ly autumn2a.ly autumn2b.ly autumn2c.ly autumn2d.ly autumn2f.ly autumn2.ly autumn3a.ly autumn3b.ly autumn3c.ly autumn3d.ly autumn3f.ly autumn3.ly autumn-cello.ly autumn-header.ly autumn-score.ly autumn-solo.ly autumn-sonnet.ly autumn-viola.ly autumn-violin1.ly autumn-violin2.ly Makefile
