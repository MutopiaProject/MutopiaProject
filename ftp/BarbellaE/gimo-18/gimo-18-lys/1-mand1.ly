\version "2.16.0"

IMandI =  \relative c'' {
  \clef "treble"
  \time 2/4
  \key g\major

  %page 2
  \repeat "volta" 2 {
  \partial 8 d8 | <g b, d, g,>4 b16 a g fis |  g8[ g, b d] |
  %3
  <g b, d, g,>4 b16 a g fis |  g8[ g, b d] | g fis16 g a8 c, | b16 a g8 r d' |
  %7
  e16 g fis g e g fis g | d g fis g d g fis g |
  g fis e d <<{s8 b | b a} \\ {c8 g | g fis}>> r a |
  bes d bes fis | g16 fis g fis g8 a | bes d bes! fis |
  %14
  g g, r d'' | 
  %15 page 3
  g16 fis e d g fis e d | cis a a' a, g' a, fis' a, |
  %17
  e' a, g' a, fis' a, e' a, | fis' a, a' a, g' a, fis' a, |
  %19
  e' a, g' a, fis' a, e' a, | fis' e fis g a8 g | fis16 e fis g a8 g |
  %22
  fis e16 d e8 d16 cis | d8 d,16 d fis fis a a |
  %24
  d8 <d fis,>16 <d fis,> <d fis,> <d fis,> <d fis,> <d fis,> | <d fis,>4 r8
  }

  \repeat "volta" 2 {
  a8 |
  %26
  d4 fis16 e d cis |  d8[ d, fis a] |
  %28 page 4
  d4 fis16 e d cis |  d8[ d, fis a] | d cis16 d e8 g, | fis16 e d8 r d' |
  %32
  d, fis16 a c8 c | b16 fis' g fis g8 d | d, fis16 a c8 c |
  %35
  b16 fis' g fis g8 g | g16 fis e d <<{s8 b | b a} \\ {c8 g | g fis}>> r d' |
  %38
  es g es c | fis a fis d | g d b g | c16 b a g c b a g |
  %42 page 5
  fis d d' d, c' d, b' d, | a' d, c' d, b' d, a' d, |
  %44
  b' d, d' d, c' d, b' d, | a' d, c' d, b' d, a' d, | b' a b c d8 c |
  %47
  b16 a b c d8 c | b a16 g a8 g16 fis | g8 g16 g b b d d |
  %50
  g8 b,16 b b b b b | <g' b, d, g,>4 r8^\fermata \bar "|."
  }
}
