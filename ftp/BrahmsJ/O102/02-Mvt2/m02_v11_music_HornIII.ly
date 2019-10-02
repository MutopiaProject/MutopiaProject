% Project Name : Double Concerto Op102
% Fichier :      m02_v11_music_HornIII.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicHornIIIMvtII = \relative c {
	\clef treble
	\key c \major
	\transposition f
% Bars 1 to 5
	\cueDuring #"cueVoiceHrnIIImII" #DOWN {
		R2.\fermataMarkup
		\once \override MultiMeasureRest.staff-position = #6 R2.\fermataMarkup
	}
	R2.*22^\solo
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	
	
	\cueDuring #"cueVoiceHrnIIImII" #DOWN {
		R2.
% Bars 26 to 30
		R
		R
		R
		R
		r4 r } \clef bass c~\p^\tutti \bar "||" \mark \default
% Bars 31 to 35
	c2.~
	c~
	c~
	c2 c4~
	c2.\<~
% Bars 36 to 40
	c2\> r4\!
	R2.*2^\solo
	
	\clef treble
	g''2.\p~
% Bars 41 to 45
	g2 e'4(
	d2.)~
	d2 d4(
	g,) r r
	R2.*7
% Bars 46 to 50
	
	
	
	
	\mark \default
% Bars 51 to 55
	c,2.\p~
	c2 r4
	r r c~
	c2.~
	c2 r4
% Bars 56 to 60
	R2.*7
% Bars 61 to 65
	
	
	r4 r ees\pp~
	ees2.~^\tutti
	ees2 r4
% Bars 66 to 70
	R2. \bar "||"
	R2.*2
	
	e4\f( a2)~
	a2.~
% Bars 71 to 75
	a4^\solo r r
	R2.
	d4.\f\> r8\! r4
	R2.*26
% Bars 76 to 80
	
% Bars 81 to 85
	
% Bars 86 to 90
	
% Bars 91 to 95
	
% Bars 96 to 100
	
	
	
	\mark \default
	R2.*6
% Bars 101 to 105
	
% Bars 106 to 110
	\cueDuring #"cueVoiceHrnIIImII" #DOWN {
		R2.
		R
		R
		R
		R
% Bars 111 to 115
		R
		\once \override MultiMeasureRest.staff-position = #6 R
		\once \override MultiMeasureRest.staff-position = #6 R
	}
	e,4(-\tweak X-offset #-3 \p\< a2)\>~
	a2.\!~
% Bars 116 to 118
	a~
	a2 r4
	R2.\fermataMarkup \bar "|."
}
