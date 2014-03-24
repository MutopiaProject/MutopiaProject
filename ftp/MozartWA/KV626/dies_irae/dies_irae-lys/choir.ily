\version "2.18.0"
\include "soprano.ily"
\include "alto.ily"
\include "tenore.ily"
\include "basso.ily"

choirInstrument = \set Staff.midiInstrument = "choir aahs"

choirStaff = \context ChoirStaff <<
  \sopranoStaff
  \altoStaff
  \tenoreStaff
  \bassoStaff
>>
