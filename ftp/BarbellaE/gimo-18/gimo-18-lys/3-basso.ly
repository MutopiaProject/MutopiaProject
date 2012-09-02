\version "2.16.0"

IIIBasso =  \relative c' {
  \clef "bass"
  \time 2/4
  \key g\major
  
  \repeat "volta" 2 {
  \partial 8 r8 | g4 d | g g, | d' r8 d |
  %4 page 8
  g4 g, | d' r8 d | g d16 b g4 | r8  g'[ g g] | r  a[ a a] | d,4 a | d a' |
  %11
  d, r8 cis8 | d4 r8 a' | d,4 r8 cis | d4 r8 a' | d cis16 b a g fis e |
  %16 page 9
  d8 fis16 g a8 a, | d4 r8  
  }
  
  \repeat "volta" 2 {
  r8 |
  %18
  d4 a | d fis8 d | a4 r8 a | d4 fis8 d | a4 r8 a | d8 d16 e d c b a |
  %24
  g4 d' | g, g' | d r8 d | g4 g, | d' d |
  %29 page 10
   g8[ g, g g] |  c[ a a a] | d4 r8 fis | g4 r8 d | g,4 r8 fis'8 | g4 r8 g |
  %35
  g fis16 e d c b a | g8 b16 c d8 d, |  g[ g g g] |  d'[ d d d] |
  %39
  g,4 r8^\fermata \bar "|."
  }
}
