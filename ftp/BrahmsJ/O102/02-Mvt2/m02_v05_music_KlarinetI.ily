%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicKlarinetIMvtII = \relative c''' {
	\clef treble
	\key f \major
	\transposition a
% Bars 1 to 5
	\ni R2.\fermata \no 
	<< {g4( c2)\fermata} {s8\p\< s s s\> s s\!} >>
	R2.*5^\solo
% Bars 6 to 10
	
	
	\hairpinShorten #'(-0.3 . 0) f,8([^\dolce-\offset X-offset #-1 \p\< d\!]) d(\> bes)\! c4
	R2.
	f8([\< d\!]) d(\> f,)\! e4
% Bars 11 to 15
	R2.*14
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	
	
	\ni \mmrPos #-6 R2.
% Bars 26 to 30
	\mmrPos #-4 R
	\mmrPos #-4 R
	\mmrPos #-8 R
	\mmrPos #-8 R \no
	\voiceOne r4 r-\tweak X-offset #-1.5 ^\tutti \oneVoice c'_\pdolce(~ \bar "||" \key aes \major \markWhiteout \mark \default
% Bars 31 to 35
	c des ees
	des c) f(
	g aes bes
	aes ees) c~(
	c bes\< aes\!
% Bars 36 to 40
	g\> f\!) bes(
	c cis d
	bes2) bes4^\solo -\tweak X-offset #0 _\pdolceD\<(
	des!4.) des4 des8~\!
	des\> des4 des8(\! c) c(
% Bars 41 to 45
	bes4) r r
	r r bes\p(
	des4.)\< des8( ees) des~\!
	des des\>( bes') g( aes) ees(
	f8\!) r r4 r
% Bars 46 to 50
	R2.*4
	
	
	
	r4 r c(_\psempre~ \mark \default
% Bars 51 to 55
	c des ees
	des c) r
	r r f(
	g aes bes
	aes ees) r
% Bars 56 to 60
	R2.*3
	
	
	r4 r ees(
	f ees des~
% Bars 61 to 65
	des c) r
	R2.*2
	
	R2.*2^\tutti
	
% Bars 66 to 70
	\ni \mmrPos #-4 R2. \bar "||" \key f \major
	\mmrPos #-4 R2. \no
	r4 r c(~_\mfcresc
	c bes c
	bes a) r
% Bars 71 to 75
	R2.*2^\solo
	
	g'4.\f\> r8\! r4
	R2.*5
% Bars 76 to 80
	
	
	
	\ni \mmrPos #-4 R2.
	\mmrPos #-4 R
% Bars 81 to 85
	\mmrPos #-4 R
	\mmrPos #-4 R \no
	r4 r8 c,(\p\< f g\!
	c\> a f c)\! r4
	R2.
% Bars 86 to 90
	r4 r8 a(\< cis e\!
	a\> fis d a)\! r4
	R2.*7
% Bars 91 to 95
	
	
	
	
	\ni \mmrPos #-4 R2.
% Bars 96 to 100
	\mmrPos #-4 R
	\mmrPos #-8 R
	\mmrPos #-8 R
	\mmrPos #-4 R \mark \default \no
	a4(\pp bes c
% Bars 101 to 105
	bes a) d(
	e! f g
	f e) f(
	ees2.)~_\dimmarkup
	ees4 a,8( c f, bes)~
% Bars 106 to 110
	bes4. r8 r4
	R2.*4
	
	
	
% Bars 111 to 115
	r4 r f'(\f~
	f e_\dimD\> d
	c bes) bes(~\!
	bes\p a) r
	R2.*3
% Bars 116 to 118
	
	
	a'2.\p\fermata \bar "|."
}
