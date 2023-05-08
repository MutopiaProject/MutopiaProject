%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicTrumpetIIMvtII = \relative c' {
	\clef treble
	\key c \major
	\transposition d
% Bars 1 to 5
	\cueDuring #"cueVoiceTptIImII" #DOWN {
		\ni R2.\fermata
		R2.\fermata \no
	}
	R2.*27-\tweak X-offset #-2.5 ^\solo 
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	
	
	\cueDuring #"cueVoiceTptIImII" #UP {
		\ni R2.-\tweak X-offset #3 ^\tutti \bar "||" \mark \default
% Bars 31 to 35
		R
		R
		R
		R
		R
% Bars 36 to 40
		R
		R
		R \no
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
		\ni \MmrPos #-6 R2.
		R-\tweak X-offset #0 ^\tutti
		R \revert MultiMeasureRest.staff-position
% Bars 66 to 70
		R \bar "||"
		R
		R \no
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
		\ni \MmrPos #-6 R2.
% Bars 101 to 105
		\MmrPos #-6 R
		R
		R
		R
		\MmrPos #-8 R
% Bars 106 to 110
		R \no
	}
	R2.*4
% Bars 111 to 115
	\cueDuring #"cueVoiceTptIImII" #UP {
		\ni R2.
		R
		\MmrPos #-6 R \no
	}
	g4-\tweak X-offset #-1.5 \p\<( c2\>)~
	c2.\!~
% Bars 116 to 118
	c~
	c2 r4
	c2.\fermata \bar "|."
}
