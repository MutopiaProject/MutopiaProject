
all: spring ;


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



spring-score.ps : spring-score.ly spring-sonnet.ly spring1.ly spring2.ly spring3.ly spring1a.ly spring2a.ly spring3a.ly spring1b.ly spring2b.ly spring3b.ly spring1c.ly spring2c.ly spring3c.ly spring1d.ly spring2d.ly spring3d.ly figured-accidentals.ly
	ly2dvi -P spring-score.ly
	-rm -f spring-score.dvi

spring-solo.ps : spring-solo.ly spring-sonnet.ly spring1.ly spring2.ly spring3.ly
	ly2dvi -P spring-solo.ly
	-rm -f spring-solo.dvi

spring-violin1.ps : spring-violin1.ly spring1a.ly spring2a.ly spring3a.ly
	ly2dvi -P spring-violin1.ly
	-rm -f spring-violin1.dvi

spring-violin2.ps : spring-violin2.ly spring1b.ly spring2b.ly spring3b.ly
	ly2dvi -P spring-violin2.ly
	-rm -f spring-violin2.dvi

spring-viola.ps : spring-viola.ly spring1c.ly spring2c.ly spring3c.ly
	ly2dvi -P spring-viola.ly
	-rm -f spring-viola.dvi

spring-cello.ps : spring-cello.ly spring1d.ly spring2d.ly spring3d.ly figured-accidentals.ly
	ly2dvi -P spring-cello.ly
	-rm -f spring-cello.dvi



spring:	score parts ;

score: spring-score.ps ;

parts: spring-solo.ps spring-violin1.ps spring-violin2.ps spring-viola.ps spring-cello.ps  ;


clean:
	rm -f *.ps *.dvi *.midi *-solo.ly *-violin1.ly *-violin2.ly *-viola.ly *-cello.ly
