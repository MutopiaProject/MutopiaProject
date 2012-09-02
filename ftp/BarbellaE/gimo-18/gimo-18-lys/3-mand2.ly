\version "2.16.0"

IIIMandII =  \relative c' {
  \clef "treble"
  \time 2/4
  \key g\major
  
  \repeat "volta" 2 {
  \partial 8 d8 | g8. b16 a8. c16 | b8 b4 d,8 | fis8 g16 a g8 fis |
  %4 page 8
  g8 b4 d,8 | fis8 g16 a g8 fis | g d'16 b g4 | r8  d'[ b b] | r  e[ cis cis] |
  %9
  a4 a | r8  a[ cis e] | fis4 r8 e | d4 r8 e | fis4 r8 e | d4 r8 e |
  %15 page 9
  d8 cis16 b a g fis e | d8 fis16 g a8 a | d,4 r8
  }

  \repeat "volta" 2 {
  a'8 |
  %18
  d8. fis16 e8. g16 | d8 fis16 d a8 fis | cis'8 d16 e d8 cis |
  %21
  d fis16 d a8 fis | cis'8 d16 e d8 cis | d4 r8 d, | g8. b16 a8. c16 |
  %25
  b8 b4 d,8 | fis8 g16 a g8 fis | g b4 d,8 | fis8 g16 a g8 fis |
  %29 page 10
   d[ b' b b] |  c[ cis cis cis] | d fis, r a | g4 r8 a | b4 r8 a | g4 r8 a |
  %35
  g' fis16 e d c b a | g8 b16 c d8 d | g b g b | fis a fis a |
  %39
  g4 r8^\fermata \bar "|."
  }
}
