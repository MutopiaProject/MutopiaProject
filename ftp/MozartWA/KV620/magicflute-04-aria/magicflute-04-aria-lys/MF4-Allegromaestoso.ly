\version "2.14.2"

markings = {\time 4/4 \mark "Allegro Maestoso" s1*11
	\mark "Recitativ."
	s1*9 \bar "||"}
incmidi = "midi1.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%											   %
%		One source, Dover Publications (an unabridged republication of urtext      %	
%	originally published by C. F. Peters, n.d. states) "For legal reasons this title   %
%	cannot be offered or sold in the Federal Republic of Germany and West Berlin." 	   %
%	Other urtext and other pieces (from late 1800's consulted) had no such             %
% 	disclaimer.  If you reside and/or are a citizen of Germany, please consult your    %
%	local laws before downloading or using this piece.  			  	   %
%		Please note that there are some problems with the original score (lots of  %
%	errors, poor printing, and omissions). I have corrected what I could find, but     %
%	most certainly missed some. Please let me know if you find any problems so that    %
%	I may update the file for everyone.						   %
%		For those who know German, my apologies upfront. I'm not sure if I	   %
%	have syllables in the correct places. If you have corrections, please email	   %
%	me and I would be very happy to correct them.				 	   %
%		If you know someone who can sing this including the HIGH F, WOW! 	   %
%	Karmically, Deborah								   %
%											   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

oboeI =  \relative c'' {
	\key bes\major
	R1*5
	f1\f ~
	f1 ~
	f1 ~
	f1 ~
	f4 f f f
	f r r2
	r r4 bes,\f (
	d f bes  d)
	e,\p r r2
	r1
	r2 r4 a,4\f (
	c f a  c)
	fis,\p r r2
	R1*2
}

oboeII =  \relative c'' {
	\key bes\major
	R1*5
	d1\f( 
	 ees1) (  
	
	 d1) (  
	 ees1) ( 
	 d4) d d d
	d r r2
	r r4 bes\f(
	d f bes d)
	e,\p r r2
	r1
	r2 r4 a,4\f(
	c f a c)
	fis, r r2
	R1*2
}

fagottoI =  \relative c' {
	\key bes\major
	r1 r 
	aes1\p
	g2\cresc ( ges)
	f8-.\f f ( a c ees c a  f)
	bes-. bes,-. d-. f-. bes-. f-. d-. bes-.
	a ees''16 c a8 f ees c a f
	bes bes d f bes f d bes
	a ees''16 c a8 f ees c a f
	bes4 bes bes bes
	bes r r2
	r2 r4 bes\f (
	d f bes  d)
	e,\p r r2
	r1
	r2 r4 a,\f (
	c f a  c)
	fis,\p r r2
	R1*2
}

fagottoII = \fagottoI

cornibI =  \relative c' {
	r1 
	c\p ~
	c\cresc ~
	c
	g'\f
	c
	d
	c
	d
	c4 c c c
	c r r2
	r1
	c1\f ~
	c4\p r r2
	r1
	r
	g\f
	r
	r
	r	
}

cornibII =  \relative c' {
	r1 
	c\p ~
	c\cresc ~
	c
	g'\f
	e
	g
	e
	g
	e4 e e e
	e r r2
	r1
	c1\f ~
	c4\p r r2
	r1
	r
	g'\f
	r
	r
	r	
}

violinoI =  \relative c' {
	\key bes\major
	bes8\p bes4 bes bes bes8(
	d) d4 d d d8(
	f) f4 f f\cresc f8(
	bes) bes4 bes bes bes8(
	<f ees'>)\f q4 q q q8(
	<f d'>) <f' d'>4 q q q8(
	<f ees'>) q4 q q q8(
	<f d'>) q4 q q q8(
	<f ees'>) q4 q q q8(
	<f d'>) r16 f f8 r16 d d8 r16 bes bes8 r16 f
	f4 r a\p r
	bes8\p bes4 bes bes_\cresc bes8 ~
	bes bes4 bes bes\f bes8
	g,4\p r r g'
	r c r2
	a8\p a4 a a_\cresc a8 ~
	a a4 a a\f a8 ~
	a4\p r d r
	bes2 aes
	fis4 r r fis
}

violinoII =  \relative c' {
	\key bes\major
	bes8\p bes4 bes bes bes8(
	bes) bes4 bes bes bes8(
	d) d4 d d_\cresc d8(
	f8 e  ees) ees4 ees ees8(
	<a c>)\f q4 q q q8(
	bes) <d bes'>4 q q q8(
	<ees c'>) q4 q q q8(
	<d bes'>) q4 q q q8(
	<ees c'>) q4 q q q8(
	<d bes'>) r16 d d8 r16 bes bes8 r16 f f8 r16 d
	d4 r ees\p r
	d8\p d4 d d_\cresc d8 ~
	d d4 d d\f d8
	bes4\p r r bes
	r g' r2
	f8\p f4 f f_\cresc f8 ~
	f f4 f f\f f8(
	fis4)\p r a r
	g2 ees ~
	ees4 r r c
}

viola =  \relative c {
	\key bes\major
	d1\p
	f
	aes\cresc
	g2 ( ges)
	f8-.\f f ( a c ees c a  f)
	bes-. bes-. d-. f-. bes-. f-. d-. bes-.
	a ees''16 c a8 f ees c a f
	bes bes d f bes f d bes
	a ees''16 c a8 f ees c a f
	bes r16 bes'16 bes8 r16 f f8 r16 d d8 r16 bes
	bes4 r c\p r
	f8\p f4 f f\cresc f8 ~
	f f4 f f\f f8
	e4\p r r e,
	r4 c' r2
	c8\p c4 c c\cresc c8 ~
	c c4 c4 c\f c8 ~
	c4\p r a r
	d2 c
	a4 r r a
}

violoncello =  \relative c' {
	\key bes\major
	bes,4\p bes bes bes
	bes bes bes bes
	bes bes bes\cresc bes
	bes8 bes bes bes bes bes bes bes
	bes\f bes bes bes bes bes bes bes
	bes-. bes-. d-. f-. bes-. f-. d-. bes-.
	a ees''16 c a8 f ees c a f
	bes bes d f bes f d bes
	a ees''16 c a8 f ees c a f
	bes4 bes bes bes
	bes r bes\p r
	bes\p ( d f\cresc  bes)
	bes,1\f
	c4 r r c
	r e r2
	f4\p ( a c\cresc  f)
	ees,1\f
	d4\p r fis r
	g2 c, ~
	c4 r r d
}

contrabasso =  \relative c' {
	\key bes\major
	bes,4\p bes bes bes
	bes bes bes bes
	bes bes bes\cresc bes
	bes8 bes bes bes bes bes bes bes
	bes\f bes bes bes bes bes bes bes
	bes-. bes-. d-. f-. bes-. f-. d-. bes-.
	a ees''16 c a8 f ees c a f
	bes bes d f bes f d bes
	a ees''16 c a8 f ees c a f
	bes4 bes bes bes
	bes r bes\p r
	bes\p ( d f\cresc  bes)
	bes,1\f
	c4 r r c
	r e r2
	f4\p ( a c\cresc  f)
	ees,1\f
	d4\p r fis r
	g2 c, ~
	c4 r r d
}

konigindernacht = <<
\relative c'' {
	\key bes\major
	 \unset melismaBusyProperties 
	R1*10
	bes4 d8. f16 a,4 r16 c ees d
	bes4 r r2
	r1
	r8 g e f g g r4
	c8 c r4 a r
	r1
	r
	r8 a fis16 fis fis g a4 r16 a d a
	bes8 bes r bes aes8. c16 d8 ees
	ees8. fis,16 fis8 g g d r4
}

\addlyrics {
	O_ zitt' -- re nicht, mein lie -- ber_
	Sohn!
	Du bist un -- schul -- dig,
	wei -- se,__ fromm.
	Ein Jüng -- ling, so wie du, ver -- mag am
	bes -- ten, dies tief -- bet -- rüb -- te
	Mut -- ter -- herz zu trös -- ten.
}
>>
