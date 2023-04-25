%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFagottoIIMvtII = \relative c {
	\clef bass
	\key d \major
%	\transposition a
% Bars 1 to 5
	R2.\fermataMarkup
	<< {e4 a,2} {s8\p\< s s s\> s s\!} >>
	R2.*4
% Bars 6 to 10
	
	R2. %a,8(\p^\dolce d e a fis d)
	b'8(\< g) g(\> e)\! fis4
	R2.
	fis8(\< d) d(\> b)\! a4
% Bars 11 to 15
	R2.*8
% Bars 16 to 20
	
	
	
	R2. %r4 r8 fis(\p a b)
	R %c( a fis dis e g)
% Bars 21 to 25
	fis'8(\p dis) e( cis) dis( b)
	R2.
	e'8( g,) g( e) e( a,)
	R2.*6
% Bars 26 to 30
	
	
	
	
	r4 r f4(~ \mark \default \bar "||" \key f \major
% Bars 31 to 35
	f g a
	g f) bes
	g a bes
	a2 a4(~
	a e'\< d
% Bars 36 to 40
	c\> b)\! e,(
	d g2
	c) r4
	R2.*11
% Bars 41 to 45
	
% Bars 46 to 50
	
	
	
	
	r4 r f(~ \mark \default
% Bars 51 to 55
	f g a 
	g f) r
	r r \clef tenor bes
	g a bes
	a2 r4
% Bars 56 to 60
	r r \clef bass f,(
	bes,2.)~
	bes2 r4
	r r a'
	g c c,
% Bars 61 to 65
	f2 r4
	R2.
	r4 r \clef tenor des''(~\pp
	des ees f
	ees des) r
% Bars 66 to 70
	r r \clef bass cis,\pp~ \bar "||" \key d \major
	cis2.~
	cis2 fis4(~
	fis e fis
	e d) g(~
% Bars 71 to 75
	g e fis)
	g2.
	a,4.\f\> d8\rest\! r4
	R2.*5
% Bars 76 to 80
	
	
	
	r4 r d8(\mf fis)
	g( b) b( d) d4
% Bars 81 to 85
	r r fis,8( b)
	d( cis) cis( b) a4
	r4 r8 a,( d e
	a fis d a d fis)
	b( g) b( d) d4
% Bars 86 to 90
	r4 r8 fis,,( ais cis
	fis dis b fis' b d!)
	d( cis) cis( b) a4
	R2.
	fis8( dis) e( cis) dis( b)
% Bars 91 to 95
	R2.
	g'8( e) e( g) g( e)
	R2.*7
% Bars 96 to 100
	
	
	
	\mark \default
	d4(\pp e fis
% Bars 101 to 105
	e d) g,(
	a b cis
	b a) r
	R2. %c2.)_\dimmarkup~
	R %c4 fis,8( a d, g)~
% Bars 106 to 110
	R %g4. r8 r4
	R2.*5
% Bars 111 to 115
	
	\clef tenor r4 a'2~
	a2.~
	a4( d,) r \clef bass
	R2.*3
% Bars 116 to 118
	
	
	d2.\p\fermata \bar "|."
}
