\version "2.14.2"

markings = {\time 3/4 \mark "Arie Larghetto" s2.*40 \bar "||"}
incmidi = "midi2.ly"

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
	r4 r^\fermata r
	R2.*5 
	r4 r r8 a\p
	d( ees d c bes  a)
	bes8.\trill ( c16) d8 r r bes
	f'( g f ees d  c)
	d8.\trill ( ees16) f4 r
	r2.
	g8.\f g16 f4 r
	bes2\f d8. bes16
	f4 r r 
	R2.*8
	r4 r r8 a,\p
	d8.( ees16 d8 c bes  a)
	bes8.\trill (  c16) d4 r
	b'2\fp r4
	c2\fp r4
	r8 ees,8\p ( c ees a,  c)
	fis,4 r d'
	\acciaccatura c8 b4. b8( c  d)
	f4 ( ees) r
	R2.*5
	f2.\p ~
	f2 ( ees8) r
	r2.
}

oboeII =  \relative c'' {
	\key bes\major
	r4 r r
	R2.*11
	bes8. bes16 bes4 r
	d2 bes8. d16
	f4 r r
	R2.*11
	d2 r4
	ees2 r4
	R2.*9
	c2.
	b2 c8 r
	r2. 
}

fagottoI =  \relative c' {
	\key bes\major
	r4 r^\fermata r
	R2.*5
	\clef tenor r4 r r8 a
	d( ees d c bes  a)
	bes8.\trill ( c16) d8 r r bes
	f'( g f ees d  c)
	d8.\trill ( ees16) f4 r
	r2.
	\clef bass ees4-.\f d-. r
	f2.\f ~
	f4 r r \clef tenor
	bes,2.\p ~
	bes2 ( c4)
	d2. ~
	d8( b g4  b)
	g'2 ( ges4)
% 2
	f4 ( d bes8.  g16)
	e'2 ( ees4)
	d ( cis  e)
	d2 r8 a8\p
	d8.( ees16 d8 c bes  a)
	bes8.\trill (  c16) d4 r
	\clef "bass"
	bes2\fp r4
	c2\fp r4
	r8 ees8\p ( c ees a,  c)
	fis,4 r fis'(
	f!4.) f8( ees  d)
	c2 r4
	R2.*4
	ees4-.\p ( ees-.  ees)-.
	d2.\p ~
	d2 ( c8) r
	r2.
}

fagottoII =  \relative c' {
	\key bes\major
	r4 r r
	R2.*11
	\clef bass ees,4-. d-. r
	bes'2 d8. bes16
	f4 r r
	R2.*11
	\clef "bass"
	aes2 r4
	g2 r4
	R2.*12
}

cornibI =  \relative c' {
	r4 r4^\fermata r
	R2.*11
	c'8.\f c16 c4 r
	c2\f e8. c16
	g4 r r 
	R2.*25
}

cornibII =  \relative c' {
	r4 r4 r
	R2.*11
	c8. c16 c4 r
	e2 c8. e16
	g4 r r 
	R2.*25
}

violinoI =  \relative c' {
	\key bes\major
	g'4 r4^\fermata d'\p
	d4. (  c8) bes4
	bes4. bes8 ( a  g)
	ees'4-.\mf d-. r
	d\p( c  bes)
	a2( c8  a)
	g4 (  fis) r
	r8 a,8 r d r d
	r d r d r d
	r c r f r f
	r f r f r bes
	ees4-. d-. r8 bes32\f ( c d ees64 f
	 g8.) g16 f4 r
	r8 d32\f ( c bes a  bes8.) f16 d8. bes16
	f'4. f8\p( g  a)
	r16 bes bes bes r bes bes bes r bes bes bes
	r f' f f r aes aes aes r aes, aes aes
	r aes(  g) g r g g g  r g g g
	r g g g r d' d d r f f f
	r d(  ees) ees-. r ees ees ees r ees ees ees
% 2
	r ees (  d) d-. r d d d r d d d
	r d (  cis) cis-. r c c c r c c c
	r c (  b) b-. r bes bes bes r bes bes bes
	bes4 (  a) r
	r8 a, r d r d
	r d r d r d
	aes''2\fp r4
	g2\fp r4
	a,2.\p
	fis4 r d'
	\acciaccatura c8 b4. b8( c  d)
	d4 (  ees) r
	a,-. ( a-.  a)-.
	a2.
	g2 bes8. (  a16)
	g4 r r
	c-.( c-.  c)-.
	c2.
	b2 (  c8) r
	g r bes r fis r
}

violinoII =  \relative c' {
	\key bes\major
	bes4 r4^\fermata bes'\p
	bes4. ( a8) g4
	g4. g8 ( fis  g)
	g4-.\mf a-. r
	bes\p ( fis  g)
	ees2 ~ ees8 (  c)
	bes4 ( a) r
	r8 c r c r c
	r bes r bes r bes
	r ees r ees r ees
	r d r d r d
	bes'4-. bes-. r8 bes32\f ( c d ees64 f
	 g8.) g16 f4 r
	r8 d32\f( c bes a  bes8.) f16 d8. bes16
	f'2( e8\p  ees)
	r16 d d d r d d d r d d d
	r bes' bes bes r f' f f r f, f f
	r f f f r f f f r f f f
	r f f f r f f f r d' d d
	r b ( c) c-. r c c c r c c c
% 2
	r c ( bes) bes-. r a a a r bes bes bes
	r bes ( a) a-. r g g g r a a a
	r a ( g) g-. r g g g r g g g
	g4 ( fis) r
	r8 c r c r c
	r bes r bes r bes
	<d b'>2\fp r4
	<ees c'>2\fp r4
	ees2.\fp
	d4 r a'
	aes4. aes8 ( g  b)
	b4 ( c) r
	ees,-. ( ees-.  ees)-.
	ees2.
	d2 ( fis4)
	g r r
	g-. ( g-.  g)-.
	aes2.
	g2 ~ g8 r
	bes, r g' r c, r 
}

viola =  \relative c {
	\key bes\major
	g'4 r4^\fermata r
	r r d'\p
	d2.
	c4-.\mf a-. r
	bes\p ( c  d)
	c2 ( ees4)
	d2 r4
	r8 fis, r a r a
	r g r g r g
	r a r c r c
	r bes r bes r f'
	g4-. f-. r
	ees-.\f d-. r
	r8 d'32\f ( c bes a  bes8.) f16 d8. bes16
	f'4. d8\p ( cis  c)
	bes2. ~
	bes2 ( c4)
	d2. ~
	d8 ( b g4  bes)
	g'2 ( ges4)
% 2
	f ( d bes8.  g16)
	e'2 ( ees4)
	d ( cis  e)
	d2 r4
	r8 fis, r a r a 
	r g r g r g
	f'2\fp f4
	ees2\fp r4
	c2.\p
	a4 r fis'(
	f!4.) f8 ( ees  g)
	g2 r4
	c,4-. ( c-.  c)-.
	c2.
	bes2 ( c4)
	bes r r
	ees-. ( ees-.  ees)-.
	f2. ~
	f2 ( ees8) r
	e r d r d r
}

violoncello =  \relative c' {
	\key bes\major
	g,4 r4^\fermata r
	r r d''4\p
	d4. d8( c  bes)
	c4-.\mf fis,-. r
	g,\p ( a  bes)
	c2 ( a8  c)
	d2 r4
	fis8 r fis r fis r
	g r g r g r
	a r a r a r
	bes r bes r bes r
	g4-. f-. r
	ees-.\f d-. r
	r8 d'32\f ( c bes a  bes8.) f16 d8. bes16
	f'2.\p
	bes,8 r bes r bes r
	d r d r c r
	b r b r b r
	b r b r g r
	c r c' r a r
% 2
	bes r fis r g r
	a r e r fis r
	g r ees r cis r
	d2 r4
	fis8 r fis r fis r
	g r g r g r
	f2\fp f4
	ees2\fp r4
	c2.\p
	d4 r fis'(
	f!4.) f8 ( ees  d)
	c2 r4
	c,-. ( c-.  c)-.
	c2.
	d2 d4
	ees r r
	ees'-. ( ees-.  ees)-.
	d2.
	g,2 ( c,8) r
	cis r d r d r 
}

contrabasso =  \relative c' {
	\key bes\major
	g,4 r4^\fermata r
	r r d''4\p
	d4. d8( c  bes)
	c4-.\mf fis,-. r
	g,\p ( a  bes)
	c2 ( a8  c)
	d2 r4
	fis8 r fis r fis r
	g r g r g r
	a r a r a r
	bes r bes r bes r
	g4-. f-. r
	ees-.\f d-. r
	r8 d'32\f ( c bes a  bes8.) f16 d8. bes16
	f'2.\p
	bes,8 r bes r bes r
	d r d r c r
	b r b r b r
	b r b r g r
	c r c' r a r
% 2
	bes r fis r g r
	a r e r fis r
	g r ees r cis r
	d2 r4
	fis8 r fis r fis r
	g r g r g r
	f2\fp f4
	ees2\fp r4
	c2.\p
	d4 r r
	R2.*2
	c4-. ( c-.  c)-.
	c2.
	d2 d4
	ees r r
	R2.*2
	g2 ( c,8) r
	cis r d r d r  	 
}

konigindernacht = <<
\relative c'' {
	\key bes\major
	 \unset melismaBusyProperties 
	r4 r4^\fermata d
	d4. ( c8) bes4
	bes4. bes8 a g
	ees'4 d r
	d c bes
	a4. a8 c a
	g4 ( fis) r8 a
	d ees d c bes a
	bes8. ( c16) d4 r8 bes
	f' g f ees d c
	d8. ( ees16) f4 r8 bes,
	ees8. ees16 d4 r
	r r r8 bes
	f'2. ~
	f8. d32 ( bes) f8 f g a
	bes4 r r8 f'
	f ( aes) aes4. aes,8
	aes g r4 r8 g
	g ( b) d4. f8
	d ees r4 r8 ees
% 2
	ees ( d) d4. d8
	d8 ( cis) c4 r8 c
	c8 ( b) bes4. bes8
	d8. ( bes16) a4 r8 a
	d8. ees16 d8 c bes a
	bes8. ( c16) d8 r d8. ( aes'16)
	aes2 d,8. ( g16)
	g2 r4
	r8 ees c ees a, c
	fis,4 r8. a16 d8 d
	\acciaccatura c8 b4. b8 c d
	f4 ees r
	a, a a
	\acciaccatura {a16 bes} c4. ( bes8) a4
	g2 bes8. ( a16)
	g4 r r
	r2.
	f'4 f f
	aes4. g16 ( f)
	\acciaccatura f16 ees8 d16 ( c)
	\acciaccatura c16 bes8 a16 ( g) g4 (
	\once \override Stem #'stroke-style = #"grace"
	\grace bes8 a8.) g16
}

\addlyrics {
	Zum
	Lei -- den
	bin ich aus --er--
	ko -- ren,
	denn mei -- ne
	Toch -- ter feh -- let
	mir; durch
	sie ging all' main Gluck ver --
	
	lo -- ren, durch
	sie ging all' mein Gluck ver --
	lo -- ren: ein
	Bö -- se -- wicht,
	ein
	Bö --
	se -- wicht_ ent -- floh_ mit_
	ihr. Noch
	seh' ich ihr
	Zit -- tern mit
	ban -- gem Er --
	schüt -- tern, _ihr
% 2
	äng -- st -- li -- ches
	Be -- ben, ihr
	schüch -- ter -- nes
	Stre -- ben. Ich
	muss -- te sie mir rau -- ben
	se -- hen, Ach 
	helft! ach
	helft!
	war al -- les, was sie
	sprach; allein ver --
	ge -- bens war ihr Fle -- hen,
	denn mei -- ne
	Hül -- fe
	war zu  
	schwach,

	denn mei -- ne
	Hül -- fe, mei -- ne
	Hül -- fe war zu
}
>>
