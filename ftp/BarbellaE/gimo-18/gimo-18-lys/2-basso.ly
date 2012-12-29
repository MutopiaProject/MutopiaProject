\version "2.16.0"

IIBasso =  \relative c {
  \clef "bass"
  \time 3/4
  \key g\major

  %page 6
  \repeat "volta" 2 {
    g4 g g | g g r | a2 c4 | g' b a | g r r |  d r r | g a a, | d d8 c b a |
  }

  \repeat "volta" 2 {
  %9
  b4 g g | c g' c, | cis a a |
  %12 page 7
  d a' d, | g g g | d d d | d d d | g g g | c d d, | g,2 r4_\fermata \bar "|."
  }
}
