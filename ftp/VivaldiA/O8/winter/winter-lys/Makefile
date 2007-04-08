
all: winter ;


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


winter-score.ps : winter-score.ly winter-sonnet.ly winter1.ly winter2.ly winter3.ly winter1a.ly winter2a.ly winter3a.ly winter1b.ly winter2b.ly winter3b.ly winter1c.ly winter2c.ly winter3c.ly winter1d.ly winter2d.ly winter3d.ly figured-accidentals.ly
	ly2dvi -P winter-score.ly
	-rm -f winter-score.dvi

winter-solo.ps : winter-solo.ly winter-sonnet.ly winter1.ly winter2.ly winter3.ly
	ly2dvi -P winter-solo.ly
	-rm -f winter-solo.dvi

winter-violin1.ps : winter-violin1.ly winter1a.ly winter2a.ly winter3a.ly
	ly2dvi -P winter-violin1.ly
	-rm -f winter-violin1.dvi

winter-violin2.ps : winter-violin2.ly winter1b.ly winter2b.ly winter3b.ly
	ly2dvi -P winter-violin2.ly
	-rm -f winter-violin2.dvi

winter-viola.ps : winter-viola.ly winter1c.ly winter2c.ly winter3c.ly
	ly2dvi -P winter-viola.ly
	-rm -f winter-viola.dvi

winter-cello.ps : winter-cello.ly winter1d.ly winter2d.ly winter3d.ly figured-accidentals.ly
	ly2dvi -P winter-cello.ly
	-rm -f winter-cello.dvi



winter:	score parts ;

score: winter-score.ps ;

parts: winter-solo.ps winter-violin1.ps winter-violin2.ps winter-viola.ps winter-cello.ps  ;


clean:
	rm -f *.ps *.dvi *.midi *-solo.ly *-violin1.ly *-violin2.ly *-viola.ly *-cello.ly
