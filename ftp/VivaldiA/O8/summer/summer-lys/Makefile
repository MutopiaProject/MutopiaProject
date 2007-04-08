
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


summer-score.ps : summer-score.ly summer-sonnet.ly summer1.ly summer2.ly summer3.ly summer1a.ly summer2a.ly summer3a.ly summer1b.ly summer2b.ly summer3b.ly summer1c.ly summer2c.ly summer3c.ly summer1d.ly summer2d.ly summer3d.ly figured-accidentals.ly
	ly2dvi -P summer-score.ly
	-rm -f summer-score.dvi

summer-solo.ps : summer-solo.ly summer-sonnet.ly summer1.ly summer2.ly summer3.ly
	ly2dvi -P summer-solo.ly
	-rm -f summer-solo.dvi

summer-violin1.ps : summer-violin1.ly summer1a.ly summer2a.ly summer3a.ly
	ly2dvi -P summer-violin1.ly
	-rm -f summer-violin1.dvi

summer-violin2.ps : summer-violin2.ly summer1b.ly summer2b.ly summer3b.ly
	ly2dvi -P summer-violin2.ly
	-rm -f summer-violin2.dvi

summer-viola.ps : summer-viola.ly summer1c.ly summer2c.ly summer3c.ly
	ly2dvi -P summer-viola.ly
	-rm -f summer-viola.dvi

summer-cello.ps : summer-cello.ly summer1d.ly summer2d.ly summer3d.ly figured-accidentals.ly
	ly2dvi -P summer-cello.ly
	-rm -f summer-cello.dvi


summer:	score parts ;

score: summer-score.ps ;

parts: summer-solo.ps summer-violin1.ps summer-violin2.ps summer-viola.ps summer-cello.ps  ;


clean:
	rm -f *.ps *.dvi *.midi *-solo.ly *-violin1.ly *-violin2.ly *-viola.ly *-cello.ly
