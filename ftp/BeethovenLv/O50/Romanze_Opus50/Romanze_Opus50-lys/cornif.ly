\version "2.10.3"

 cornif = {
 \set Staff.instrumentName = \markup { \center-align { "Corni in F." } }
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 4/4
 R1 R1 R1 R1 R1 R1 R1 R1 <c' c''>2 r2 <g g'>2. <g g'>4 <e' c''>4( <g' d''> <c'' e''> <d'' f''>)
 \set doubleSlurs = ##t <c'' e''>2( <g' d''>4) r4 \set doubleSlurs = ##f
 <g' g''>2~ <g' g''>8 << { g'4 g'8 } \\ { g'4 g'8 } >> <g g'>2~ <g g'>8
 << { c''4 c''8 c''2.( d''4) } \\ { c''4 c''8 c'2 e'4 g'4 } >> <e' c''>4 r r2 r2 r4 <c'' e''>4 <c'' d''>2 <c'' e''>4 <g' d''>
 <e' c''>4 <c' c''>8.. <c' c''>32 <c' c''>4 r R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 r4 r8 r16. <g g'>32 <g g'>8..[ <g g'>32 <g g'>8.. <g g'>32] <g g'>8 r r4 r2
 r4 r8 r16. <g g'>32 <g g'>8..[ <g g'>32 <g g'>8.. <g g'>32] <g g'>8 r r4 r2
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 <c' c''>2 r2 <g g'>2. <g g'>4 <e' c''>4( <g' d''> <c'' e''> <d'' f''>)
 \set doubleSlurs = ##t <c'' e''>2( <g' d''>4) r \set doubleSlurs = ##f
 <g g'>2~ <g g'>8 << { g'4 g'8 } \\ { g'4 g'8 } >> <g g'>2~ <g g'>8 << { c''4 c''8 } \\ { c''4 c''8 } >>
 << { c''2.( d''4) } \\ { c'2 e'4 g' } >> <e' c''>4 r r2 r2 r4 <c' c''> << { d''2( c''4) } \\ { c''2. } >> <g g'>4 <c' g'>4 r r2
 R1 R1 R1 R1 R1 R1 R1 r4 <c' c''>2 <c' c''>4~ <c' c''>4 <g g'>2 <g g'>4
 <c' c''>2~ <c' c''>8..[ <c' c''>32 <c' c''>8.. <c' c''>32] <g g'>1 <g g'>1
 <g g'>1~ <g g'>8 r r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 r2 r4 <c'' e''>4
 <c'' d''>2 <c'' e''>4 <g' d''> <e' c''>4 r r2 R1 R1 <c' c''>4 r << { g''2\rest d''1 } \\ { c''2~ c''1 } >>
 <c'' e''>8 r <c'' e''> r r2 R1 <c' c''>2.\f <c' c''>4 <c' c''>4 r r2 <c' c''>8\f[ <e' e''> <g' g''> <e' e''>] <c' c''>2
 <c' c''>4 r r2 R1 R1 r2 <g' g''>4.\pp( <e' e''>8 <c' c''>8) r <c' g'> r <c' g'> r r4^\fermata \bar "||"
}