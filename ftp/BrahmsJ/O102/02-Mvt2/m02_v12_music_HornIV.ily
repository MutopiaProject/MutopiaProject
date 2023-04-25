%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicHornIVMvtII = \relative c, {
	\clef treble
	\key c \major
	\transposition f
% Bars 1 to 5
	\mark \markup {\abs-fontsize #16 "in F"} \cueDuring #"cueVoiceHrnIVmII" #DOWN {
		\ni R2.\fermataMarkup
		\MmrPos #6 R2.\fermataMarkup \no
	}
	R2.*22^\solo
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	
	
	\cueDuring #"cueVoiceHrnIVmII" #DOWN {
		\ni R2.
% Bars 26 to 30
		R
		R
		R
		R
		r4 r \no } \clef bass c~\p^\tutti \bar "||" \mark \default
% Bars 31 to 35
	c2.~
	c~
	c~
	c2 c4~
	c2.\<~
% Bars 36 to 40
	c2\> r4\!
	R2.
	r4 r r^\solo
	\clef treble R2.*8
	
	%g''2.\p~
% Bars 41 to 45
	%g2 e'4(
	%d2.)~
	%d2 d4(
	%g,) r r
	%R2.*7
% Bars 46 to 50
	
	\cueDuring #"cueVoiceHrnIVmII" #DOWN {
		\ni R2.
		R
		R
		R \mark \default \no
	}
% Bars 51 to 55
	\clef bass c'2.\p~
	c2 r4
	r r c~
	c2.~
	c2 r4
% Bars 56 to 60
	R2.*7
% Bars 61 to 65
	
	
	r4 r \clef treble ees'\pp~
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
	b4.\f\> r8\! r4
	\MmrLength #12 R2.*26
% Bars 76 to 80
	
% Bars 81 to 85
	
% Bars 86 to 90
	
% Bars 91 to 95
	
% Bars 96 to 100
	
	
	
	\mark \default
	R2.*6
% Bars 101 to 105
	
% Bars 106 to 110
	\cueDuring #"cueVoiceHrnIVmII" #DOWN {
		\ni R2.
		R
		R
		R
		R
% Bars 111 to 115
		R
		\MmrPos #6 R
		\MmrPos #6 R \no
	}
	e,4(\p\< a2)\>~
	a2.\!~
% Bars 116 to 118
	a~
	a2 r4
	\ni R2.\fermataMarkup \bar "|."
}
