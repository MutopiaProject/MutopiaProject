\version "2.16.0"

IIMandII =  \relative c''' {
  \clef "treble"
  \key c\major
  \time 4/4

  %1 page 7  
  g4 f16 e d c f8 e r16 c e c | b8 c16 d g,8 d' d c r16 c e c |
  b8 c16 d g,8 d' c g16 e c4 | e'16 c c c c c c c d b b b b b b b |
  c a a a c c c c b g d' b d8 b | 
  %6 page 8
  g a16 b c,8 g' f8. g16 a b c d | c8 d16 e d8 c b16 a b c b8 g |
  fis16 g' g fis fis e e d d e e d d c c b |
  cis8 c4 b16 a \times 4/6 { b[ d c b a g]}  g8[ fis] | g4 r d' c16 b a g |
  %11 page 9
  \grace{a16[ b]} c8 b r16 d b g a8 b16 c b8 a |
  \grace{a} b4 r16 d b g d8 g16 a d,8 a' | g d16 b g4 g'' f16 e d c |
  %14 Note: Bar is too short.
  \time 2/4 f8 e r16 c e c \time 4/4 | b8 c16 d g,8 d' d c r16 c e c |
  b8 c16 d g,8 d' c4 r8 g8 | c c c g g f r a |
  %18 page 10
   b[ d]  f[ g,] c16 b f'!4 e16 d | e g e c d8 g, c e, f g |
  c4 r r2^\fermata \bar "|."
}
