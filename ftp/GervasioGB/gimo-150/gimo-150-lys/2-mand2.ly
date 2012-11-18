\version "2.16.0"

IIMandII =  \relative c'' {
  \clef "treble"
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \key g\major
  \time 2/2
%page 18
  \partial 4 b4 |
  b4 g16 fis g a \times 2/3 { b8[ b b]  b[ b b]} |
  c4 c16 b c d \times 2/3 { e8[ e e]  e[ d c]} |
  b4 g16 fis g a \times 2/3 { b8[ b b]  b[ a g]} |
  %4
  fis4 fis16 e fis g \times 2/3 { a8[ a a]  a[ g fis]} |
  g4 b16 a b c \times 2/3 { b8[ a g]  b[ a g]} |
  e4 cis'16 b cis d \times 2/3 { cis8[ d e]  e[ d cis]} |
  d4 \times 2/3 { fis8[ e d]  a[ g fis]  fis'[ e d]} |
  %8
  b4 \times 2/3 { e8[ fis g]  fis[ e d]  g,[ fis e]} |
  fis4 \times 2/3 { fis'8[ e d]  a[ g fis]  fis'[ e d]} |
  b4 \times 2/3 { e8[ fis g]  fis[ e d]  g,[ fis e]} |
  \times 2/3 { d8[ fis' d]  d[ a a]  a[ fis fis]  fis[ d d]} |
  %12
  d2
%page 19
    r4 fis'4 |
  fis d16 cis d e \times 2/3 { fis8[ fis fis]  fis[ fis fis]} |
  g4 g,16 fis g a \times 2/3 { b8[ b b]  b[ a g]} |
  fis4 d'16 cis d e \times 2/3 { fis8[ fis fis]  fis[ e d]} |
  %16
  cis4 e16 d e fis \times 2/3 { e8[ e e]  e[ d cis!]} |
  d4 d16 cis d e \times 2/3 { fis8[ fis fis]  fis[ e d]} |
  cis4 cis16 b cis d \times 2/3 { e8[ e e]  e[ d cis]} |
  \times 2/3 { d8[ a a]  a[ fis fis]  fis[ a a]  a[ d d]} |
  %20
  \times 2/3 { d[ c b]  d[ c b]  a[ gis a]} a4 |
  \times 2/3 { a8[ fis fis]  fis[ a a]  a[ c c]  c[ fis fis]} |
  \times 2/3 { fis[ fis, g]  a[ g fis]  g[ fis g]  b[ a b]} |
  \times 2/3 { d[ b d]  d[ b d]} d4 c |
  %24
  \times 2/3 { b8[ c b]  a[ g fis]} g4 \times 2/3 { b8[ a g]} |
  \times 2/3 { g[ fis g]  b[ a g]  g[ a b]  c[ d e]} |
  \times 2/3 { d[ c b]  a[ g fis]} g2 % the g2 was e2 in the manuscript
  \bar "|."
}
