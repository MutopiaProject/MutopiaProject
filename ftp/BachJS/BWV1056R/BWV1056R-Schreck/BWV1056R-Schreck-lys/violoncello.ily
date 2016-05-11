\version "2.18.2"

largoVioloncello = {
  \key g \minor
  \time 4/4
  \clef bass
  % 1
  \set Staff.midiInstrument = #"pizzicato strings"
  bes4\p^\markup{\italic pizz.} r8 bes a4 r8 a |
  g4 r8 g f4 r8 f |
  bes4 r8 a g4 r8 f |
  e4 r8 e f4 r8 e |
  d4 r8 d e4 r8 e |
  % 2
  f4 r8 a bes\< g\! c'\> c\! |
  f4 r8 ees d4 r8 f |
  g4 r8 aes b,4 r8 g, |
  c4 r8 c' bes4 r8 bes |
  aes4 r8 aes g\< f\! g\> g,\! |
  % 3
  \mark "H" c4 r8 bes a4 r8 f |
  bes4 r8 aes g4 r8 bes |
  ees4 r8 d c4 r8 bes, |
  a,4 r8 f, bes,\< d\! g\< ees\! |
  f4 r8 a bes4 r8 bes |
  % 4
  a4 r8 a g4 r8 g |
  f4 r8 f bes4 r8 bes, |
  ees4 r8 e\< f ees\! f\> f,\! |
  bes,4 r8 a, g,4 r8 g |
  f4 r8
  \set Staff.midiInstrument = #"cello"
  f,^\markup{\italic{coll’ arco}} ees2 |
  d,1_\markup{\italic{dim. al \dynamic pp}} |
}
