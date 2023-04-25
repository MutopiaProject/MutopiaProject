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
	R2.\fermataMarkup
	\partcombineApart g4( c2)\fermata \partcombineAutomatic
	R2.*5
% Bars 6 to 10
	
	
	f,8(^\dolce\p\< d) d(\> bes)\! c4
	R2.
	f8(\< d) d(\> f,)\! e4
% Bars 11 to 15
	R2.*19
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	
	
	r4 r c'_\pdolce(~ \bar "||" \key aes \major \mark \default
% Bars 31 to 35
	c des ees
	des c) \partcombineChords f(
	g aes bes 
	aes ees) \partcombineAutomatic \shape #'((0 . 2)(0 . -.5)(0 . -.5)(0 . 2)) Slur c~(
	c bes aes 
% Bars 36 to 40
	g f) \shape #'((0 . 2)(0 . -1)(0 . -1)(0 . 2)) Slur bes(
	c cis d
	bes2) \partcombineApart bes4\pdolceD\<(
	des!4.) des4 des8(
	des)\> des4 des8(\! c) c(
% Bars 41 to 45
	bes4) r r
	r r bes\p(
	des4.) des8( ees) des~
	des des( bes') g( aes) ees(
	f8) \partcombineAutomatic r r4 r
% Bars 46 to 50
	R2.*4
	
	
	
	r4 r c(_\psempre~ \mark \default
% Bars 51 to 55
	c des ees
	des c) r
	r r \partcombineChords f(
	g aes bes
	aes ees) \partcombineAutomatic r
% Bars 56 to 60
	R2.*3
	
	
	r4 r ees(
	f ees des~
% Bars 61 to 65
	des c) r
	R2.*5
% Bars 66 to 70
	\bar "||" \key f \major
	R2.
	r4 r \shape #'((0 . -1.5)(0 . -0.5)(0 . 0)(0 . 0)) Slur c(~_\mfcresc
	c bes c
	bes a) r
% Bars 71 to 75
	R2.*2
	
	\partcombineChords <<g'4. {s8\f\> s s\!}>> \partcombineAutomatic r8 r4
	R2.*9
% Bars 76 to 80
	
% Bars 81 to 85
	
	
	\partcombineSoloI r4 r8 c,(_\p_\< f g
	c_\> a f c)\! r4 \partcombineAutomatic
	R2.
% Bars 86 to 90
	\partcombineSoloI r4 r8 a(_\< cis e
	a_\> fis d a)\! r4 \partcombineAutomatic
	R2.*12
% Bars 91 to 95
	
% Bars 96 to 100
	
	
	
	\mark \default
	a4(\pp bes c
% Bars 101 to 105
	bes a) d(
	e! f g
	f e) \partcombineApart f(
	ees2.)~_\dimmarkup
	ees4 a,8( c f, bes)~
% Bars 106 to 110
	bes4. r8 r4 \partcombineAutomatic
	R2.*4
	
	
	
% Bars 111 to 115
	\partcombineSoloI r4 r f'(_\f~
	f e\dimD\> d
	c bes) bes(~
	bes_\p a) r \partcombineAutomatic
	R2.*3
% Bars 116 to 118
	
	
	a'2.\p\fermata \bar "|."
}
