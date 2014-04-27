%--------------------------- HEADERS

\version "2.18.0"
\include "articulate.ly"

\paper {
	top-margin = 8\mm
	top-markup-spacing #'basic-distance = #8
	system-system-spacing #'basic-distance = #15
}

\header {
  title = "Polonaise"
  composer = "Johann Sebastian Bach"
	
  mutopiatitle = "Polonaise"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Clavichord, Piano"
  source = "C.F. Peters, n.d."
  editor = "Carl Czerny, F.C. Griepenkeri, F.A. Roitzsch, S. Didenko"
  websource = "IMSLP #62909"
  license = "Creative Commons Attribution 4.0"
  maintainer = "Javier Ruiz-Alma"

  mutopiaopus = "BWV 817"
  mutopiastyle = "Baroque"

 footer = "Mutopia-2014/04/27-1935"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


%--------------------------- DEFINITIONS

	global = { \key e \major \time 3/4 }
	setTempo = \tempo "Allegretto Grazioso" 4=100 
	
	switchThreeFour = \markup{ \left-align \override #'( baseline-skip . 0 ) \column { \raise #-0.2 \char ##x2040 \finger \concat { "3" \hspace #0.2 "4" } } }
	switchThreeFive = \markup{ \left-align \override #'( baseline-skip . 0 ) \column { \raise #-0.2 \char ##x2040 \finger \concat { "3" \hspace #0.2 "5" } } }
	switchFourFive = \markup{ \left-align \override #'( baseline-skip . 0 ) \column { \raise #-0.2 \char ##x2040 \finger \concat { "4" \hspace #0.2 "5" } } }
	switchInvTwoOne = \markup{ \left-align \override #'( baseline-skip . 1.5 ) \column { \finger \concat { "2" \hspace #0.2 "1 "} \raise #-1 \rotate #-180 \char ##x2040 } }
	addPadding = \once \override Script.padding = #0.7
	
	pDolce = \markup { \dynamic "p" \italic " dolce" }
	paddedPiano = \markup { \column { " " \dynamic "p" } }
	crescen = \markup { \column{ " " \italic "cresc." } }
	crescendo = \markup { \italic "cresc." }
	ctrCresc = \markup { \center-align \column{ " " \italic "cresc." } }
	hideP = \tweak stencil ##f\p
	hideF = \tweak stencil ##f\f
	forceFingeringToStem = \override Fingering.add-stem-support = ##t
	pushFingerUp = \once \override Fingering.extra-offset = #'(0.0 . 1.4 )
	angleBeamOne = \once \override Beam.positions = #'( -4.0 . -3.3 )
	angleBeamTwo = \once \override Beam.positions = #'( -0.9 . -0.9 )
	angleBeamThree = \once \override Beam.positions = #'( -1.8 . -1.8 )
	angleBeamFour = \once \override Beam.positions = #'( -1.8 . -2.2 )
	angleBeamFive = \once \override Beam.positions = #'( 2.4 . 2.8 )
	angleBeamSix = \once \override Beam.positions = #'( 3.2 . 3.6 )
	shapeSlurOne = \once \override Slur.control-points = #'( ( 1.594 . 2.59) ( 6.5753 . 5.479) ( 16.338 . 4.383) ( 20.323 . 1.693) )
	shapeSlurTwo = \once \override Slur.control-points = #'( ( 1.594 . 3.785) ( 4.9813 . 5.28) ( 9.7634 . 5.778) ( 13.549 . 3.287) )
	nb = \noBreak
	firstTrebleVolta = {
		gis16-3(_\pDolce-\hideP a b8 a4 gis)^\switchThreeFour	\nb	| % 1
		fis8( dis) \addPadding e2\turn				\nb	| % 2
		b8( d)-3 d(-4 cis) cis(-4 b)				\nb	| % 3
		b16(-5 a gis fis gis4 e)					| % 4
		gis'16(-3_\crescen a b8 a4 gis)^\switchThreeFive	\nb	| % 5
		ais,8(-1 cis) fis2					\nb	| % 6
		\shapeSlurOne
		fis,8(-1\< gis16 ais b8-1 cis16 dis\! e8 dis16 cis)	\nb	| % 7
		fis16(\> e dis cis  b2)\!				\nb	| % 8
	}
	secondTrebleVolta = {
		dis16(-2_\paddedPiano-\hideP e fis8 e4 dis)_\ctrCresc		| % 9
		a'8( fis)-2 \addPadding gis2\turn 			\nb	| %10
		bis,8( fis')-3 fis(-4 e) e(-4 dis)			\nb	| %11
		dis16(-4 cis bis cis\> dis4 gis,)\!			\nb	| %12
		d'16(-3\f cis bis cis)
		d16( cis bis cis \addPadding b'!4)\accent		\nb	| %13
		d,16( cis bis cis)
		d16( cis bis cis \addPadding a'4)\accent			| %14
		\shapeSlurTwo 
		gis,8(-1\< ais16 \pushFingerUp <bis^1> cis8 dis16\!
		      e) dis8( cis16 bis)				\nb	| %15
		cis4-.\mordent-3 cis2\>-5				\nb	| %16
		gis16(-2\p a! b8 a4 gis)				\nb	| %17
		d'8( b) cis2^\switchFourFive \stemUp 			\nb	| %18
		ais8(-3\mf b16 cis) b8 ais gis fis \stemNeutral			| %19
		e'16-4 dis! cis e dis4 b ~				\nb	| %20
		b16_\crescendo cis dis e  fis e dis e a,4 ~		\nb	| %21
		a16 cis dis e fis e dis e gis,4-1 ~			\nb	| %22
		gis8\< ais16 b  \stemUp cis b ais\! b
		     \angleBeamSix fis8-. dis'-4-.			\nb	| %23
	\stemNeutral
	}
	lastTrebleBarPrint = {
		dis16(-2\> e fis dis)  \grace { dis4( }  e2)\mordent\p		| %24
	}
	lastTrebleBarMIDI = {
		dis16(-2\> e fis dis) e2\mordent\p				| %24
	}


%--------------------------- TYPESET MUSIC

upperPrint= \relative c'''{
	\clef treble
	\setTempo
	\repeat volta 2 {
	\firstTrebleVolta
	}
	\repeat volta 2 {
	\secondTrebleVolta
	\lastTrebleBarPrint					
	}
}

upperMIDI= \relative c'''{
	\clef treble
	\setTempo
	\repeat volta 2 {
	\firstTrebleVolta
	}
	\repeat volta 2 {
	\secondTrebleVolta
	\lastTrebleBarMIDI					
	}
}

lower= \relative c' {
	\clef bass
	\forceFingeringToStem
	
	\repeat volta 2 {
	\angleBeamTwo e8( dis cis e <b_3> e)			| % 1
	<a,_3>8( <b_2> gis b fis b)				| % 2
	\angleBeamThree gis8 e' a, e' gis, e'			| % 3
	fis,8 <dis'_2> e-. e, gis <b_2>				| % 4
	\angleBeamTwo e8 dis cis e <b_3> e			| % 5
	cis8 e b e <ais,_3> e'					| % 6
	<b_2>8( <dis_1>) dis,( b' fis ais)			| % 7
	b8 fis dis fis b,4					| % 8
	}
	
	\repeat volta 2 {
	b'8-\hideP a! gis b fis a				| % 9
	\angleBeamFour
	<bis_1>8 <cis_2> dis <fis,_4> <cis'_1> <e,_5>		| %10
	<dis_3>8 cis bis gis' cis, gis'				| %11
	\angleBeamOne gis,8-.[ a'(] gis a16 gis fis8 gis16 fis)	| %12
	eis8-\hideF gis cis, gis' eis gis			| %13
	fis8 a e! gis <dis!_4> fis				| %14
	\stemDown e8 dis e fis gis gis,	\stemNeutral		| %15
	\angleBeamFive <cis_1>8 gis cis, gis' cis <dis_2>	| %16
	e8 b e, e' dis e					| %17
	\stemDown a,8 a' e <cis_3> e g \stemNeutral		| %18
	fis8_\switchInvTwoOne cis fis, fis' eis fis		| %19
	b,8 b' fis <dis_3> fis a!				| %20
	gis8( b,) <a'_1>( <cis,_5>) <b'_1>( <dis,_5>)		| %21
	<cis'_2>8( e,) dis'( <fis,_5>) e' dis			| %22
	cis8 <b_1> ais fis b b,					| %23
	e8 b e, b' e4						| %24
	}
}

%----------------------------- PRINT MUSIC

\score {
	  \new PianoStaff
	  <<
	  	  \new Staff = "upper" { \global \upperPrint }
	  	  \new Staff = "lower" { \global \lower }
	  >>
	  \layout { }
}

%----------------------------- PLAY MUSIC

\score {
	  \new PianoStaff
	  \unfoldRepeats \articulate
	  <<
	  	  \new Staff = "upper" { \global \upperMIDI }
	  	  \new Staff = "lower" { \global \lower }
	  >>
	  \midi   { }
}
