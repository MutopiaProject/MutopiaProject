% Project Name : Double Concerto Op102
% Fichier :      m02_v14_music_TrumpetII.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicTrumpetIIMvtII = \relative c' {
	\clef treble
	\key c \major
	\transposition d
% Bars 1 to 5
	\cueDuring #"cueVoiceTptIImII" #DOWN {
		R2.\fermataMarkup
		R2.\fermataMarkup
	}
	R2.*27-\tweak X-offset #-2.5 ^\solo -\tweak X-offset #8 ^\tutti
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	
	
	\cueDuring #"cueVoiceTptIImII" #UP {
		R2. \bar "||" \mark \default
% Bars 31 to 35
		R
		R
		R
		R
		R
% Bars 36 to 40
		R
		R
		R
	}
	R2.*12^\solo
% Bars 41 to 45
	
% Bars 46 to 50
	
	
	
	
	\mark \default
% Bars 51 to 55
	R2.*12
% Bars 56 to 60
	
% Bars 61 to 65
	
	
	\cueDuring #"cueVoiceTptIImII" #UP {
		\override MultiMeasureRest.staff-position = #-6 R2.
		R-\tweak X-offset #0 ^\tutti
		R \revert MultiMeasureRest.staff-position
% Bars 66 to 70
		R \bar "||"
		R
		R
	}
	g4\f( c2)~
	c2.~
% Bars 71 to 75
	c4^\solo r r
	R2.*28
% Bars 76 to 80
	
% Bars 81 to 85
	
% Bars 86 to 90
	
% Bars 91 to 95
	
% Bars 96 to 100
	
	
	
	\mark \default
	\cueDuring #"cueVoiceTptIImII" #UP {
		\once \override MultiMeasureRest.staff-position = #-6 R2.
% Bars 101 to 105
		\once \override MultiMeasureRest.staff-position = #-6 R
		R
		R
		R
		\once \override MultiMeasureRest.staff-position = #-8 R
% Bars 106 to 110
		R
	}
	R2.*4
% Bars 111 to 115
	\cueDuring #"cueVoiceTptIImII" #UP {
		R2.
		R
		\once \override MultiMeasureRest.staff-position = #-6 R
	}
	g4-\tweak X-offset #-1.5 \p\<( c2\>)~
	c2.\!~
% Bars 116 to 118
	c~
	c2 r4
	c2.\fermata \bar "|."
}
