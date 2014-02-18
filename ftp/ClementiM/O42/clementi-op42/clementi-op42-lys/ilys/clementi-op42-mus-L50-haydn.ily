\version "2.16.1"
\include "definitions.ily"

% LESSON L. Minuet by Haydn in C sharp minor.

%---------------------------DEFINITIONS

global = { \key cis \minor \time 3/4 }
tempoLegend = \markup { \right-align "Moderato" }
fine = \markup { \left-align "Fine." }
ten = \markup { \left-align \small "ten" }
turnSharp = \markup { \override #'(baseline-skip . 1.5 ) \column { \center-align { \teeny \musicglyph #"accidentals.sharp" \musicglyph #"scripts.turn" }  } }
highThree = \markup { \override #'(baseline-skip . 1.3 ) \column { \left-align { \finger " 3" " " }  } }
pushTextScriptLeft = \once \override Voice.TextScript #'extra-offset = #'(-1.9 . 0.0 )
pushDynamicTextLeft = \once \override Voice.DynamicText #'extra-offset = #'(-0.4 . 0.0 )
elongateStem = \once \override Stem #'length-fraction = #(magstep 0)
liftFF = \markup { \left-align \column { \dynamic "ff" " " } }
hideP = \tweak #'stencil ##f\p
hideFF = \tweak #'stencil ##f\ff
insertDaCapo = \markup { \left-align \large \bold "D.C. " }
centerDC = \once \override Voice.TextScript #'extra-offset = #'(0.0 . -2.2 )

nb = \noBreak

%---------------------------TYPESET

LessonLUpperOne = \relative c''{
     \tempo 4=100 \hideTempo
     \clef treble
     
     \stemDown
     cis4-2^\tempoLegend-\hideP ~ cis16 dis-3 cis-2 bis-1 cis-2 dis-3 e-1 fis-3| % 1
     gis4-4 gis-. gis-.                                                        | % 2
     fisis2(-3 gis4)-4 \stemUp                                                 | % 3
     <dis-2>2.^\ten  \stemDown                                                 | % 4
     fis4-3 ~ fis8 a16 gis fis e-1 dis-2 fis-4                                 | % 5
     e4-3 cis-2 cis                                                            | % 6
     fis2\tenuto( \pushTextScriptLeft gis4)^\turnSharp                         | % 7
     cis,4_\fine b\rest b\rest                                                 | % 8
     
     \repeat volta 2 {
     e4-3 ~ e16 fis-4 e-3 dis-2 e-1 fis-2 gis a                                | % 9
     b4 b b                                                                    | %10
     e,4-1 ~ e16 fis-4 e-3 dis!-2 e-1 fis-2 gis-3 a32-1 b-2                    | %11
     cis4-3 cis-4 cis                                                          | %12
     b4-3 ~ b16 cis b ais b cis b a-1                                          | %13
     gis8-. b,\rest fis'-. b,\rest e-. b\rest                                  | %14
     b'4-3 ~ b16 cis b ais b cis b a-1                                         | %15
     gis16-3 b-5 a-4 gis-3 fis-2 a-4 gis fis e-1 gis-3 fis e \stemUp           | %16
     dis4(-2 cis)-1 <cis'^5>                                                   | %17
     <e,^1>2 \grace {gis16-5} fis8.-2-4 e16^\highThree                         | %18
     e4-. r \stemDown bis'16-3 cis-4 bis cis \stemUp                           | %19
     <e,^1>2 \pushDynamicTextLeft \grace {gis8_\ff} <dis fis>4                 | %20
     <cis e>4 <bis dis> cis                                                    | %21
     dis\turn fis a                                                            | %22
     cis,2 bis4                                                                | %23 
     }
}

LessonLUpperTwo = \relative c''{
	\repeat unfold 8 { s2. }                                               | % 1-8
	
	\repeat volta 2 {
	\repeat unfold 9 { s2. } \stemDown                                     | % 9-17 
	s2 \shiftOn dis4-\hideP                                                | %18
	s2.                                                                    | %19
	s2 \shiftOff \ignoreClashNoteOnce <fis, a>4-\hideFF                    | %20
	\repeat unfold 3 { s2. }                                               | %21-23
	}
	
}

LessonLUpper = { << { \LessonLUpperOne } \\ { \LessonLUpperTwo } >> }

LessonLLowerOne = \relative c' {
	\clef bass
	\stemDown
        <cis e>4-2-1-\hideP \stemUp <cis, e^4^2> d\rest \stemDown              | % 1
        <cis'e>4 d,\rest d\rest                                                | % 2
        cis'2-4 bis4-5 \staffUp                                                | % 3
        <a'! fis_1_2>2. \staffDown                                             | % 4
        <bis, dis>4-5-3 \stemUp <bis, dis>-5-3 d\rest                          | % 5
        <cis e> d\rest \stemDown <a' cis>-3-2                                  | % 6
        <fis dis'>2(-5-1 <gis bis>4)-3-2                                       | % 7
        <cis, cis'>4 d\rest d\rest                                             | % 8
        
        \repeat volta 2 {
        <e' gis>4-3-2 <e, gis>-5-3 d\rest \stemUp                              | % 9
        <d'^5^1>2. ~                                                           | %10
        d4 <cis^2>2  \stemDown                                                 | %11
        d,4\rest <fis a>-3-1 <e gis>-4-2                                       | %12
        <dis! fis>4-5-3 <dis' fis>-3-2 d,\rest                                 | %13
        <e gis>8-. d\rest <fis a>-. d\rest <gis b>-. d\rest                    | %14
        <dis fis>4 <dis' fis> d,\rest                                          | %15
        <e gis>8 d\rest <fis a> d\rest <gis b> d\rest                          | %16
        r4 r \staffUp <a''_1>4                                                 | %17
        <gis_2>2  <a_1>4                                                       | %18
        <gis e_2_4>4 \staffDown d,\rest d\rest \staffUp                        | %19
        gis'2 \crossStaff { dis4-\hideFF }                                     | %20
        <cis e gis>4 <dis fis> <e gis>                                         | %21
        <fis a>2.                                                              | %22
        e2  dis4                                                               | %23
        }
        
        \stopStaff \centerDC s2._\insertDaCapo
}

LessonLLowerTwo = \relative c' {
        \repeat unfold 2 { s2. }   \stemUp                                     | % 1-2
        <dis^3>2.-\hideP                                                       | % 3
        \repeat unfold 5 { s2. }   \stemDown                                   | % 4-8
        
        \repeat volta 2 {
        s2.                                                                    | % 9
        gis,2.   \allowFingeringInStaff                                        | %10
        <a_4>2.                                                                | %11
        \repeat unfold 5 { s2. }                                               | %12-16
        a2.                                                                    | %17
        <b^5>2.                                                                | %18
        s2.                                                                    | %19
        b2 bis4-\hideFF                                                        | %20
        s2. s2.                                                                | %21-22
        gis2.                                                                  | %23
        \stopStaff s2.
        }
}

LessonLLower = { << { \LessonLLowerOne } \\ { \LessonLLowerTwo } >> }
