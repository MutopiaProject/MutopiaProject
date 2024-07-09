%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicSoloViolinMvtII = \relative c' {
	\clef treble
	\key d \major
%	\transposition a
% Bars 1 to 5
	\ni \mmrPos #-4 R2._\fermata 
	\mmrPos #-4 R2._\fermata \no
	a8(_\fespress d e a fis d)
	b4( b' a)
	a,8( d e fis d b)
% Bars 6 to 10
	gis4( gis' a)
	a,8(\p d e a fis d)
	b4(\< b'\> a\!)
	a,8( d e fis d b)
	gis4(\< gis'\> a)\!
% Bars 11 to 15
	c8(\f a fis dis e g)
	b4( b,4. b'8)
	c8( a fis dis e g)
	bes4(\< bes,4.\> a8)\!
	a8( d e a fis d)
% Bars 16 to 20
	b8(\< b'4 d\> a8)\!
	a8( fis d a) e'4
	a8(\p fis d a) e'4
	d4. r8 r4
	c'8(\p a fis dis e g)
% Bars 21 to 25
	b4(\< b,4.\> b'8)\!
	c8( a fis dis e g)
	bes4(\< bes,4.\> a8)\!
	a8( d e a fis\< d)
	e(^\crescmarkup a fis d) fis([ b]
% Bars 26 to 30
	g[ e)] a( d e8. d16)\!
	d8\f([ b)] b([ e,)] e( a)
	a( fis d a) e'4
	a8(\p fis d a) e'4
	d4. r8 r4 \bar "||" \key f \major \mark \default
% Bars 31 to 35
	R2.*3
	
	
	\ni \mmrPos #-4 R2.
	\mmrPos #-4 R
% Bars 36 to 40
	\mmrPos #-4 R
	\mmrPos #-4 R \no
	r4 r g'(_\pdolce
	bes~ \tuplet 3/2 4 {bes8 a bes c a bes~
	bes a bes d c bes a g f~}
% Bars 41 to 45
	f8.) r16 r4 r
	R2.
	bes4(~ \tuplet 3/2 4 {bes8 a bes c a bes~
	bes\< a bes g'\! f\> e f c a\!}
	f8.) r16 r4 r
% Bars 46 to 50
	R2.
	r4  r \tuplet 3/2 4 {r8 g,,_\pdolce( des'
	f ees d! ees) c4( des8) bes4(
	c8) aes4(\dimD\> bes8) g4( aes8) aes( d!
	f) aes,( c f) aes,( c} f16) a,( c f\! \mark \default
% Bars 51 to 55
	a_\pdolcesempre) a'( f) a( bes,) bes'( g) bes( c,) c'( a) c(
	e,) g'( bes, c a f c a) r4
	r r8. a16( d f bes d)
	e, e'( g,) e'( f,) f'( a,) f'( g,) g'( bes,) g'(
	a,) a'( f a, c a f c) r4
% Bars 56 to 60
	r4 r8. f,16( a cis a' f')
	d bes( d,) bes( c') a( c,) a( bes') g( bes,) g(
	a f' a d g, e g, e) r4
	r r8. d16( f a c a')
	bes, d'( bes) d,( a) c'( a) c,( g) bes'( g) bes,(
% Bars 61 to 65
	e,) g'( e bes a f c a) r4
	r  r a4(\pp\<
	c2\> des4)\!
	R2.*3
% Bars 66 to 70
	\bar "||" \key d \major
	R2.*4
% Bars 71 to 75
	<< 
		{
			s2.
			s
			s4 \tuplet 3/2 {a'''8 \InCueContext \shiftNote #1 fis(-. <a,, g''>-.)}
		} \\ {
			\set doubleSlurs = ##t <e' e'>4\f( <a a'>2)(
			q2.)(
			q4) \tuplet 3/2 {q8 \set doubleSlurs = ##f <dis, fis'>(-. <e g'>-.)} 
		} 
	>> \tuplet 3/2 {<fis dis'>(-. <g e'>-. <dis! bis'>-.)}
	\tuplet 3/2 4 {<e cis'>-.( <bis gis'>-. <cis a'>-. <dis fis>-. <e g>-. <fis, dis'!>-.) <g e'>-.( <dis bis'>-. <e cis'>-.)
	<bis gis'>(-. <cis a'>-. <dis fis>-. <e g!> <bis! gis'>-. <cis a'>-.) <dis fis>-.( <e g>-. <bis! gis'>-.)}
% Bars 76 to 80
	<cis a'>-.( <b! g'!>-.) <g e'>4\< cis(~
	cis\! b)\dimD cis4(~\>
	cis b8)\! r r4
	a8(\f d e a fis d)
	b4( b' a)
% Bars 81 to 85
	a,8( d e fis d b)
	gis4( gis' a)
	a,8(\p\< d e a)~ a4\!~
	a4.\> a'8( fis d)\!
	b4( b' a)
% Bars 86 to 90
	a,,8(\< d e fis)~ fis4~\!
	fis4.\> fis'8( d b)\!
	gis4( gis' a)
	c,8(\f a fis dis e g)
	b4( b,4. b'8)
% Bars 91 to 95
	c8( a fis dis e g)
	bes4(\< bes,4.\> a8)\!
	a8( d\< e a fis d)
	e([ a fis d]) fis( b
	g e)\! a([\f d e8. d16])
% Bars 96 to 100
	d8( b) b( e,) e( a)
	<< { a( fis d a) e'4 } \\{s8 \hairpinShorten #'(0 . 1) s\< s s \hairpinShorten #'(-1 . -1) s\> s\!}>>
	a8(\p fis d a) e'4
	d4. r8 a''4(_\dolce \markWhiteout \mark \default
	c4)(~ \tuplet 3/2 4 {c8 b c d b c~
% Bars 101 to 105
	c b c d a c  b a g)~}
	g8. r16 r4 r
	R2.
	c4_\piup(~ \tuplet 3/2 4 {c8 b c d b c~
	c b c a' g fis g d b)}
% Bars 106 to 110
	g8. r16 r4 r
	R2.
	\ni \clef bass \mmrPos #-4 R2.
	\mmrPos #-4 R \no
	r4 r \clef treble a,,8_\pcrescD(\< d
% Bars 111 to 115
	e[ a)]~ a([ a')] d,( d')\!
	\acciaccatura e,8 <e e'>4\f( <a a'>2)~
	q2._\dimmarkup~
	q4~ \tuplet 3/2 4 {q8 <gis eis'>(-.\> <a fis'>-. <eis cis'>-. <fis d'>-. <bes, gis'!>-.)
	<a a'>(-.\p <gis eis'>-. <a fis'>-.) <g d'>(-. <d b'>-. <g d'>-. <b g'>-. <d b'>-. <d d'>-.)}
% Bars 116 to 118
	<fis fis'>2.~
	q~
	q4 r r\fermata \bar "|."
}
