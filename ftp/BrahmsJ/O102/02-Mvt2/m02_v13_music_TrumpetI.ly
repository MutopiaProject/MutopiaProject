% Project Name : Double Concerto Op102
% Fichier :      m02_v13_music_TrumpetI.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicTrumpetIMvtII = \relative c'' {
	\clef treble
	\key c \major
	\transposition d
% Bars 1 to 5
	\cueDuring #"cueVoiceTptImII" #UP {
		\ni \MmrPos #4 R2.\fermataMarkup
		\MmrPos #4 R2.\fermataMarkup \no
	}
	R2.*27-\tweak X-offset #-2.5 ^\solo -\tweak X-offset #8 ^\tutti
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	
	
	\cueDuring #"cueVoiceTptImII" #UP {
		\ni R2. \bar "||" \mark \default
% Bars 31 to 35
		R
		R
		R
		R
		R
% Bars 36 to 40
		R
		R
		R^\solo \no
	}
	R2.*12
% Bars 41 to 45
	
% Bars 46 to 50
	
	
	
	
	\mark \default
% Bars 51 to 55
	R2.*12
% Bars 56 to 60
	
% Bars 61 to 65
	
	
	\cueDuring #"cueVoiceTptImII" #DOWN {
		\ni R2.
		R^\tutti
		R
% Bars 66 to 70
		R \bar "||"
		R
		R \no
	}
	g4\f c2~
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
	\cueDuring #"cueVoiceTptImII" #DOWN {
		\ni R2.
% Bars 101 to 105
		R
		R
		R
		R
		R
% Bars 106 to 110
		R \no
	}
	R2.*4
% Bars 111 to 115
	\cueDuring #"cueVoiceTptImII" #DOWN {
		\ni R2.
		R
		R \no
	}
	g4-\tweak X-offset #-2 \p\< c2\>~
	c2.\!~
% Bars 116 to 118
	c~
	c2 r4
	c2.\fermata \bar "|."
}
