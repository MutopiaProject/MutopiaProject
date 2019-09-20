% Project Name : Double Concerto Op102
% Fichier :      m02_v01_music_FloteI.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFloteIMvtII = \relative c''' {
	\clef treble
	\key d \major
%	\transposition a
% Bars 1 to 5
	\new CueVoice { \set instrumentCueName  = "Hr.I"} \cueDuring "cueVoiceFloteImII" #UP {\override MultiMeasureRest.staff-position = #0 R2.\fermataMarkup \revert MultiMeasureRest.staff-position}
	<< { e4( a2)\fermata } {s8\p\< s s s\> s s\!} >>
	R2.*4^\solo
	
	
% Bars 6 to 10
	
	a,,8(_\pdolce d  e a fis d)
	R2.
	a8( d e fis d b)
	R2.*7
% Bars 11 to 15
	
% Bars 16 to 20
	
	\new CueVoice { \set instrumentCueName  = "Solo-Viol"}
	\cueDuring "cueVoiceFloteImII" #DOWN {R2.*2 r4 r8}
	fis'(\p a b)
	c( a fis dis e g)
% Bars 21 to 25
	a(\p fis) g( e) fis( b)
	c( a fis dis e g)
	g( e) e( g,) g( a)
	R2.*4
% Bars 26 to 30
	
	
	\new CueVoice { \set instrumentCueName  = "Solo-Viol"}
	\cueDuring "cueVoiceFloteImII" #DOWN {R2.*2 r4 r }
	 a'_\pdolce(~ \bar "||" \mark \default \key f \major
% Bars 31 to 35
	a bes c
	bes a) d(
	e f g
	f c) c,\((\pdolceD\<
	f) e d
% Bars 36 to 40
	c\> b\)\! c(~
	c cis d
	g,2)^\solo r4
	R2.*2
	
% Bars 41 to 45
	f'4.\p\< f4 f8~
	f\> f4 f8( g) g~\!
	g4. r8 r4
	R2.
	f4.\p\< f8( g) f8~
% Bars 46 to 50
	f\> f( d') b( c) g(\!
	des') b( c)\> g( des')^\dimmarkup des(~\!
	des4 c8) r r4
	R2.
	r4 r a!_\psempre(~ \mark \default
% Bars 51 to 55
	a bes c
	bes a) r
	r  r d(
	e f g
	f c) r
% Bars 56 to 60
	r r cis(
	d\< c! bes
	a\> g\!) r
	r r f(
	d dis e
% Bars 61 to 65
	c2) r4
	R2.*2
	
	R2.^\tutti
	r4 r gis\p\<(
% Bars 66 to 70
	b2\> a4)\! \bar "||" \key d \major
	R2.
	r4 r fis'(_\mfcresc~
	fis g! a
	g fis) b(~
% Bars 71 to 75
	b^\solo cis d)
	e2( fis4)
	g4.\f\> r8\! r4
	R2.*5
	
% Bars 76 to 80
	
	
	
	r4 r d,8(\mf a)
	b( d) d( e) fis4
% Bars 81 to 85
	r4 r b,8( d)
	fis( e) e( d) cis4
	a8(\p d e\< a d e
	a\> fis d a)\! r a,(
	d b) d( e) fis4
% Bars 86 to 90
	a,8( d e\< fis ais cis
	fis\> dis b fis\! d! fis)
	fis( e) e( d) cis4
	c'2(\mf\> b4)\!
	a8( fis) g( e) fis( b)
% Bars 91 to 95
	c!2(\> b4)\!
	bes8( g) g( e) e( a)
	R2.*7
% Bars 96 to 100
	
	
	
	\mark \default
	R2.*6
% Bars 101 to 105
	
% Bars 106 to 110
	\new CueVoice { \set instrumentCueName  = "Solo-Vlc"}
	\cueDuringWithClef "cueVoiceFloteImII" #UP #"bass" {R2.*4 r2}
	\new CueVoice { \set instrumentCueName  = "Solo-Viol."}
	\cueDuring "cueVoiceFloteImII" #UP {r4 r r}
% Bars 111 to 115
	 d(~\f
	d cis\dimD\> b
	a g e)~
	e(\p d) r
	R2.*3
% Bars 116 to 118
	
	
	d'2.\p\fermata \bar "|."
}
