
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



autumn-score.ps : autumn-score.ly autumn-sonnet.ly autumn1.ly autumn2.ly autumn3.ly autumn1a.ly autumn2a.ly autumn3a.ly autumn1b.ly autumn2b.ly autumn3b.ly autumn1c.ly autumn2c.ly autumn3c.ly autumn1d.ly autumn2d.ly autumn3d.ly figured-accidentals.ly
	ly2dvi -P autumn-score.ly
	-rm -f autumn-score.dvi

autumn-solo.ps : autumn-solo.ly autumn-sonnet.ly autumn1.ly autumn2.ly autumn3.ly
	ly2dvi -P autumn-solo.ly
	-rm -f autumn-solo.dvi

autumn-violin1.ps : autumn-violin1.ly autumn1a.ly autumn2a.ly autumn3a.ly
	ly2dvi -P autumn-violin1.ly
	-rm -f autumn-violin1.dvi

autumn-violin2.ps : autumn-violin2.ly autumn1b.ly autumn2b.ly autumn3b.ly
	ly2dvi -P autumn-violin2.ly
	-rm -f autumn-violin2.dvi

autumn-viola.ps : autumn-viola.ly autumn1c.ly autumn2c.ly autumn3c.ly
	ly2dvi -P autumn-viola.ly
	-rm -f autumn-viola.dvi

autumn-cello.ps : autumn-cello.ly autumn1d.ly autumn2d.ly autumn3d.ly figured-accidentals.ly
	ly2dvi -P autumn-cello.ly
	-rm -f autumn-cello.dvi



autumn:	score parts ;

score: autumn-score.ps ;

parts: autumn-solo.ps autumn-violin1.ps autumn-violin2.ps autumn-viola.ps autumn-cello.ps  ;


clean:
	rm -f *.ps *.dvi *.midi *-solo.ly *-violin1.ly *-violin2.ly *-viola.ly *-cello.ly
