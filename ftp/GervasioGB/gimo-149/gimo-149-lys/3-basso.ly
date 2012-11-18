\version "2.16.0"

IIIBasso =  \relative c {
  \clef "bass"
  \time 3/8
  \key d\major

  \repeat "volta" 2 {
  \partial 8 r8 |
  %1 page 9
  d d d | d d d | a a a | d fis a | d, d d | d d d | a a a | d d d |
  %9 page 10
  a a a | a a a | a a a | a a a | d d d | a a a | d d d | e e e | a, a a |
  %18
  a a a | a a a | e' e e | a, a a | d d d | cis cis cis | b b b | a a a |
  %26
  d d e | a,4 r8 | d d d | e e e | a, a a | d d d | e e e | e e e |
  %34 page 11
  a, a a | a a a | a a a | a a a | a4
  }

  \repeat "volta" 2 {
  r8
  %39
  a a a | a a a | e' e e | a, a a | a a a | a a a | e' e e | a,4 r8 |
  %47
  d d d | d d d | a a a | d fis a | d, d d | d d d | a a a | d d d |
  %55 page 12
  fis fis fis | g g g | gis gis gis | a a a | a, a a | fis' fis fis | g a a, |
  %62
  d d d | d d d | g, g g | gis gis gis | a a a | e'4. | fis | g8 a a, |
  %70
  d d d | g g g | fis fis fis | e e e | d d d | g g g | fis fis d | e e e |
  %78 page 13
  fis fis fis | g a a, | d4 r8 | e4. | fis | g8 a a, | d d d | d d d |
  %86
  d d d | d d d | d d d | d d d | d d d | d d d | d a' fis |
  %92
  d4 r8 \bar "|."
  }
}
