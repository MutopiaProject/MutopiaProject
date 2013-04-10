\version "2.16.0"

IIMandI =  \relative c''' {
  \clef "treble"
  \key c\major
  \time 4/4

  %1 page 7  
  g4 f16 e d c a'8 g r16 g e c | d8 e16 f g,8 f' f e r16 g e c |
  d8 e16 f g,8 f' \times 2/3 {e16 d c} c8 r4 |
  e16 c g'8 r e d16 b g'8 r d | c16 a a'8 r c, b16 g c a d4 ~ |
  %6 page 8
  d8 c16 d e8 g, fis8. g16 a b c d | e8 fis16 g d8 c b16 a b c d b e g, |
  fis e' e d d c c b b g' g fis fis e e d |
  cis8 c4 b16 a \times 4/6 { b[ g' fis e d c]}  b8[ a] | g4 r d' c16 b a g |
  %11 page 9
  \grace{c16[ d]} e8 d r16 d b g a8 b16 c b8 a |
  \grace a8 b4 r16 d b g a8 b16 c d,8 c' | b16 a g8 r4 g' f16 e d c |
  %14 Note: Bar is too short.
  \time 2/4 a'8 g r16 g e c \time 4/4 | d8 e16 f g,8 f' f e r16 g e c |
  d8 e16 f d,8 f' e16 d c8 r g | c16 g e' c g' e c bes bes8 a r a |
  %18 page 10
  d16 a fis' d a' fis d c c g f'4 e16 d | e g e c d8 c16 b c8 e, f g |
  %20
  c4 r r2^\fermata \bar "|."
}
