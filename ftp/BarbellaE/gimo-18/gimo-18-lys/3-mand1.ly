\version "2.16.0"

IIIMandI =  \relative c' {
  \clef "treble"
  \time 2/4
  \key g\major
  
  \repeat "volta" 2 {
  \partial 8 d8 | g8. b16 a8. c16 | b8 g'16 fis g d b g | a8 b16 c b8 a |
  %4 page 8
  b8 g'16 fis g d b g | a8 b16 c b8 a | g d16 b g4 | b'16 g b d g8 d |
  %8
  cis16 a cis e a8 e | <d fis,>4 <g b, d, g,> | fis16 a fis d e g e cis |
  %11
  d8. a'16 gis b e, g | fis8. a,16 b d cis e | d8. a'16 gis16 b e, g |
  %14
  fis8. a,16 b d cis e | d8 cis16 b a g fis e |
  %16 page 9
  d8 fis16 g a8 a, | <fis'' a, d,>4 r8
  }

  \repeat "volta" 2 {
  a,8 |
  %18
  d8. fis16 e8. g16 | fis8 a16 fis d8 d | e fis16 g fis8 e | 
  %21
  fis8 a16 fis d8 d | e fis16 g fis8 e | d4 r8 d, | g8. b16 a8. c16 |
  %25
  b8 g'16 fis g d b g | a8 b16 c b8 a | b g'16 fis g d b g | a8 b16 c b8 a |
  %29 page 10
  g8 d'16 b g8 f | e e'16 cis a8 g | fis!8. d'16 cis e a, c |
  %32
  b8. d,16 e g fis a | g8. d'16 cis e a, cis! | b8. d,16 e g fis a | 
  %35
  g8 fis16 e d c b a | g8 b16 c d8 d |
  %37
  <g' b, d, g,> b <g b, d, g,> b | <fis a, d,> a <fis a, d,> a |
  %39
  <g b, d, g,>4 r8 \bar "|."
  }
}
