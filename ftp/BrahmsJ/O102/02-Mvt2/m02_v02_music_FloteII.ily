%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFloteIIMvtII = \relative c''' {
	\clef treble
	\key d \major
%	\transposition a
% Bars 1 to 5
	\ni \mmrPos #4 R2.\fermata \no
	<< { e4( a,2)\fermata } {s8\p\< s s s\> s s\!} >>
	R2.*14
	
	
% Bars 6 to 10
	
	
	
	
	
% Bars 11 to 15
	
% Bars 16 to 20
	
	\ni \mmrPos #4 R2.
	\mmrPos #4 R
	\mmrPos #-4 R
	\mmrPos #-4 R \no
% Bars 21 to 25
	fis8([\p dis)] e([ cis)] dis( b)
	R2.
	e8[( g,]) g( e) e4 
	R2.*4
% Bars 26 to 30
	
	
	\ni \mmrPos #4 R2.
	\mmrPos #4 R \no
	\voiceOne r4 r \oneVoice f'_\pdolce(~ -\tweak X-offset #-4 ^\tutti \bar "||" \markWhiteout \mark \default \key f \major
% Bars 31 to 35
	f g a
	g f) bes( 
	g a bes
	a2) c,4\((-\offset X-offset 0.5 \pdolceD\<
	f) e d\!
% Bars 36 to 40
	c\> b\)\! g\((
	a) ais b~
	b c\) r^\solo
	R2.*6
	
% Bars 41 to 45
	
	
	
	
	d4.\p\< d8( e) d8~\!
% Bars 46 to 50
	d\> d4 d8( c) r\!
	R2.*3
	
	
	r4 r f\p-\offset X-offset -3 _\sempre(~ \markWhiteout \mark \default
% Bars 51 to 55
	f g a
	g f) r
	r  r bes(
	g a bes
	a2) r4
% Bars 56 to 60
	r r a(
	bes\< a g\!
	f\> e\!) r
	R2.*4
	
% Bars 61 to 65
	
	
	\ni \mmrPos #4 R2. 
	\mmrPos #4 R^\tutti \no 
	\voiceOne r4 r \oneVoice eis,!4\p\<(
% Bars 66 to 70
	gis2\> fis4)\! \bar "||" \key d \major
	R2.
	r4 r fis'(_\mfcresc~
	fis e fis
	e d) g(~
% Bars 71 to 75
	g^\solo e fis)
	g( e' d)
	cis4.\f\> r8\! r4
	R2.*5
	
% Bars 76 to 80
	
	
	
	r4 r d,,8(\mf fis)
	g([ b)] b( d) d4
% Bars 81 to 85
	r4 r fis,8( b)
	d([ cis]) cis( b) a4
	R2.
	r4 r r8 fis(
	b[ g]) b( d) d4
% Bars 86 to 90
	R2.
	r4 r8 fis,( b d)
	d([ cis]) cis( b) a4
	R2.
	fis'8([ dis]) e[( cis]) dis( b)
% Bars 91 to 95
	R2.
	g'8[( e)] e([ g,]) g( e)
	R2.*7
% Bars 96 to 100
	
	
	
	\mark \default
	R2.*6
% Bars 101 to 105
	
% Bars 106 to 110
	\ni \clef bass \mmrPos #-4 R2.
	\mmrPos #-4 R
	\mmrPos #-4 R
	\mmrPos #-4 R
	<< \mmrPos #-4 R {s2 \clef treble s4 } >>
% Bars 111 to 115
	\mmrPos #-4 R2. \no
	gis'4(\f a g_\dimD\>
	fis e) r\!
	R2.*4
	
% Bars 116 to 118
	
	
	fis2.\p\fermata \bar "|."
}
