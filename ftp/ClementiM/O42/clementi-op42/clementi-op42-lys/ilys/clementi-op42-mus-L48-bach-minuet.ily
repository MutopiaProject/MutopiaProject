\version "2.16.1"
\include "definitions.ily"

% LESSON XLVIII. Minuet (E Maj) by Bach (BWV 817).

%---------------------------DEFINITIONS
	tempoLegend = \markup { \right-align "Allegretto" }
	pieceLegend = #"Minuet"
	global = { \key e \major \time 3/4 }
	setTempo = { \tempo 4=120 \hideTempo }
	staffDown = \change Staff = "lower"
	paddedPiano = \markup { \column { " " \dynamic "p" } }
	hideP = \tweak #'stencil ##f\p
	angleBeamOne = \once \override Beam #'positions = #'( -0.9 . -0.9 )
	angleBeamTwo = \once \override Beam #'positions = #'( -2.1 . -1.6 )
	angleBeamThree = \once \override Beam #'positions = #'( -0.1 . -0.1 )
	angleBeamFour = \once \override Beam #'positions = #'( 2.2 . 1.7 )
	nb = \noBreak

%--------------------------- TYPESET

LessonXLVIIIUpperOne = \relative c''{
	\clef treble
	\setTempo
	
	\repeat volta 2 {
	gis8_(-3-\hideP^\tempoLegend fis-2 e-1 fis gis a)-1       | % 1
	<b^2^4>4( <cis^3^5>) b-.                                               | % 2
	dis,8-2[ e-1 fis gis] \stemDown a-1 dis-3  \stemUp                     | % 3
	<e^1^4>4( <fis^1^5>) e-.                                               | % 4
	\stemDown gis8-5 fis-4 e-1 dis-3 cis b \stemUp                         | % 5
	<fis'^2^4>4( <gis^1^5>) fis-.                                          | % 6
	b,8-4_( ais-3 gis-2 fis)-1 e'-5_( dis)-4                               | % 7
	<cis^1>4(^\switchThreeFive <b^2^4>2)                                   | % 8
	}
	\repeat volta 2 {
        \stemDown
        dis8-3-\hideP cis b cis dis e-1  \stemUp                               | % 9
        <fis^2^3>4( <gis^1^4>) fis-.  \stemDown                                | %10
        a!8(-5 gis-4 fis-3 e-1 dis-3 cis)-2                                    | %11
        bis8-1 a'-5 gis-4 fis-3 e-1 dis-4                                      | %12
        e8(-5 cis-4 gis-2 a-1 b-3 cis-4)                                       | %13
        d8-5[ b-3 cis-4 a-1] \stemUp \angleBeamFour b-5 dis,!-2                | %14
        e8-1 fis gis a-1 b-4 cis-5                                             | %15
        <fis,^2^3>2.                                                           | %16
        gis8_(-4 fis-3 e-1 fis-2 gis-3 a)-1                                    | %17
        <b^2^4>4( <cis^3^5>) b-.                                               | %18
        b,8-1 cis dis e-1 fis-2 gis-3                                          | %19
        <a^2^4>4( <b^3^5>) a-. \stemDown                                       | %20
        gis8-2 b-1 e(-3 dis)-2 gis(-4 fis)-3                                   | %21
        a8-5 gis-4 fis-3 e-1 dis-4 cis-3                                       | %22
        b8-2 e-5 \stemUp gis,4-1^\switchTwoFour \grace {gis8-5} <fis^2^4>8 e-3 | %23
        e2.-5                                                                  | %24
	}
}

LessonXLVIIIUpperTwo = \relative c''{
	\clef treble
	\setTempo
	
	\repeat volta 2 {
	s2.-\hideP                                                             | % 1
	gis4( a) gis-.                                                         | % 2
	s2.                                                                    | % 3
	gis4( a) gis-.                                                         | % 4
	s2.                                                                    | % 5
	ais4( b) ais-.                                                         | % 6
        s2.                                                                    | % 7
        e4( dis2)                                                              | % 8
	}
	
	\repeat volta 2 {
        s2.                                                                    | % 9
        dis'4( e) dis-.                                                        | %10
        \repeat unfold 5 { s2. }                                               | %11-15
        dis,2.                                                                 | %16
        s2.                                                                    | %17
        gis4( a) gis-.                                                         | %18
        s2.                                                                    | %19
        fis4( gis) fis-.                                                       | %20
        s2. s2.                                                                | %21-22
        s4 e4 dis                                                              | %23
        a8\rest b8-3 gis2-2 \staffUp                                           | %24
	}
}

LessonXLVIIIUpper = { << { \LessonXLVIIIUpperOne }\\{ \LessonXLVIIIUpperTwo } >> } 

LessonXLVIIILower = \relative c {
	\clef bass
	\forceFingeringToStem

	\repeat volta 2 {
	R2.-\hideP                                                  \nb        | % 1
	r8 e-1 dis-2 e-1 e,4-5                                      \nb        | % 2
	R2.                                                         \nb        | % 3
	r8 e' dis e e,4                                             \nb        | % 4
	R2.                                                         \nb        | % 5
	r8 \stemDown \angleBeamTwo e' dis e \stemUp e, \stemDown e'            | % 6
	\stemNeutral dis4-2 e-1 fis-2                               \nb        | % 7
	r8 b ais b b,4                                              \nb        | % 8
	}
	
	\repeat volta 2 {
        R2.                                                         \nb        | % 9
        r8 b'-1 ais-2 b-1 b,4-5                                     \nb        | %10
        R2.                                                         \nb        | %11
        r8 \angleBeamOne cis' bis cis cis,4                                    | %12
        R2.                                                         \nb        | %13
        r8 \stemDown \angleBeamThree a' gis a\stemUp a,\stemDown a' \nb        | %14
        gis4 fis e  \stemNeutral                                    \nb        | %15
        r8 b' a b b,4                                               \nb        | %16
        R2.                                                         \nb        | %17
        r8 b' a b b,4                                                          | %18
        R2.                                                         \nb        | %19
        r8 b' a b b,4                                               \nb        | %20
        R2.                                                         \nb        | %21
        r8 b' a b b,-5 a'-1                                         \nb        | %22
        gis8-3 a-2 b4-1 \stemUp b,-5 \stemDown                      \nb        | %23
        <e_1>4. \stemUp b8 e,4                                                 | %24
	}
}
