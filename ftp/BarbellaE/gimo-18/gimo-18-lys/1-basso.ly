\version "2.16.0"

IBasso =  \relative c' {
  \clef "bass"
  \time 2/4
  \key g\major
  
  %page 2
  \repeat "volta" 2 {
  \partial 8 r8 | g g, g' g, | g' g, b d | g g, g' g, | g' g, b d | g,4 d' |
  %6
  g r8 g, | c4 r | b r8 a | g4 r8 g' | d4 fis | g d | g bes8 a | g4 d | g b! |
  %15 page 3
  g4 r8 gis |  a[ a, a a] |  a[ a a a] |  a[ a a a] |  a[ a a a] | d4 r8 a |
  %21
  d4 r8 a | d fis g a | d, d fis a | d, d' fis, a | d,4 r8
  }

  \repeat "volta" 2 {
  r8 |
  %26
  d' d, d' d, | d' d, fis a |
  %28 page 4
  d d, d' d, | d' d, fis a | d,4 r8 cis |  d[ d' d,] r | r  d[ a' d,] | g4 r |
  %34
  r8  d[ a' d,] | g4 r8 b, | g4 r8 g' | d4 b | c c | d d | b4 r8 g' | d4 r8 cis |
  %42 page 5
  d d d d | d d d d | d d d d |  d[ d d d] | g4 r8 d | g4 r8 d | g,8 b c d |
  %49
  g g b d | g, g, b d | g,4 r8^\fermata \bar "|."
  }
}
