
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



spring-score.pdf : spring-score.ly spring-sonnet.ly spring1.ly spring2.ly spring3.ly spring1a.ly spring2a.ly spring3a.ly spring1b.ly spring2b.ly spring3b.ly spring1c.ly spring2c.ly spring3c.ly spring1d.ly spring2d.ly spring3d.ly spring1f.ly spring3f.ly spring-header.ly
	lilypond --pdf spring-score.ly

spring-solo.pdf : spring-solo.ly spring-sonnet.ly spring1.ly spring2.ly spring3.ly
	lilypond --pdf spring-solo.ly

spring-violin1.pdf : spring-violin1.ly spring1a.ly spring2a.ly spring3a.ly
	lilypond --pdf spring-violin1.ly

spring-violin2.pdf : spring-violin2.ly spring1b.ly spring2b.ly spring3b.ly
	lilypond --pdf spring-violin2.ly

spring-viola.pdf : spring-viola.ly spring1c.ly spring2c.ly spring3c.ly
	lilypond --pdf spring-viola.ly

spring-cello.pdf : spring-cello.ly spring1d.ly spring2d.ly spring3d.ly spring1f.ly spring3f.ly
	lilypond --pdf spring-cello.ly



spring:	score parts

score: spring-score.pdf

parts: solo violin1 violin2 viola cello

solo: spring-solo.pdf 

violin1: spring-violin1.pdf 

violin2: spring-violin2.pdf 

viola: spring-viola.pdf 

cello: spring-cello.pdf 



clean:
	rm -f *.ps *.dvi *.midi *-solo.ly *-violin1.ly *-violin2.ly *-viola.ly *-cello.ly

mutopia: spring
	zip spring-lys.zip spring1a.ly spring1b.ly spring1c.ly spring1d.ly spring1f.ly spring1.ly spring2a.ly spring2b.ly spring2c.ly spring2d.ly spring2.ly spring3a.ly spring3b.ly spring3c.ly spring3d.ly spring3f.ly spring3.ly spring-cello.ly spring-header.ly spring-score.ly spring-solo.ly spring-sonnet.ly spring-viola.ly spring-violin1.ly spring-violin2.ly Makefile
