\version "2.18.2"

\include "defs.ily"

 trombe =  {
 \set Staff.instrumentName = "Trombe in F"
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 3/2
 \moreAccidentalPadding
 <c' c''>1.\fermata-\forteSforzato-\hideF
 R1. R1. R1. R1. R1. R1. R1. <c' c''>1.\ff
 << { c'2\staccato c'\staccato } \\ { c'2 c'2 } >> r2 r2 << { g'2 } \\ { g'2 } >> r2
 R1. R1. R1. R1. R1. << { R1. R1. } \\ { \posDynamicTxtD r2\pp g2_. g_. r2 g2 g } >>
 R1. R1. R1. R1. R1. R1. \bar "||"

 \time 3/4 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. r4 r4
 <g g'>4\ff ~ <g g'>2. ~ <g g'>2. ~ <g g'>4 <g g'> <g g'> <g g'> r4
 <g g'>4\ff ~ <g g'>2. ~ <g g'>2. ~ <g g'>4 <g g'> <g g'>
 <c' c''>4 r r <c' c''> r r <c' c''> r r <c' c''> <c' c''> <c' c''>
 <c' c''>4 r r <c' c''> r r <c' c''> r <c' c''> <c' c''> << { c'4 } \\ { c'4 } >> r4
 R2. <g g'>4 r r R2. R2. R2. <g g'>4 r r R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. <g g'>2.\ff <c' c''>2. <c' c''>2. R2.
 <g g'>4\f r r R2. <g g'>4 r r R2. <g g'>4 r r r <g g'> <g g'>
 R2. R2. <g g'>4 r r R2. <g g'>4 r r R2. <g g'>4\staccato r r R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. r4 r
 <g g'>4\ff ~ <g g'>2. ~ <g g'>2. ~ <g g'>4 <g g'> <g g'> <g g'> r
 <g g'>4\ff ~ <g g'>2. ~ <g g'>2. ~ <g g'>4 <g g'> <g g'> <c' c''> r r
 R2. R2. R2. R2. R2. r4 r << { c'4 c'4 } \\ { c'4\ff c'4 } >> r4 r R2. <c' c''>4 r r R2.
 << { c'4 } \\ { c'4 } >> r4 r R2. << { c'4 } \\ { c'4 } >> r4 r r r <g g'>4 R2. R2.
 <g g'>4 r r << { c'4 } \\ { c'4 } >> r4 r R2. <g g'>4 r r
 <g g'>4 r r << { c'4 } \\ { c'4 } >> r4 r R2. <g g'>4 r r
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. <g g'>2.\ff << { c'4 } \\ { c'4 } >> r r R2. R2. <g g'>4 r r
 << { c'4 } \\ { c'4\f } >> r4 r R2. <c' c''>4 r r R2. <c' c''>4 r r r <c' c''> <c' c''>
 <g g'>4 r r <g g'>4 r r <c' c''>4 r r <g g'>4 r r <c' c''>4 r r <g g'>4 r r
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 <g g'>4\ff <g g'> r8 <g g'> <g g'>4 <g g'> r8 <g g'> <g g'>4 <g g'> r r4 r r8 r^\fermata
 R2. R2. R2. R2. R2. R2. R2. R2.^\fermataMarkup \bar "||"

 \time 4/4 R1 R1 R1 R1 R1 R1 R1 <g g'>1-\hideP_\pCresc
 << { c''2 ~ c''8( g') e'\staccato g'\staccato c''2 ~ c''8( g') e'\staccato g'\staccato
 c''8( g') e'\staccato g'\staccato c''( g') e'\staccato g'\staccato
 c''8( g') e'\staccato g'\staccato c''( g') e'\staccato g'\staccato } \\
 { c'2\ff ~ c'8 g' e' g' c'2\sf ~ c'8 g' e' g'
 c'8\sf g' e' g' c'\sf g' e' g' c'\sf g' e' g' c'\sf g' e' g' } >>
 <c' c''>4 <c' c''>8 <c' c''> <c' c''>4 <c' c''>8 <c' c''>
 <c'' d''>4 <c'' d''>8 <c'' d''> <g' d''>4 <g' d''>8 <g' d''>
 << { c''2 ~ c''8( g') e'\staccato g'\staccato c''2 ~ c''8( g') e'\staccato g'\staccato
 c''8( g') e'\staccato g'\staccato c''( g') e'\staccato g'\staccato
 c''8( g') e'\staccato g'\staccato c''( g') e'\staccato g'\staccato } \\
 { c'2\sf ~ c'8 g' e' g' c'2\sf ~ c'8 g' e' g'
 c'8\sf g' e' g' c'\sf g' e' g' c'\sf g' e' g' c'\sf g' e' g' } >>
 <c' c''>4 <c' c''>8 <c' c''> <c' c''>4 <c' c''>8 <c' c''>
 <c'' d''>4 <c'' d''>8 <c'' d''> <g' d''>4 <g' d''>8 <g' d''> <c' c''>4 r r2 R1
 R1 R1 R1 R1 R1 R1
 <c' c''>4\ff <c' c''> <c' c''>8 r r4 r2 <g g'>4 <g g'> <c' c''>4 r <g g'> r <g g'> r <g g'> r
 <g g'>8 <g g'>16 <g g'> <g g'>8 <g g'> <g g'>[ <g g'>] <g g'> <g g'>
 <g g'>8[ <g g'>] <g g'> <g g'> <g g'>[ <g g'>] <g g'> <g g'>
 <g g'>4 <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'>
 <c' c''>4 r <g g'> r <g g'> r <g g'> r
 <g g'>8 <g g'>16 <g g'> <g g'>8 <g g'> <g g'>[ <g g'>] <g g'> <g g'>
 <g g'>8[ <g g'>] <g g'> <g g'> <g g'>[ <g g'>] <g g'> <g g'>
 <g g'>4 <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'>
 <c' c''>2. <g g'>4 <c' c''>4\staccato <g g'>4\staccato
 << { e'4\staccato } \\ { e'4 } >> <g g'>4\staccato
 <c' c''>2.\sf <g g'>4 <c' c''>4\staccato <g g'>4\staccato
 << { e'4\staccato } \\ { e'4 } >> <g g'>4\staccato
 <c' c''>2 <e' e''> << { g'2. } \\ { g'2.\sf } >> <g g'>4 <c' c''>2 <e' e''>
 << { g'2. } \\ { g'2.\sf } >> <g g'>4 <c' c''>2 <e' e''>
 << { g'2. } \\ { g'2.\sf } >> <g g'>4 << { g'2. } \\ { g'2.\sf } >> <g g'>4
 << { g'2. } \\ { g'2.\sf } >> <g g'>4 << { g'1 ~ g'1 } \\ { g'1\ff ~ g'1 } >>
 <c' c''>4 <e' g'>8. <e' g'>16 <c' c''>4 <e' g'>4 <c' c''>4 <e' g'>8. <e' g'>16 <c' c''>4 <e' g'>4
 <c' c''>4 <e' g'>8. <e' g'>16 <c' c''>4 <e' g'>4
 <c' c''>4 r << { c'4 } \\ { c'4 } >> r4 << { c'4 } \\ { c'4 } >> r4 r2 \bar "|."
}