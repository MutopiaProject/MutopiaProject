\version "2.16.1"
\include "definitions.ily"

% LESSON XLIX. Gavotta by Corelli.

%---------------------------DEFINITIONS
	tempoLegend = \markup { \right-align "Allegro" }
	dynamicLegend = \markup { \right-align \concat { "1" \super "st" " time piano  2" \super "d" " time forte." } }
	global = { \key e \major \time 2/4 }
	setTempo = { \tempo 4=105 \hideTempo }
	staffDown = \change Staff = "lower"
	paddedPiano = \markup { \column { " " \dynamic "p" } }
	hideP = \tweak #'stencil ##f\p
	angleBeamOne = \once \override Beam #'positions = #'( -1.2 . 0.2 )
	nb = \noBreak

%--------------------------- TYPESET

LessonXLVIIIUpper = \relative c''{
	\clef treble
	\setTempo
	
	\repeat volta 2 {
	\partial 4
	e16-2^\tempoLegend gis fis e                                           | % partial
	b'-5 b, dis b e-2 gis fis e_\dynamicLegend                             | % 1
	b'-5 b, dis b e-2 gis-4 fis-3 e-1                                      | % 2
	dis16-2 fis-3 b-5 dis,-2 cis-1 b'-5 ais-4 cis,-2                       | % 3
	b4-1
	}

	\repeat volta 2 {
        b16-1 e-3 dis-2 e-3                                                    | % 4
        cis-2 fis-4 e-3 fis-4 cis fis e fis                                    | % 5
        dis-2 gis-5 fis gis dis gis fis gis                                    | % 6
        e16-3 gis-5 fis e \preTrill dis4\trill^\switchFourThree                | % 7
        cis4-2 e16-4 dis-3 e-4 b-1                                             | % 8
        \repeat unfold 2 { e dis e b }                                         | % 9
        e dis e b  e-5 dis-4 e-5 b-2                                           | %10
        cis16 dis e a,-2 \preTrill a4\trill^\switchThreeTwo                    | %11
        e4-1 e'16-5\p dis-4 e-5 b-2                                            | %12
        \repeat unfold 4 { e16 dis e b }                                       | %13-14
        cis16 dis e fis, fis4\trill                                            | %15
        e4                                                                       %16
	}
}

LessonXLVIIILower = \relative c {
	\clef bass

	\repeat volta 2 {
        \partial 4
        e4-2                                                           \nb     | %partial
        dis4-3 cis-4                                                   \nb     | % 1
        b4-5 gis'8-3 ais-2                                             \nb     | % 2
        b8-1[ dis,-4 e-3 fis-2]                                        \nb     | % 3
        b,4-5                                                          \nb
	}
	
	\repeat volta 2 {
        gis'4-2                                                                | % 4
        a-1 ais-2                                                      \nb     | % 5
        b-1 bis-2                                                      \nb     | % 6
        \stemDown \angleBeamOne
        cis8-1[ fis,-3 gis-1 \stemUp gis,-5] \stemNeutral              \nb     | % 7
        cis4-2 gis-5                                                   \nb     | % 8
        a-4 b-3                                                        \nb     | % 9
        cis-2 gis-5                                                            | %10
        a b                                                            \nb     | %11
        e-1 gis,-5                                                     \nb     | %12
        a b                                                            \nb     | %13
        cis-2 gis-4                                                    \nb     | %14
        a b                                                            \nb     | %15
        e,4                                                                      %16
	}
}
