\version "2.16.0"

IIIBasso =  \relative c' {
  \clef "bass"
  \key g\major
  \time 2/4

  \set Score.skipBars = ##t
  % end beams on quarters by default, but beam four eights together

  %1 page 6
  r8 g b c | d d, b c | a4 fis' | g8 g, g'4~ | g8 g fis fis |
  g g, b g | g'4 g | fis fis | g gis | a r8 a | a,4 a' |
  %12
  d, fis | g a | d,8 d' b g | d4 d | d8 d' d, d' | d,4 d |
  d8 d' fis,4 | e2 | d8 e fis d | g g, g' b, | c e d d, |
  %23
  e'2 | d8 e fis d | g g, g' b, | c e d c | b4 g'8 fis |
  e4 d8 c | b c d fis | g b, c d | g,4 g'8 fis |
  %32
  e4 d8 c | b c d fis | g b, c d | g,4 g'16 fis g g, |
  c d e c d8 d, | g4 r |
  %38
  R2*47 |
  %85
  d'8 e fis g | a a fis g | e4 cis | d d'~ | d cis | d d,8 d' |
  cis cis d d | cis4 d | cis d | cis d | cis r8 a |
  %96
  b4 e, | a a | d,8 cis d e | a,4 a'16( g! fis  e) |
  d8 e fis g | a a fis fis | g g g g | e e e e | e e c! c |
  %105
  d d fis fis | g g g g | fis fis fis fis | e4 d |
  a a'16 g fis e | dis4 dis | dis? r | dis dis | e b |
  %114
  e b'16 a g fis | e4 d | c c | c r | c c | d a' |
  d,8 e fis d | g4 cis, | fis b, |
  %123 page 7
  e4 eis | fis r | fis r | ais, ais | ais? r | fis' r | fis r |
  ais, ais | ais? ais | b8 d e fis | b,4 b'8 a |
  %134
  g4 cis8 b | ais ais ais ais | b4 fis | b, ais | b fis' |
  b, g' | e fis | b, d'16 c! b a! | g8 g, b cis |
  %143
  d d' b c | a4 fis | g8 g, g'4~ | g fis | g8 g fis fis |
  g g g g | f f f f | es es es es | d d d d | c4 cis |
  %153
  d8 d' d, d' | d, d' d, d' | d, d' d, d' |
  d, d' d, d' | d, d' d, d' | d,4 r^\fermata |
  %159
  R2*17 |
  %176
  r4 d'16 c b a | g4 g | c r8 c | fis,2 | b4 r8 b | e,2 |
  a4 r8 a | d,2 | g4 b,8 cis | d4 d'16 c b a | b4 r8 b |
  %187
  c4 b | a2 | b4 a | g2 | a4 g | fis2 | g4 r8 cis, |
  d d' bes g | c a d c | bes4 r |
  %197
  R2*18 |
  %215
  r4 g4~ | g fis | g8 g, g'4~ | g fis | g g, | c fis | b, e |
  a, d | g, g'8 fis | e4 d8 c | b c d fis | g g, d' d, |
  %227
  g4 g'8 fis | e4 d8 c | b c d fis | g g, d' d, |
  g4 g'16 a b g | c, d e c d8 d, | g4 r8 g' | g,4 r8 g' |
  %235
  g,2^\fermata \bar "|."
}
