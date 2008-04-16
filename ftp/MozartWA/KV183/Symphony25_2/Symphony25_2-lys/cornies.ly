\version "2.10.3"

 cornies = {
 \set Staff.instrumentName = "Corni in Es."
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 2/4
 \repeat volta 2 { \partial 8 r8 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 << { d''2~ d''2~ d''2~ d''2 } \\ { g'2\p d'' g' d'' } >> <g' d''>8 r8 r4 R2 R2 R2 r4 r8 }
 \repeat volta 2 { r8 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 r8 <g g'>\p\< <g g'> <g g'>\! <g g'>2\< <g g'>4\!\f r4
 R2 R2 R2 R2 R2 R2 R2 R2 R2 r8 <c' c''>8\p <c' c''>4
 r8 <g' e''> <g' e''>4 r8 << { d''8 d''4 } \\ { d''8 d''4 } >> R2 r8 <e' e''> <e' e''>4 r8 <e' e''> <g' c''>4
 r8 << { c''8 } \\ { c''8 } >> <g' d''>4 r8 <c'' e''>4 << { d''8 } \\ { d''8 } >> <g' d''>4 r4 r2
 R2 R2 R2 R2 R2 R2 <e' c''>2\p <g' d''> <e' c''> <g' d''> <e' c''>4 r4 R2 R2 R2 r4 r8 } \bar "|."
}