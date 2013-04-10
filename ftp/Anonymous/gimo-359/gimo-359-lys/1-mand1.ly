\version "2.16.0"
\include "1-shared.ly"

IMandI =  \relative c'' {
  \clef "treble"
  \key c\major
  \time 4/4
  
  %1 page 2
  c4 g'16 f e d c8 c, e g | c4 g'16 f e d c8 c, e g |
  c d16 e d8 e16 f \ISharedA c8 g' |
  %5
  a f16 g a8 f g e16 f g8 e | f8 d16 e f8 d e16 d c b c d e f |
  \ISharedB
  %9 page 3
  b, d g d b d g d c e g e c e g e | b d g d b d g d c e g e c e g e |
  cis e a e cis e a cis, d fis a fis d fis! a fis |
  cis e a e cis e a e d8 d, fis'16 g g a | a8 c, b a b16 g d' b g' d b' g |
  %14 page 4
  \ISharedC d8 c b a |
  %15
  b16 g d' b e c fis d g8 g,16 a \grace c8 b a |
  %16 Note: the d8 g, are written d4 g, in the manuscript
  d8 g, g'4 ~ g16 e cis e a, g' f e | f8 f, f'4 ~ f16 d c d g, f' e d |
  e c f d g e d c b a g8 r4 | c4 g'16 f e d c8 c, e g |
  c4 g'16 f e d c8 c, e g |
  %21 page 5
  c8 d16 e \ISharedD b16 a g8 r g |
  %25 
  e16 c' e g e, c' e g f, a c a f' c a' f |
  %26 page 6
  e, c' e g e, c' e g a g f e d c b a | g4 r g16 f' e f g f e f |
  e c b c d c b c g f' e f g f e f |
  e c b c d c b c d8 e16 f e c d b | c8 c, e g c c, e g |
  c  c, e g c e, g c | g'16 f e d c8 b c8 b16 a g f e d |
  %33
  c4 <b' d, g,> <c e, g,> r^\fermata \bar "|."
}
