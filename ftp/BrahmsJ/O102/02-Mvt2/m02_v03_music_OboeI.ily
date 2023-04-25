%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicOboeIMvtII = \relative c''' {
	\clef treble
	\key d \major
%	\transposition a
% Bars 1 to 5
	\cueDuring #"cueVoiceOboeImII" #DOWN {
		\ni R2.\fermataMarkup
		R2.\fermataMarkup \no
	}
	\MmrLength #20 R2.*27 -\tweak X-offset #-2 ^\solo
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	
	
	\cueDuring #"cueVoiceOboeImII" #UP {
		\ni R2._\tutti \bar "||" \mark \default \key f \major
% Bars 31 to 35
		R2.
		R
		R
		r4 r \no } a4_\pdolce(~
	a\< g f
% Bars 36 to 40
	e\> d )\! g(
	f e d 
	b c) r^\solo
	\MmrLength #15 R2.*11
% Bars 41 to 45
	
% Bars 46 to 50
	
	
	
	
	\cueDuring #"cueVoiceOboeImII" #UP {
		\ni R2.\mark \default
% Bars 51 to 55
		R
		R
		R
		R
		R \no
	}
% Bars 56 to 60
	r4 r cis(
	d\< c! bes
	a\> g)\! r
	r r a'(
	bes a g
% Bars 61 to 65
	e f) r
	\MmrLength #15 R2.*2
	
	\MmrLength #15 R2.*2^\tutti
	
% Bars 66 to 70
	\cueDuring #"cueVoiceOboeImII" #UP {
		\ni R2. \bar "||" \key d \major
		R2.
		r4 r \no } fis(~_\mfcresc
	fis g a
	g fis) b(~
% Bars 71 to 75
	b^\solo e, fis)
	g2( fis4)
	g4.\f\> r8\! r4
	R2.*26
% Bars 76 to 80
	
% Bars 81 to 85
	
% Bars 86 to 90
	
% Bars 91 to 95
	
% Bars 96 to 100
	
	
	
	\mark \default
	R2.*11
% Bars 101 to 105
	
% Bars 106 to 110
	
% Bars 111 to 115
	\cueDuring #"cueVoiceOboeImII" #UP {
		\ni R2.
		R
		R
		R
		R
% Bars 116 to 118
		R
		R \no
	}
	fis2.\fermata\p \bar "|."
}
