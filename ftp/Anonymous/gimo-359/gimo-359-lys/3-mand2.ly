\version "2.16.0"

IIIMandII =  \relative c'' {
  \clef "treble"
  \key c\major
  \time 3/8

  %1 page 10
  c4. | b | c16 d e f e c | b8 c d | c16 d e f e c |
  %6 page 11
  b8 c d | e16 d c8 r |  e16[ c b c] c8 |  d16[ b a b] b8 |
  c16 a a' fis d c | b8 g' r | c, g' r | b, g' r | c, c, r |
  cis' a' r | d, a' r | cis, a' r | fis16 e d e fis g | a fis d c! a c |
  %20 page 12
  b8 a b | c d e \times 2/3 { c16[ b a]}  g8[ fis] | g4. | c | b |
  c16 d e f e c | b8 c d | c16 d e f e c | b8 c d | c4 e,8 |
  f a fis | g16 a b c b c | d8 c b | c16 g' f e d c |
  %35 page 13
  d8 c b | <c e, g,>4 r8^\fermata \bar "|."
}
