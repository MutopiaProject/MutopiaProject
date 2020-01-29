% Project Name : Double Concerto Op102
% Fichier :      m02_v09_music_HornI.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicHornIMvtII = \relative c'' {
	\clef treble
	\key c \major
	\transposition d
% Bars 1 to 5
	\mark \markup {\abs-fontsize #16 "in D"} << {g4(^\solo c2)\fermata } {s8\f\< s s s\> s s\!} >>
	<< {d4( g2)\fermata} {s8\p\< s s s\> s s\!} >>
	R2.*27^\solo
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	
	
	\cueDuring #"cueVoiceHrnImII" #UP { 
		\ni R2. \mark \default \bar "||"
% Bars 31 to 35
		R^\tutti
		R
		R
		R
		R
% Bars 36 to 40
		R \no
	}
	R2.*2
	
	\textLengthOn R2.*12^\solo \textLengthOff
% Bars 41 to 45
	
% Bars 46 to 50
	
	
	
	
	\mark \default
% Bars 51 to 55
	R2.*12
% Bars 56 to 60
	
% Bars 61 to 65
	
	
	\cueDuring #"cueVoiceHrnImII" #UP {
		\ni R2.
		R-\tweak X-offset 1 ^\tutti
		R
% Bars 66 to 70
		R \bar "||"
		R
		R \no
	}
	g,,4\f( c2)~
	c2.~
% Bars 71 to 75
	c4 r^\solo r
	R2.
	g'4.\f\> r8\! r4
	R2.*26
% Bars 76 to 80
	
% Bars 81 to 85
	
% Bars 86 to 90
	
% Bars 91 to 95
	
% Bars 96 to 100
	
	
	
	\mark \default
	\cueDuring #"cueVoiceHrnImII" #DOWN {
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
	\cueDuring #"cueVoiceHrnImII" #DOWN {
		\ni R2.
		R
		R \no
	}
	g,4(-\tweak X-offset #-1.5 \p\< c2\>)~
	c2.~\!
% Bars 116 to 118
	c~
	c2 r4
	g''2.\p\fermata \bar "|."
}
