\version "2.18.2"

 cornies =  {
 \set Staff.instrumentName = "Corni in Es"
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 3/2
 \moreAccidentalPadding
 <d'' d''>1.\fermata-\hideF_\forteSforzato
 R1. R1. R1. R1. R1. R1. R1. <d'' d''>1.\ff
 << { d''2\staccato d''2\staccato } \\ { d''2 d''2 } >> r4 r8 << { d''8 } \\ { d''8 } >>
 <c' c''>2\staccato <c' c''>2\staccato r2 R1. R1. R1.
 << { r2 \posDynamicTxtC d''_\pp\staccato d''2\staccato r2 d''2\staccato d''2\staccato
 r2 c''2\staccato c''2\staccato r2 c'' c'' r2 g' d'' r2 g' g' } \\
 { R1. R1. R1. R1. R1. R1. } >>
 r2 <g' e''>2\pp <g' e''>2 R1. R1. R1. \bar "||"

 \time 3/4 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r4 \hairpinPastBarline d''4\p\< ~ d''2.\> ~ d''4\! r4 r4
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. r4 r4
 <d'' f''>4\ff ~ <d'' f''>2. ~ <d'' f''>2. ~ <d'' f''>4 <d'' f''> <d'' f''>
 << { e''4 } \\ { e''4 } >> r4
 << { e''4 ~ e''2. ~ e''2. ~ e''4 } \\ { e''4\ff( g'2.) ~ g'2. ~ g'4 } >> <g' e''>4
 << { e''4 } \\ { e''4 } >> << { d''4 } \\ { d''4 } >> r4 r4
 << { d''4 } \\ { d''4 } >> r4 r4 << { d''4 } \\ { d''4 } >> r4 r4
 << { d''4 d'' d'' d'' } \\ { d''4 d'' d'' d'' } >> r4 r4
 << { d''4 } \\ { d''4 } >> r4 r4 << { d''4 } \\ { d''4 } >> r4 << { d''4 } \\ { d''4 } >>
 << { f''4 f'' f'' } \\ { f''4 f'' f''} >>
 <c' c''>2.\sf <c' c''>2.\sf <c' c''>2.\sf <c' c''>2.\sf
 <c' c''>2.\sf <c' c''>2.\sf <c' c''>2.\sf <c' c''>4 r r R2. R2.
 << { c''2._\pDolce-\hideP ~ c''2. } \\ { R2. R2. } >> R2. R2.
 << { c''2._\pDolce ~ c''2. } \\ { R2. R2. } >> R2. R2.
 R2. R2. R2. R2. R2. R2. <g' d''>2.\f <c' c''>2.\ff <c' c''>4 <c' c''> <c' c''>\sf
 << { d''4 d'' d'' ~ d'' d'' d'' ~ d'' } \\ { d'' d'' d''\sf ~ d'' d'' d''\sf ~ d'' } >>
 <c' c''>4 <c' c''> <c' c''>4\f r r R2. <c' c''>4 r r R2.
 <c' c''>4 r r r <c' c''> <c' c''>
 <c' c''>2.\sf <c' c''>2.\sf <c' c''>2.\sf <c' c''>2.\sf <c' c''>2.\sf <c' c''>2.\sf
 <c' c''>4\staccato r r R2. R2. R2. R2. R2. <c' c''>2.\p ~ <c' c''>2
 << { c''4\staccato c''\staccato } \\ { c''4\f c'' } >> r4 r R2. R2. R2. R2. R2. R2.
 r4 r << { d''4\staccato d''4\staccato } \\ { d''4\f d''4 } >> r4 r R2. R2. R2. R2. R2. R2.
 r4 r << { d''4\staccato d''4\staccato } \\ { d''4\f d''4 } >> r4 r R2. R2. R2. R2.
 r4 r << { \tieNeutral <e' e''>4\p ~ <e' e''>2. ~ <e' e''>2. ~ <e' e''>2 <e' e''>4 ~ <e' e''>4 }
 \\ { \spaceSpannerE
 s8-\hideP s8\< s2. s2 s4\! \hairpinPastBarline s4\> s2 s4\! } >> r4
 \spaceSpannerE
 <e' e''>\< ~ <e' e''>2. ~ <e' e''>2. ~ <e' e''>2 <e' e''>4\! R2. R2. R2. R2.
 << { e''4\pp f''\rest f''\rest e'' f''\rest f''\rest e''2.\cresc ~ e''2. ~ e''2. ~ e''2 d''4\sfp
 f''4\rest d'' f''\rest f''\rest d'' f''\rest f''\rest d'' f''\rest } \\
 { R2. R2. R2. R2. R2. R2. R2. R2. R2. } >> R2. R2. R2. R2. R2. R2.
 r4 r << { d''4 ~ d''2. ~ d''4 } \\ { \hairpinPastBarline d''4-\hideP\< ~ d''2.\!\> ~ d''4\! } >> r4 r R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. r4 r
 <d'' f''>4\ff ~ <d'' f''>2. ~ <d'' f''>2. ~ <d'' f''>4 <d'' f''> <d'' f''>
 << { e''4 } \\ { e''4 } >> r4
 << { e''4 ~ e''2. ~ e''2. ~ e''4 e'' e'' d'' } \\
 { e''4\ff( g'2.) ~ g'2. ~ g'4 g' e'' d'' } >> r4 r R2.
 r4 r << { d''4 ~ d''2 d''4 d'' } \\ { d''4\f ~ d''2 d''4 d''4 } >> r4 r R2.
 r4 r <d'' f''>4\ff << { d''4 } \\ { d''4 } >> r4 r << { c''4 } \\ { c''4 } >> r4 r
 << { d''4 } \\ { d''4 } >> r4 r r << { c''4 c'' d'' } \\ { c''4 c'' d'' } >> r4 r
 << { c''4 } \\ { c''4 } >> r4 r << { d''4 } \\ { d''4 } >> r4 r
 <c' c''>4 <c' c''>4 <c' c''>4 <c' c''>2. ~ <c' c''>2.
 <c' c''>2.\sf << { d''2. } \\ { d''2.\sf } >> <c' c''>2.\sf <c' c''>2.\sf
 <c' c''>2.\sf << { d''2. } \\ { d''2.\sf } >> <c' c''>2.\sf << { f''4 } \\ { f''4 } >> r4 r
 R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. <g' d''>2._\txtCresc
 << { c''2. f''2. d''4 } \\ { c''2.\f f''2.\ff d''4 } >> r4 r R2.
 << { c''4 c'' c'' ~ c'' c'' c'' d'' } \\ { c''4 c'' c''\sf ~ c'' c'' c'' d''\f } >> r4 r R2.
 << { d''4 } \\ { d''4 } >> r4 r R2. <d'' f''>4 r r r <d'' f''> <d'' f''>
 << { c''2. c''2. d''2. c''2. d''2. c''2. } \\
 { c''2.\sf c''2.\sf d''2.\sf c''2.\sf d''2.\sf c''2.\sf } >>
 << { f''4\staccato f''4\staccato } \\ { f''4\ff f''4 } >> r8
 << { f''8 f''4 f'' } \\ { f''8 f''4 f'' } >> r8 << { f''8 f''4 f'' } \\ { f''8 f''4 f'' } >> r8
 << { f''8 f''4 f'' } \\ { f''8 f''4 f'' } >> r4 R2. R2. R2. R2.
 << { g'4 g' } \\ { g'4\ff g' } >> r8 << { g'8 g'4 g' } \\ { g'8 g'4 g' } >> r8
 << { g'8 c''4 c'' } \\ { g'8 c''4 c'' } >> r8 << { c''8 c''4 c'' } \\ { c''8 c''4 c'' } >> r4
 R2. R2. R2. R2. R2. R2. R2. r4 r r8 r^\fermata
 R2. R2. R2. R2. R2. R2. R2. R2.^\fermataMarkup \bar "||"

 \time 4/4 R1 R1 R1 R1 R1 R1 R1 R1
 <d'' fis''>2\ff ~ <d'' fis''>8 r r4 <d'' fis''>2\sf ~ <d'' fis''>8 r r4
 <d'' fis''>4\sf r <d'' fis''>\sf r <d'' fis''>\sf r <d'' fis''>\sf r
 << { d''4 d''8 d'' d''4 d''8 d'' e''4 e''8 e'' e''4 e''8 e'' } \\
 { d''4 d''8 d'' d''4 d''8 d'' e''4 e''8 e'' e''4 e''8 e'' } >>
 <d'' fis''>2\sf ~ <d'' fis''>8 r r4 <d'' fis''>2\sf ~ <d'' fis''>8 r r4
 <d'' fis''>4\sf r <d'' fis''>\sf r <d'' fis''>\sf r <d'' fis''>\sf r
 << { d''4 d''8 d'' d''4 d''8 d'' e''4 e''8 e'' e''4 e''8 e'' } \\
 { d''4 d''8 d'' d''4 d''8 d'' e''4 e''8 e'' e''4 e''8 e'' } >>
 << { d''4. } \\ { d''4.\sf } >> r8 r2 << { e''4. } \\ { e''4.\sf } >> r8 r2
 << { d''4. } \\ { d''4.\sf } >> r8 r2 << { e''4. } \\ { e''4.\sf } >> r8 r2
 << { d''4. } \\ { d''4.\sf } >> r8 r2 << { e''4. } \\ { e''4.\sf } >> r8 r2
 << { d''4. } \\ { d''4._\txtCresc } >> r8 << { d''8 } \\ { d''8 } >> r8 r4
 << { e''4. } \\ { e''4.\sf } >> r8 << { e''8 } \\ { e''8 } >> r8 r4
 d''8\ff d'' r4 d''8 d'' r4 e''8 e'' r4 e''8 e'' r4 d''2 e'' d'' g'' r4 d''2. ~ d''1
 e''4 e'' e'' e'' e'' e'' e'' e''
 d''4. d''8 e''4. e''8 d''4. d''8 g''4. g''8 r4 d''2. ~ d''1 e''4 e'' e'' e'' e'' e'' e'' e''
 << { d''2. } \\ { d''2.\ff } >> r4 R1 << { d''2. } \\ { d''2.\sf } >> r4 R1
 << { d''2 d'' } \\ { d''2 d'' } >> R1 << { d''2 d'' } \\ { d''2 d'' } >> R1
 << { d''2 d'' } \\ { d''2 d'' } >> R1 R1 R1 R1 R1
 << { d''4 } \\ { d''4 } >> r4 r2 << { d''4 } \\ { d''4 } >> r4 r2 << { d''4 } \\ { d''4 } >> r4 r2
 << { d''4 } \\ { d''4 } >> r4 << { d''4 } \\ { d''4 } >> r4
 << { d''4 } \\ { d''4 } >> r4 r2 \bar "|."
}