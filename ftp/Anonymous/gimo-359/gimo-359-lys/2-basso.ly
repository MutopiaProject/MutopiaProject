\version "2.16.0"

IIBasso =  \relative c {
  \clef "bass"
  \key c\major
  \time 4/4
  % end beams on quarters by default

  %1 page 7
  c8 c c c c c e e | f4 r8 g c, c e e | f4 r8 g c,4 g'16 f e d |
  c8 c c c b b b b | a a fis' fis g4 r8 b, |
  %6 page 8
  c4 r8 cis d4 r | c8 c fis fis g g, b cis | d4 r8 fis g4 r |
  r8  a[ gis e] g c, d d, | g4 d'16 c b a g8 g g g |
  %11 page 9
  g g b b c4 r8 d | g g b, b c4 r8 d | g,4 g'16 f e d  c8[ c c c] |
  \time 2/4 c c e e \time 4/4 | c4 r8 g' c, c c c | e4 r8 e f f f e |
  d4 r8 fis g, g b a |
  %18 page 10
  b4 r8 fis' g g g, g | c e f g  a[ e f g] | c,4 r r2^\fermata \bar "|."
}
