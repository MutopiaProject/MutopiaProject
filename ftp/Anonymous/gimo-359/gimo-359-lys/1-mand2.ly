\version "2.16.0"
\include "1-shared.ly"

IMandII =  \relative c'' {
  \clef "treble"
  \key c\major
  \time 4/4
  
  %1 page 2
  c4 e16 d c b c8 c, e g | c4 e16 d c b c8 c, e g |
  c8 b16 c d8 e16 f \ISharedA c8 e |
  %5
  f d16 e f8 d e c16 d e8 c | d b16 c d8 b c16 d c b c d e f | \ISharedB
  %9 page 3
  b,8 g'4 b,8 c g'4 c,8 | b g'4 b,8 c g'4 e8 | cis a'4 cis,!8 d a'4 d,8 |
  cis a'4 cis,8 d d, fis'16 g g a | a8 a, g fis g b d g |
  %14 page 4
  \ISharedC d8 a g fis | g b c fis g g,16 a g8 fis |
  %16
  g4 g' ~ g16 e cis e a, e' d cis! |
  d8 f, f'4 ~ f16 d c d <<b16 \\ {g16 d' c b}>> |
  c!8 d g16 e d c b16 a g8 r4 |
  c4 e16 d c b c8 c, e g | c4 e16 d c b c8 c, e g |
  %21 page 5
  c b16 c \ISharedD g8 d16 b g4 |
  %25
  e'8 c'4 e,8 f a c f |
  %26 page 6
  e8 c4 g'8 a16 g f e d c b a | g4 r g16 d' e f e d c b |
  c8 b16 c d f, g a g d' e f e d c b | c8 b16 c d f, g a g8 e'16 f e c d b |
  c4 r c8 c, e g | c c, e g c e, g c | g'16 f e d c8 b c b16 a g f e d |
  %33 page 7
  c4 <b' d, g,> <c e, g,> r^\fermata \bar "|."
}
