\version "2.10.3"

 cornib = {
 \set Staff.instrumentName = "Corni in B."
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 4/4
 \repeat volta 2 {
 R1 R1 R1 R1 r2 <e' c''>2\f r2 <e' c''> r <e' d''> r <e' d''> r2 <e' e''>4 <c' c''> <c' c''>4 r r2
 << { d''4 c'' } \\ { d''4 c'' } >> r2 << { e'4\staccato e'\staccato } \\ { e'4 e' } >> r2 <e' c''>1~ <e' c''>1 <d'' d''>1
 <e' e''>1 << { e'4 } \\ { e'4 } >> r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 <g' c''>4\f r r2 R1 g'1 f''1
 e''4 << { c''8 c'' } \\ { c''4 } >> <c' c''>4 r4 <e' e''>4 <c' c''>8 <c' c''> <c' c''>4 r4 g'1 f''1
 e''4 << { c''8 c'' } \\ { c''4 } >> <c' c''>4 r4 <e' e''>4 <c' c''>8 <c' c''> <c' c''>4 r4 <c' c''>4 r r2 <c' c''>4 r r2
 d''4 d''8 d'' d''4 r d''4 d''8 d'' d''4 r <g' e''>4 <g' e''>8 <g' e''> <g' e''>4 r <g' e''>4 <g' e''>8 <g' e''> <g' e''>4 r
 <e' c''>4 <e' c''>8 <e' c''> <e' c''>4 r <e' c''>4 <e' c''>8 <e' c''> <e' c''>4 r d''4 d''8 d'' d''4 r d''4 d''8 d'' d''4 r R1
 f''4 d'' g'2 R1 c''4 g' e' c' R1 c''4 g' c'2 R1 c'1 g'4 r r2 g'4 g' g' r4 R1 R1 R1 R1 R1 R1
 R1 R1 g'1\f~ g'2 <e' c''>4 r8 <e' c''> <g' d''>4 r8 <g' d''> <c'' e''>4 r8 <c'' e''>
 <e'' g''>8 <d'' f''> <c'' e''> <g' d''> <c' c''>4 r4 R1 R1 R1 <e' c''>4 r <c' c''>2 <c' c''>4 r <c' c''>2
 <c' c''>4 <c'' e''> <c'' d''> <g' d''> <e' c''>4 r r c' g' r r g' c' r r c' g'4 r r g' c' r r2 R1 }
 \repeat volta 2 { R1 R1 c'4 r r2 R1 R1 R1 R1 R1 <e' c''>4 r r2 <e' c''>4 r r2 << { c'4 } \\ { c'4 } >> r4 r2 R1
 <g' e''>4 r r2 <g' e''>4 r r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <e' d''>1\p\<~ <e' d''>1\!
 <e' c''>4\f r4 r2 R1 R1 R1 r2 <e' c''>2\f r2 <e' c''> r <e' d''> r <e' d''> r2 <e' e''>4 <c' c''> <c' c''>4 r r2
 << { d''4 c'' } \\ { d''4 c'' } >> r2 << { e'4\staccato e'\staccato } \\ { e'4 e' } >> r2 <e' c''>1~ <e' c''>1 <d'' d''>1
 <e' e''>1 << { e''4 } \\ { e''4 } >> r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <c' e'>4\f r r2 R1 e'1 d''1 c''4 r r2 <c' c''>4 r r2 e'1 d''1 c''4 r r2 <c' c''>4 r r2 << { d''4 } \\ { d''4 } >> r4 r2
 << { d''4 } \\ { d''4 } >> r4 r2 <g' d''>4 <g' d''>8 <g' d''> <g' d''>4 r <g' d''>4 <g' d''>8 <g' d''> <g' d''>4 r
 <g' c''>4 <g' c''>8 <g' c''> <g' c''>4 r <g' c''>4 <g' c''>8 <g' c''> <g' c''>4 r
 <c' c''>4 <c' c''>8 <c' c''> <c' c''>4 r <c' c''>4 <c' c''>8 <c' c''> <c' c''>4 r d''4 d''8 d'' d''4 r d''4 d''8 d'' d''4 r
 R1 d''4 d'' e'2 R1 r4 e'4 c'2 R1 g'4 g' g'2 R1 R1 R1 <c' c''>1 <e' e''>4 r4 r2 <e' e''>4 <e' e''> <e' e''> r
 R1 R1 R1 R1 R1 R1 R1 r2 << { c''4 d''4\rest d''4 e''4\rest e''4 e''4\rest d''4 e''4\rest c''4 d''8\rest c''8
 d''4 d''8\rest d''8 e''4 e''8\rest e''8 d''4 d''8\rest d''8 c''4 d''4\rest } \\ { e'2\f~ e'1~ e'1~ e'1~ e'2 e'2\rest } >>
 R1 R1 R1 <e' c''>4 r <c'' e''>2 << { d''4 } \\ { d''4 } >> r4 << { d''2 c''4 } \\ { d''2 c''4 } >> r4 r <e' e''>
 <e' c''>4 r r <e' c''> <e' d''> r r <e' d''> <e' c''> r r <e' c''> <e' d''> r r <e' d''> <e' c''> r r2 R1 }
 <c' e'>4 r r2 R1 R1 R1 R1 R1 << { d''2 e'' e'' c'' d'' e'' } \\ { d''2 d'' c'' c'' d'' e'' } >> <c'' e''>4 r r2 R1
 << { e''2 c''4 } \\ { e''2 c''4 } >> r4 << { e'4 } \\ { e'4 } >> r4 << { c'4 } \\ { c'4 } >> r4 R1 \bar "|."
}