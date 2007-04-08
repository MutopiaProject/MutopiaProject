\version "1.5.66"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%											   %
%		One source, Dover Publications (an unabridged republication of urtext      %	
%	originally published by C. F. Peters, n.d.) states "For legal reasons this title   % %	cannot be offered or sold in the Federal Republic of Germany and West Berlin." 	   %
%	Other urtext and other pieces (from late 1800's) consulted had no such             %
% 	disclaimer.  If you reside and/or are a citizen of Germany, please consult your    %	%	local laws before downloading or using this piece.  			  	   %
%		Please note that there are some problems with the original score (lots of  %	%	errors, poor printing, and omissions). I have corrected what I could find, but     %
%	most certainly missed some. Please let me know if you find any problems so that    %
%	I may update the file for everyone.						   %
%		Due to many requests from personal friends, I have included the whole	   %
%	score, the score broken down to the four movements, and all the individual 	   %	%	instrument parts. This increases the total zip size, but I included them all 	   %
%	because of the many requests for these formats. Karmically, Deborah		   %
%											   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


flautoI = \notes \relative c'' {
	\time 2/2
	\key ees \major
	\slurUp
	ees2\ff^#'( bold ( italic ( Large "Adagio."))) r4^\fermata r8. g16 
	g2 r4^\fermata r8. bes16
	bes2 r4^\fermata r4
	r1
	f2. r4
	r1
	g2. r4

	r1 r r r r r r r
\bar "||" }

flautoII = \notes \relative c'' {
	\time 2/2
	\key ees \major
	\slurDown
	ees2 r4 r8. ees16 
	ees2 r4 r8. ees16
	ees2 r4 r4
	r1
	ees2.\sfp r4
	r1
	des2.\sfp r4

	r1 r r r r r r r }

oboeI = \notes \relative c'' {
	\time 2/2
	\key ees \major
	\slurUp
	\stemUp
	ees2\ff r4^\fermata r8. g16 
	g2 r4^\fermata r8. bes16
	bes2 r4^\fermata r4
	r1
	f2. r4
	r1
	g2. r4

	r1 r r r r r
	r2 ges\p
	f1 }

oboeII = \notes \relative c'' {
	\time 2/2
	\key ees \major
	\slurDown
	\stemDown
	ees2 r4 r8. ees16 
	ees2 r4 r8. ees16
	ees2 r4 r4
	r1
	ees2.\sfp r4
	r1
	des2.\sfp r4
	r1 r r r r r
	r2 ees ~ ees d }

clarinettibI = \notes \relative c'' {
	\slurUp
	\stemUp
	\time 2/2

  	c2\ff r4^\fermata r8. f16 
	f2 r4^\fermata r8. f16
	f2 r4^\fermata r4
	r1
	d2.\sfp r4
	r1
	c2.\sfp r4
	r1 r r r r
	r4 c2\sfp r4
	r d2\sfp r4
	r1 }

clarinettibII = \notes \relative c'' {
  	\slurDown
	\stemDown
	\time 2/2
	a2 r4 r8. a16 
	a2 r4 r8. c16
	c2 r4 r4
	r1
	d2. r4
	r1
	c2. r4
	r1 r r r r
	r4 c2 r4
	r d2 r4
	r1 }

fagottoI = \notes \relative c {
	\slurUp
	\stemUp
	\time 2/2
	\key ees \major
	ees2\ff r4^\fermata r8. c'16 
	c2 r4^\fermata r8. g16
	g2 r4^\fermata r4
	aes,4..\p () c16 ees4.. () c16
	aes1\sfp 
	bes4.. () des16 g4.. () des16
	bes1\sfp

	c'4\p r8. c16 bes4 r8. bes16(
	)aes2 r4 bes ()
	c r8. c16 () bes4 r8. bes16( 
	)a2 r4 bes4
	c2 () ces
	bes r4 bes\sf ()
	a2\p r4 a ()
	bes r4 bes, r }

fagottoII = \notes \relative c {
	\slurDown
	\stemDown
	\time 2/2
	\key ees \major
	ees2 r4 r8. c'16 
	c2 r4 r8. g16
	g2 r4 r4
	aes,4.. c16 ees4.. c16
	aes1
	bes4.. des16 g4.. des16
	bes1

	c'4 r8. c16 bes4 r8. bes16 
	aes2 r4 bes 
	c r8. c16 bes4 r8. bes16
	a2 r4 bes4
	c2 ces
	bes r4 bes 
	a2 r4 a 
	bes r4 bes, r }

corniesI = \notes \relative c'' {
	\slurUp
	\stemUp
	\time 2/2
 	g2\ff r4^\fermata r8. c16
	c2 r4^\fermata r8. g16
	g2 r4^\fermata r
	r1
	c2.\sfp r4
	r1
	c2.\sfp r4
	r1 r r r r
	r4 g2\sfp r4
	r c2\sfp r4 
	r1 }

corniesII = \notes \relative c'' {
	\slurDown
	\stemDown
	\time 2/2
	c,2 r4 r8. e16
	e2 r4 r8. c16
	c2 r4 r
	r1
	c2. r4
	r1
	c2. r4
	r1 r r r r 
	r4 g'2 r4
	r c,2 r4 
	r1 }

trombeesI = \notes \relative c'' {
	\slurUp
	\stemUp
	\time 2/2
	g2\ff r4^\fermata r8. c16
	c2 r4^\fermata r8. g16
	g2 r4^\fermata r
	r1
	c2.\sfp r4
	r1
	c2.\sfp r4

	r1 r r r r r r r }

trombeesII = \notes \relative c'' {
	\slurUp
	\stemUp
	\time 2/2
	c,2 r4 r8. e16
	e2 r4 r8. c16
	c2 r4 r
	r1
	c2. r4
	r1
	c2. r4

	r1 r r r r r r r }

timpani =  \notes \relative c {
	\time 2/2
	e2\ff r4^\fermata r8. e16
	e2 r4^\fermata r8. e16
	e2 r4^\fermata r
	r1
	e4\f r r2
	r1
	e4\sf r r2
	
	r1 r r r r r r r }

trombonealto = \notes \relative c {
	\time 2/2
	\key ees \major
	g'2 r4 r8. ees'16
	ees2 r4 r8. ees16
	ees2 r4 r
	r1
	c2. r4
	r1
	des2. r4
	
	r1
	r4 ees ~ ees r
	r1
	r4 ees ~ ees r
	r1
	r4 d2 r4
	r c2 r4
	r ees r d }

trombonetenor = \notes \relative c {
	\time 2/2
	\key ees \major
	ees'2\ff r4^\fermata r8. g16
	g2 r4^\fermata r8. d'16
	d2 r4^\fermata r
	r1
	f,2.\sfp r4
	r1
	g2.\sfp r4
	
	r1
	r4 f-.\p ~ f-. r
	r1
	r4 f-. ~ f-. r
	r1
	r4 f2\mf r4
	r ges2\mf r4
	r f_\p r f }

trombonebasso = \notes \relative c {
	\time 2/2
	\key ees \major
	ees2\ff r4^\fermata r8. c16
	c2 r4^\fermata r8. g16
	g2 r4^\fermata r
	r1
	aes2.\sfp r4
	r1
	bes2.\sfp r4
	
	r1
	r4 aes'-.\p ~ aes-. r
	r1
	r4 a-. ~ a-. r
	r1
	r4 bes,2\mf r4
	r a2\mf r4
	r bes\p r bes }

violinoI = \notes \relative c' {
	\time 2/2
	\key ees \major
	<g2 ees'\ff> r4^\fermata r8. <ees''16 g>
	<ees2 g> r4^\fermata r8. <bes16 bes'>
	<bes2 bes'> r4^\fermata r8. \times 2/3 {bes32\p( aes g} 
	)f4 f2 f4 ~
	f\sf f16( aes c )aes f4 f\p(
	)g g2 g4( 
	)g\sf( )g16( bes des )bes g4 g\p(
	
	)aes r8. aes16( )g4 r8. g16(
	)f2 r4 g(
	)aes r8. aes16( )ges4 r8. ges16(
	)f2 r4 g4(
	)aes r8. aes16( )a4 r8. a16(
	)bes2 r4 bes\sf( 
	)c2 r4 ees\p(
	)f, r bes r }

violinoII = \notes \relative c' {
	\time 2/2
	\key ees \major
	<g2\ff ees'> r4^\fermata r8. <g'16 ees'16>
	<g2 ees'> r4^\fermata r8. <ees'16 g>
	<ees2 g> r4^\fermata r
	<c,4\p ees> <c2 ees> <c4 ees> ~
	<c\sf ees> <c2 ees> <c4\p( ees>
	<des )ees> <des2 ees> <des4 ees> ~
	<des4\sf ees> <des2 ees> <des4\p( ees>

	<c )ees> ees2 ees4 ~
	ees8 ees4\cresc ees ees\endcresc ees8\p ~
	ees4 ees2 ees4 ~
	ees8\p ees4\cresc ees ees\endcresc ees8\p ~
	ees4 ees2 ees4 ()
	d2 r4 d4\sf () 
	ees2 r4 ges\p ()
	ees r d r }

viola = \notes \relative c {
	\time 2/2
	\key ees \major
	ees2\ff r4^\fermata r8. c''16
	c2 r4^\fermata r8. g16
	g2 r4^\fermata r
	aes,4\p aes2 aes4 ~
	aes\sf aes2 aes4\p ()
	bes bes2 bes4 ~
	bes\f bes2 bes4\p ()

	c r8. c16 () bes4 r8. bes16 ()
	aes2 r4 bes ()
	c r8. c16 () bes4 r8. bes16 ()
	c2 r4 des ()
	c r8. c16 () ces4 r8. ces16 ()
	bes2 r4 f'4\sf ()
	ges2 r4 c,4\p ()
	bes r aes r }

violoncello = \notes \relative c {
	\time 2/2
	\key ees \major
	\slurUp
	\stemUp
	ees2\ff r4^\fermata r8. c'16 
	c2 r4^\fermata r8. g16
	g2 r4^\fermata r4
	aes,4..\p () c16 ees4.. () c16
	aes1\sfp 
	bes4.. () des16 g4.. () des16
	bes1\sfp

	c'4\p r8. c16 () bes4 r8. bes16 ()
	aes2 r4 bes ()
	c r8. c16 () bes4 r8. bes16
	a2 r4 bes4 ()
	c r8. c16 () ces4 r8. ces16 ()
	bes2 r4 bes\sf ()
	a2\p r4 a ()
	bes r4 bes, r }
basso = \notes \relative c {
	\time 2/2
	\key ees \major
	ees2\ff r4^\fermata r8. c'16 
	c2 r4^\fermata r8. g16
	g2 r4^\fermata r4
	aes,4..\p () c16 ees4.. () c16
	aes1\sfp 
	bes4.. () des16 g4.. () des16
	bes1\sfp

	r1 r r r r r r 
	r2 bes4 r }
