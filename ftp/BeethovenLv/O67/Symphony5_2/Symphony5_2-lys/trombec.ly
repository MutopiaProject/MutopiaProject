\version "2.16.2"

 trombec = {
 \set Staff.instrumentName = "Trombe in C.   "
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 3/8
 \partial 8 r8 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. <c' c''>4.\ff <c' c''>8\staccato[ <e' c''>\staccato <g' d''>\staccato]
 <e' c''>8 r8 << { e'16. g'32 } \\ { e'16. g'32 } >> <e' c''>8_\markup { \dynamic ff\italic "sempre" }[ <e' c''> <g' d''>]
 <c'' e''>4 <e' c''>16.[ <g' d''>32] <c'' e''>8[ <c'' e''> < d'' f''>] <e'' g''>4\sf <c'' e''>16.[ <d'' f''>32]
 <e'' g''>4\sf <c'' e''>16.[ <d'' f''>32] <e'' g''>4.\sf\>~ <e'' g''>8\!\p r8 r
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 <c' c''>4.\ff <c' c''>8\staccato[ <e' c''>\staccato <g' d''>\staccato]
 <e' c''>8 r8 << { e'16.[ g'32] } \\ { e'16.[ g'32] } >> <e' c''>8[ <e' c''> <g' d''>]
 <c'' e''>4 <e' c''>16.[ <g' d''>32] <c'' e''>8[ <c'' e''> <d'' f''>]
 <e'' g''>4\sf <c'' e''>16.[ <d'' f''>32] <e'' g''>4\sf <c'' e''>16.[ <d'' f''>32]
 <e'' g''>4._\markup { \dynamic f \italic "dimin." }~ <e'' g''>8\p r8 r R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. r16 <c' c''>16\f <c' c''>4:16
 <c' c''>4.:16 R4. r8 r8 << { g'16 g' } \\ { g'16 g' } >> <c' c''>4.:16 R4. r8 <c' c''>4:16 <g g'>8 r r R4.
 r4^\fermata r8 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. r8 r <c' c''>16\ff <c' c''> <c' c''>8[ <e' c''> <g' d''>] <c'' e''>4.~
 <c'' e''>4 <e' c''>16.[ <g' d''>32] <c'' e''>8[ <c'' e''> <d'' f''>]
 <e'' g''>4.~ <e'' g''>4 <c'' e''>16.[ <d'' f''>32] <e'' g''>4 <c'' e''>16.[ <d'' f''>32] <e'' g''>4 <c'' e''>16.[ <d'' f''>32]
  <e'' g''>4.\>~ <e'' g''>4.~ <e'' g''>8\!\p r8 r R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 <c' c''>4.\ff R4. <g g'>8[ <g g'> <g g'>] <c' c''>[ <c' c''> <c' c''>] r8 << { f''8[ f''] } \\ { f''8[ f''] } >>
 <g g'>8[ <c' c''> <c' c''>] <g g'>8 r r <c' c''> r r R4. <c' c''>8 r r R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. <c' c''>8\f r8 r R4.
 <c' c''>8 r r r8 r r R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. r8 r \override TupletNumber #'transparent = ##t \times 2/3 { <c' c''>16\f[ <c' c''> <c' c''>] }
 <c' c''>8[ <c' c''> <c' c''>] <c' c''>8 r r R4. <c' c''>8 r r R4. R4. <c' c''>8 r \bar "|."
}
