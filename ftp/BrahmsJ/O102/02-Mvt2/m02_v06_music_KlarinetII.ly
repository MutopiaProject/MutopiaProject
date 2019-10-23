% Project Name : Double Concerto Op102
% Fichier :      m02_v06_music_KlarinetII.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicKlarinetIIMvtII = \relative c''' {
	\clef treble
	\key f \major
	\transposition a
% Bars 1 to 5
	\cueDuring #"cueVoiceKlarIImII" #DOWN {\ni R2.\fermataMarkup \no }
	<< {g4( c,2)\fermata} {s8 -\tweak X-offset #-1 \p\< s s s\> s s\!} >>
	R2.*5^\solo
% Bars 6 to 10
	
	
	d8(^\dolce\p\< bes) bes(\> g)\! a4
	R2.
	a8(\< f) f(\> d)\! c4
% Bars 11 to 15
	R2.*14
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	
	
	\cueDuring #"cueVoiceKlarIImII" #UP {
		\ni R2.
% Bars 26 to 30
		R
		R
		\MmrPos #-8 R
		\MmrPos #-8 R
		e'4\rest \no } e\rest -\tweak X-offset #-1 ^\tutti aes,_\pdolce(~ \bar "||" \key aes \major \mark \default
% Bars 31 to 35
	aes bes c
	bes aes) des(
	bes c des
	c2) ees,4\((
	aes) g\< f 
% Bars 36 to 40
	ees\> d\)\! ees(~
	ees e f
	aes g) r4^\solo
	R2.*4
	
% Bars 41 to 45
	
	
	bes4.\p\< bes8( c) bes~\!
	bes bes4\>  bes8( aes) aes~
	aes8\! r r4 r
% Bars 46 to 50
	R2.*4
	
	
	
	r4 r aes(_\psempre~ \mark \default
% Bars 51 to 55
	aes bes c
	bes aes) r
	r r des(
	bes c des
	c2) r4
% Bars 56 to 60
	R2.*3
	
	
	r4 r aes(
	des a bes~
% Bars 61 to 65
	bes aes!) r
	R2.*2
	
	R2.*2^\tutti
	
% Bars 66 to 70
	\cueDuring #"cueVoiceKlarIImII" #UP {
		\ni R2. \bar "||" \key f \major
		R2.
		r4 r \no } a(~_\mfcresc
	a g a
	g f) r
% Bars 71 to 75
	R2.*2^\solo
	
	bes4.\f\> r8\! r4
	R2.*21
% Bars 76 to 80
	
% Bars 81 to 85
	
	
	%r4 r8 c,(\p\< f g
	%c\> a f c)\! r4
	%R2.
% Bars 86 to 90
	%r4 r8 a(\< cis e
	%a\> fis d a)\! r4
	%R2.*12
% Bars 91 to 95
	
	
	
	
	\cueDuring #"cueVoiceKlarIImII" #UP {
		\ni R2.
% Bars 96 to 100
		R
		\MmrPos #-8 R
		\MmrPos #-8 R
		R \mark \default \no
	}
	f4(\pp g a
% Bars 101 to 105
	g f) d(
	e! f g
	f e) r
	R2.*7
	%ees4 a,8( c f, bes)~
% Bars 106 to 110
	%bes4. r8 r4
	%R2.*4
	
	
	
% Bars 111 to 115
	\cueDuring #"cueVoiceKlarIImII" #UP {
		\ni R2.
		R
		R
		R \no
	}
	R2.*3
% Bars 116 to 118
	
	
	c'2.\p\fermata \bar "|."
}
