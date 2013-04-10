\version "2.16.0"

IIMandI =  \relative c''' {
  \clef "treble"
  \time 3/4
  \key g\major
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  %page 6
  \repeat "volta" 2 {
  <g b, d, g,>4 ~ \times 2/3 { g8[ d c]  b[( a  g)]} | e'4 d r |
  %3
  \times 2/3 { c8[( b  c)]  a'[( g  fis)]  e[( d  c)] |  b[ a g]} g4 r |
  %5
  \grace {g'16[ a]} b4 a8 g fis e | \grace {fis16[ g]} a4 g8 fis e d |
  %7
  \times 2/3 { b'8[( g  e)]  a[( fis  d)]  g[( e  cis)]} | d4 d, r | 
  }

  \repeat "volta" 2 {
  %9
  \times 2/3 { d'8[( c  b)]  b[( c  d)]  d[( e  f)] |  e[ d c]  d[ c b]} c4 |
  %11
  \times 2/3 { e8[( d  cis)]  cis[( d  e)]  e[( fis  g)] |
  %12 page 7
   fis[ e d]  e[ d cis]} d4 | \times 2/3 { bes8[( a  bes)]  d[( c  bes!)]  bes![( a  g)] |
  %14
   fis[( e  d)]} d4 r | \times 2/3 { c'8[( b  c)]  a'[( g  fis)]  e[( d  c)] |
  %16
   b[( a  b)]  g'[( fis  e)]  d[( c  b)] |  a[ b c]  b[ c d]  fis,[ g a]} |
  %18
  g4 g, r^\fermata \bar "|."
  }
}
