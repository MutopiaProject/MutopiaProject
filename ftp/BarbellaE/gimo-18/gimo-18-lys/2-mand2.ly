\version "2.16.0"

IIMandII =  \relative c'' {
  \clef "treble"
  \time 3/4
  \key g\major
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  %page 6
  \repeat "volta" 2 {
  b4 ~ \times 2/3 { b8[( a  g)]  g[( a  b)]} | c4 b r |
  %3
  fis \times 2/3 { fis'8[( e  d)]  c[( b  a)]} | g4 d r | g' fis8 e d cis |
  %6
  fis4 e8 d cis b | e4 fis cis | d d, r |
  }

  \repeat "volta" 2 {
  %9
  g4 ~ \times 2/3 { g8[( a  b)]  b[( c  d)]} | c4 b g |
  %11
  a \times 2/3 { a8[ b cis]  cis[( d  e)]}
  %12 page 7
  d4 cis a | d, \times 2/3 { bes'8[ a g]  g[( a  bes)] |  a[ g fis]} fis4 r |
  %15
  a4 \times 2/3 { fis'8[( e  d)]  c[( b  a)]} | g4 \times 2/3 { e'8[ d c]  b[ a g]} |
  %17
  g4 g fis | g r r_\fermata \bar "|."
  }
}
