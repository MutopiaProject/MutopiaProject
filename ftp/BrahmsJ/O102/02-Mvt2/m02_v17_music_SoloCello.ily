%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicSoloCelloMvtII = \relative c {
	\clef bass
	\key d \major
%	\transposition a
% Bars 1 to 5
	\clef treble \ni \mmrPos #-4 R2._\fermata
	\mmrPos #-4 R2._\fermata \no \clef bass
	a8(_\fespress d e a fis d)
	b4( b' a)
	a,8( d e fis d b)
% Bars 6 to 10
	gis4( gis' a)
	a,8(\p d e a fis d)
	b4(\< b'\> a)\!
	a,8( d e fis d b)
	gis4(\< gis'\> a)\!
% Bars 11 to 15
	c8(\f a fis dis e g)
	b4( b,4. b'8)
	c8( a fis dis e g)
	bes4(\< bes,4.\> a8)\!
	a( d e a fis d)
% Bars 16 to 20
	b8.(\< b'16) b8.(\! d16\>) d8.( a16)\!
	a8( fis d a) e'4
	a8(\p fis d a) e'4
	d4. r8 r4
	c'8(\p a fis dis e g)
% Bars 21 to 25
	b4(\< b,4.\> b'8)\!
	c8( a fis dis e g)
	bes4(\< bes,4.\> a8)\!
	a8( d e a fis\< d)
	e[(^\crescmarkup a fis d)] fis( b
% Bars 26 to 30
	g e) a([ d e d)]
	d8.\f( b16) b8.( e,16) e8.( a16)
	a8( fis d a) e'4
	a8(\p fis d a) e'4
	d4. r8 r4 \bar "||" \key f \major \mark \default 
% Bars 31 to 35
	\clef tenor R2.*7
% Bars 36 to 40
	
	
	\ni \clef treble \mmrPos #-4 R2.
	\mmrPos #-4 R
	\mmrPos #-4 R \no \clef tenor
% Bars 41 to 45
	f'4(_\pdolce~ \tuplet 3/2 4 {f8 e f g e f~
	f e f a g f g4 a8)}
	bes8. r16 \clef treble r4 r
	\ni \mmrPos #-4 R2. \no \clef tenor
	f4(~ \tuplet 3/2 4 {f8 e f g e f~
% Bars 46 to 50
	f e f \clef treble d' c b c)\< e,( g
	des' c b c)\! e,( g des' c b
	des c b c) ees,( aes bes) des,( g
	aes)_\dimD\> \clef tenor c,( f g) bes,( des f) f,4~
	f8 f4~ f8 f4\!} r4 \mark \default
% Bars 51 to 55
	R2.
	r4 r8. \clef bass c'16\f(\> e,) g'( bes,) des(
	g,) bes( des,) g(\! a,\p c f a) r4
	R2.
	r4 r8. c16(\f\> aes) aes'( f) b,(
% Bars 56 to 60
	d) f,( aes) d,(\! c\p f a! c) r4
	R2.
	r4 r8. bes16(\f\> fis) a'( ees) c(
	a) fis( ees) c(\! bes\p d g bes) r4
	R2.
% Bars 61 to 65
	r4 r8. c16(\> e,) g'( e)\! des_\dimmarkup(
	bes) g( e) des( a c f a) c4(\pp\<
	ees2\> aes,4)\!
	R2.*3
% Bars 66 to 70
	\bar "||" \key d \major
	R2.
	\ni \clef treble \mmrPos #-4 R2.
	\mmrPos #-4 R
	\mmrPos #-4 R \clef bass
% Bars 71 to 75
	e'4(\f a2)~
	a2.~
	<< {a4 a2 } {s4 \trillSpanPadding #-2 s8\startTrillSpan s s s\stopTrillSpan} >>
	<< {a,2.} {\trillSpanPadding #-1 s8\startTrillSpan s s s s s\stopTrillSpan} >> \clef bass
	<< {a,2 a'4\trill } {\trillSpanPadding #-1 s8\startTrillSpan s s s\stopTrillSpan s4} >>
% Bars 76 to 80
	\afterGrace a,2(\trill\< {gis16[ a]} e'8) e,(\!
	<g! d'>2.\dimD\>)
	<gis e'>4. r8\! r4
	a8(\f d e a fis d)
	b4( b' a)
% Bars 81 to 85
	a,8( d e fis d b)
	gis4( gis' a)
	a,8(\p\< d e a)~ a4~\!
	a4.\> \clef tenor a'8( fis d)\!
	b4( b' a) \clef bass
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
	e([ a fis d)] fis( b
	g e)\! a[(\f d e d)]
% Bars 96 to 100
	d8.( b16) b8.( e,16) e8.( a16)
	a8(\< fis d a)\! e'4\>
	a8(\p fis d a) e'4
	d4. r8 \clef treble r4 \markWhiteout \mark \default
	\ni \mmrPos #-6 R2.
% Bars 101 to 105
	\mmrPos #-6 R \no 
	\clef tenor g'4(_\dolce~ \tuplet 3/2 4 {g8 fis g a fis g~
	g fis g b a g a4 b8)}
	c8. r16 r4 r 
	R2.
% Bars 106 to 110
	\clef bass g,4(~-\offset X-offset -1 _\piup \tuplet 3/2 4 {g8 fis g~ g fis g
	a_\dimmarkup fis g~} g8) g4 fis8(
	g4)(~ \tuplet 3/2 {g8 fis g)} ees'_\dolce bes
	g ees bes4 g
	a8(_\pcresc d e! a)~ a4~
% Bars 111 to 115
	a\< a,8([ a')] d,([ d')]\!
	\clef tenor e4\f( a2)~
	a2._\dimmarkup~
	a4~ \tuplet 3/2 4 {a8 bes(-.\> a-. gis-. a-. f-.)\!
	fis!(-.-\offset X-offset -0.5 \p d-. d,-.) b'!(-. g-. b-. d-. g-. b-.)}
% Bars 116 to 118
	<d, a'>2.~
	q~
	q4 r r\fermata \bar "|."
}
