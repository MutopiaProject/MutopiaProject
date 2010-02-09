
all: summer ;


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


summer-score.pdf : summer-score.ly summer-sonnet.ly summer1.ly summer2.ly summer3.ly summer1a.ly summer2a.ly summer3a.ly summer1b.ly summer2b.ly summer3b.ly summer1c.ly summer2c.ly summer3c.ly summer1d.ly summer2d.ly summer3d.ly summer1f.ly summer3f.ly
	lilypond --pdf summer-score.ly

summer-solo.pdf : summer-solo.ly summer-sonnet.ly summer1.ly summer2.ly summer3.ly
	lilypond --pdf summer-solo.ly

summer-violin1.pdf : summer-violin1.ly summer1a.ly summer2a.ly summer3a.ly
	lilypond --pdf summer-violin1.ly

summer-violin2.pdf : summer-violin2.ly summer1b.ly summer2b.ly summer3b.ly
	lilypond --pdf summer-violin2.ly

summer-viola.pdf : summer-viola.ly summer1c.ly summer2c.ly summer3c.ly
	lilypond --pdf summer-viola.ly

summer-cello.pdf : summer-cello.ly summer1d.ly summer2d.ly summer3d.ly summer1f.ly summer3f.ly
	lilypond --pdf summer-cello.ly


summer:	score parts ;

score: summer-score.pdf ;

parts: solo violin1 violin2 viola cello

solo: summer-solo.pdf 

violin1: summer-violin1.pdf 

violin2: summer-violin2.pdf 

viola: summer-viola.pdf 

cello: summer-cello.pdf 


clean:
	rm -f *.ps *.dvi *.midi *-solo.ly *-violin1.ly *-violin2.ly *-viola.ly *-cello.ly

zip: summer
	zip summer-lys.zip summer1a.ly summer1b.ly summer1c.ly summer1d.ly summer1f.ly summer1.ly summer2a.ly summer2b.ly summer2c.ly summer2d.ly summer2.ly summer3a.ly summer3b.ly summer3c.ly summer3d.ly summer3f.ly summer3.ly summer-cello.ly summer-header.ly summer-score.ly summer-solo.ly summer-sonnet.ly summer-viola.ly summer-violin1.ly summer-violin2.ly Makefile
