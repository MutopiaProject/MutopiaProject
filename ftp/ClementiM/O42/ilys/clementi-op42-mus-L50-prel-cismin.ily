\version "2.16.1"
\include "definitions.ily"

% LESSON L. Prelude in C sharp minor.

%---------------------------DEFINITIONS

global = { \key cis \minor \time 4/4 \clef treble }
tempoLegend = \markup { \right-align "Moderato" }
dolce = \markup { \center-align "dolce" }
rallentando = \markup { \small "rallentando" }
liftFF = \markup { \left-align \column { \dynamic "ff" " " } }
hideP = \tweak #'stencil ##f\p
hideMF = \tweak #'stencil ##f\mf
hideFF = \tweak #'stencil ##f\ff
hideHPC = \tweak #'stencil ##f\<
hideHPD = \tweak #'stencil ##f\>
switchSpecialOne = \markup { \override #'( baseline-skip . 1.5 ) \column { \switchFourFive \concat { \finger 2 \hspace #0.4 \finger 3 } } }
switchSpecialTwo = \markup { \override #'( baseline-skip . 1.5 ) \column { \switchTwoThree \concat { \finger 4 \hspace #0.4 \finger 5 } } }
alignBeamOne = \once \override Beam #'positions = #'( -0.2 . -1.4 )
alignBeamTwo = \once \override Beam #'positions = #'( -0.4 . -2.3 )
nb = \noBreak

%---------------------------TYPESET

LessonLPrelUpperOne = \relative c'''{
     \tempo 4=100 \hideTempo
     \stemDown
     b8\rest_\dolce^\tempoLegend-\hideP <gis e>4\(-3-5
             <dis fis>^\switchSpecialOne <cis e>-2-4 <bis dis>8-1-3 ~          | % 1
     <bis dis>8 <cis e>4^\switchSpecialOne <b d>-2-4\< <a cis>8\)\!-1-3 b4\rest| % 2
     b8\rest\p <cis e>4-3-5\( <a! dis!>-1-4 <a fis'>-1-5 <gis! e'>8-2-4\)      | % 3
     \stemUp r8 a'8([\> fis d)\!] r8 cis4( bis8)                               | % 4
     b8\rest-\hideFF <gis cis e>\arpeggio b\rest <fis gis bis>\arpeggio r
             cis'^\(^\rallentando e, fisis                                     | % 5
     \hideAccidental fisis8-\hideP gis \staffDown r <bis, fis> ~
             <bis fis>4. <cis e,>8\)                                           | % 6
}

LessonLPrelUpperTwo = \relative c''{
     \repeat unfold 3 { s1 }                                                   | % 1-3
     g8\rest a4. g4\rest gis                                                   | % 4
     s2 r8 cis,4. ~                                                            | % 5
     cis4\p s2.                                                                | % 6
}

LessonLPrelUpper = { << { \LessonLPrelUpperOne } \\ { \LessonLPrelUpperTwo } >> }

LessonLPrelLowerOne = \relative c' {
     \stemUp
     <cis e>4-5-3_\(-\hideP <dis fis>^\switchSpecialTwo <e gis>-4-2 <fis a>-3-1| % 1
     <e gis>4-4-2 \clef bass \stemDown <gis, e'>-5-1\)-\hideHPC
          <a e'>-4\! d,\rest                                                   | % 2
     <ais' g'>4-5-1_\(-\hideP <b fis'>^5^\switchTwoOne <bis dis!>-4-2 
          <cis e>-3-1\)                                                        | % 3
     d4.-2\(-\hideHPD fis8 \stemUp e4-\! dis\)                                 | % 4
     cis,,8_([^\liftFF-\hideFF cis'] dis,[ dis')] e,([ e'] a, e')              | % 5
     \alignBeamOne gis,8-\hideP[_\( \stemDown e'] \stemUp \alignBeamTwo gis,
          \stemDown dis' \stemUp \shiftOn cis, gis' \stemDown cis4\)           | % 6
     
}

LessonLPrelLowerTwo = \relative c {
	\repeat unfold 3 { s1 }                                                | % 1-3
	\stemDown \shiftOn \forceStemRight <fis_5>2-\hideMF\> gis\p            | % 4
	s2. a,4-\hideFF                                                        | % 5
        gis4-\hideP gis  cis,2                                                 | % 6
}

LessonLPrelLower = { << { \LessonLPrelLowerOne } \\ { \LessonLPrelLowerTwo } >> }
