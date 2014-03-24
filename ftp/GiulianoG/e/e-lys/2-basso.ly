\version "2.18.0"

IIBasso =  \relative c {
  \clef "bass"
  \key a\major
  \time 3/4

  \repeat "volta" 2 {
  \partial 8 r |
  %1 page 4
  a4 cis a | r cis a | d cis gis! | a cis a | 
  %5
  e' gis e | a, cis cis | d d e | a,   a8[ a cis a] | a2.:8 |
  %10
  a: | a: | a: | a4 a a | e' r8   e[ gis e] |
  %15
  b2.: | gis': | b,: | gis'4 r8   gis[ gis gis] |
  %19
  gis2. | gis4 gis gis |
  %21 page 5
  e4 b' b, | e2 r8
  }

  %22 Note: These three notes do not make much sense. Up to the reader to interpret.
  \repeat "volta" 2 {
  e8*1/3 gis b |
  %23
  e,4 gis d | e e gis | a gis d | e e gis | a a b |
  %28
  gis e gis | a a b | e,   e8[ d! cis b] | a4 a a | d   cis8[ e cis a] |
  %33
  gis4 b gis | a cis a | a2.:8 | a4   cis8[ b cis a] | a2.: |
  %38
    a8[ b cis d cis b] | a4 a a | a a a | d e e, |
  %42
  a2 r8
  }
}
