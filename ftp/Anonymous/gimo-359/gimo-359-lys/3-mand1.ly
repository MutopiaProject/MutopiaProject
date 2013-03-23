\version "2.16.0"

IIIMandI =  \relative c'' {
  \clef "treble"
  \key c\major
  \time 3/8

  %1 page 10
  c4. | d | e16 f g a g e | d8 e f | e16 f g a g e |
  %6 page 11
  d8 e f | e16 d c8 r | e16 c b c e8 | d16 b a b d8 | e16 c a' fis d c |
  b g' fis g b, g' | c, g' fis g c, g' | b, g' fis g b, g' |
  c, g' fis g c, g' | cis, a' gis a cis, a' |
  %16 Note: The first d looks like a c
  d, a' gis a d, a' | cis, a' gis a cis, a' |
  fis e d e fis g | a fis d c! a c |
  %20 page 12
  b8 c d | e fis g | \times 2/3 { e16[ d c]}  b8[ a] | g4. | c | d |
  e16 f g a g e | d8 e f | e16 f g a g e | d8 e f | e16 c b c e, c' |
  f, c' b c fis, c' | g a b c d e | f8 e d | e16 g f e d c |
  %35 page 13
  d8 c b | <c e, g,>4 r8^\fermata \bar "|."
}
