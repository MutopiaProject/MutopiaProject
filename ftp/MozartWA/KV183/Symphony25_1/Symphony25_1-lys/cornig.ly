\version "2.10.3"

 cornig = {
 \set Staff.instrumentName = "Corni in G."
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 4/4
 \repeat volta 2 { R1 R1 R1 R1 r2 <c' c''>2\f r <c' c''> r <g' d''> r <g' d''>
 r2 << { g'4 } \\ { g'4 } >> r4 r4 <c' c''> <c' c''> r
 r2 << { d''4 c'' g'\staccato g'\staccato } \\ { d''4 c'' g' g' } >> r2 R1 R1 R1
 R1 c'1\fp~ c'1~ c'1~ c'1~ c'1~ c'1~ c'1~ c'1 g1~ g1~ g4\pp r g4 r g4 r r2
 g'4\f r r2 R1 R1 R1 g'4 r r2 g'4 r r2 R1 R1 g'4 r r2 g'4 r r2 <c' c''>4 <c' c''>8 <c' c''> <c' c''>4 r
 <c' c''>4 <c' c''>8 <c' c''> <c' c''>4 r d''4 d''8 d'' d''4 r d''4 d''8 d'' d''4 r
 <g' d''>4 <g' d''>8 <g' d''> <g' d''>4 r <g' d''>4 <g' d''>8 <g' d''> <g' d''>4 r
 <c' c''>4 <c' c''>8 <c' c''> <c' c''>4 r <c' c''>4 <c' c''>8 <c' c''> <c' c''>4 r c''4 c''8 c'' c''4 r c''4 c''8 c'' c''4 r
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 }
 \repeat volta 2 { <c' c''>4\f r r2 R1 << { c'4 } \\ { c'4 } >> r4 r2 R1 <c' c''>4 r r2 <c' c''>4 r r2 <g' d''>4 r r2 <g' d''>4 r r2
 <c' c''>4 r r2 <c' c''>4 r r2 <c' c''>4 r r2 <c'' d''>4 r r2 <g' d''>4 r r2 << { g'4 } \\ { g'4 } >> r4 r2 <c'' d''>4 r r2 R1
 R1 R1 R1 R1 << { g'4 } \\ { g'4 } >> r4 r2 R1 R1 R1 R1 R1 << { c'4 } \\ { c'4 } >> r4 r2 R1
 R1 R1 R1 R1 <g' d''>\p\<~ <g' d''>1\!
 <c' c''>4\f r r2 R1 R1 R1 r2 <c' c''>2\f r <c' c''> r <g' d''> r <g' d''> r2 << { g'4 } \\ { g'4 } >> r4 r4 <c' c''> <c' c''> r
 r2 << { d''4 c'' g'\staccato g'\staccato } \\ { d''4 c'' g' g' } >> r2 R1 R1 R1 R1
 c'1\fp~ c'1~ c'1~ c'1~ c'1~ c'1~ c'1~ c'1 g1^\markup { \italic "decresc." }~ g1~ g4^\pp r4 g r g4 r r2
 <c' c''>4\f r r2 R1 g'1 f''1 r4 c''8 c'' c''4 r r4 <c' c''>8 <c' c''> <c' c''>4 r g'1 f''1 r4 c''8 c'' c''4 r
 r4 <c' c''>8 <c' c''> <c' c''>4 r <c' c''>4 <c' c''>8 <c' c''> <c' c''>4 r <c' c''>4 <c' c''>8 <c' c''> <c' c''>4 r
 d''4 r r2 d''4 r r2 g'4 g'8 g' g'4 r g'4 g'8 g' g'4 r <c' c''>4 <c' c''>8 <c' c''> <c' c''>4 r
 <c' c''>4 <c' c''>8 <c' c''> <c' c''>4 r d''4 d''8 d'' d''4 r d''4 d''8 d'' d''4 r
 R1 f''4 d'' g'2 R1 c''4 g' c'2 R1 g'4 g' g'2 R1 <c' c''>1 R1 <c' c''>1 <g g'>4 r r2 <g g'>4 <g g'> <g g'> r
 R1 R1 R1 R1 R1 R1 R1 r2 << { c''4 d''4\rest d''4 e''4\rest c''4 d''4\rest d''4 g''4 g''4 d''8\rest c''8
 d''4 d''8\rest d''8 c''4 d''8\rest c''8 d''4 g''4 g''4 f''4\rest } \\ { g'2\f~ g'1~ g'1~ g'1~ g'2 c'4 d'4\rest } >>
 R1 R1 R1 <c' c''>4 r <c' c''>2 <c' c''>4 r <c' c''>2~ <c' c''>4 r r <g' d''> <c' c''>4 r r << { c'4 g' } \\ { c'4 g' } >> r4 r
 << { g'4 c' } \\ { g'4 c' } >> r4 r << { c'4 g' } \\ { c'4 g' } >> r4 r << { g'4 } \\ { g'4 } >> <c' c''>4 r r2 R1 }
 <c' c''>4 r r2 R1 R1 R1 c''1 g'1 <c' c''>2 <g' d''> <c' c''> <c' c''> <c'' d''> <g' d''> <c' c''>4 r r2
 c''4 c''8. c''16 c''4 c'' g''2 r4 c'' g'4 c'' r g' c'4 r r2 \bar "|."
}