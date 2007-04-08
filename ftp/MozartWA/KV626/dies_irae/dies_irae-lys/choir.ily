\include "soprano.ily"
\include "alto.ily"
\include "tenore.ily"
\include "basso.ily"

choirInstrument = \property Staff.midiInstrument = "choir aahs"

choirStaff = \context ChoirStaff <<
  \sopranoStaff
  \altoStaff
  \tenoreStaff
  \bassoStaff
>>
