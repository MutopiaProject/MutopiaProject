\version "2.16.0"

IIMandI =  \relative c'' {
  \clef "treble"
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \key g\major
  \time 2/2
%page 11
  \partial 4 d4 |
  d \slashedGrace c8 b16 a b c \times 2/3 { d8[ d d]  d[ d d]} |
  e4 e16 d e fis \times 2/3 { g8[ g g]  g[ fis e]} |
  d4 b16 a b c \times 2/3 { d8[ d d]  d[ c b]} |
  %4
  a4 a16 g a b \times 2/3 { c8[ c c]  c[ b a]} |
  b4 d16 c d e \times 2/3 { g8[ fis e]  g[ fis e]} |
  cis4 e16 d e fis \times 2/3 { e8[ fis g]  g[ fis e]} |
  fis4 \times 2/3 { a8[ g fis]  fis[ e d]  a'[ g fis]} |
  %8
  e4 \times 2/3 { g8[ a b]  a[ g fis]  e[ d cis]} |
  d4 \times 2/3 { a'8[ g fis]  fis[ e d]  a'[ g fis]} |
  e4 \times 2/3 { g8[ a b]  a[ g fis]  e[ d cis]} |
  \times 2/3 { d8[ a' fis]  fis[ d d]  d[ a a]  a[ fis fis]} |
  %12
  fis2 r4 a'4 |
  a4 fis16 e fis g \times 2/3 { a8[ a a]  a[ a a]} |
%page 12
  b4 b,16 a b cis \times 2/3 { d8[ d d]  d[ cis b]} |
  a4 fis'16 e fis g \times 2/3 { a8[ a a]  a[ g fis]} |
  %16
  e4 g16 fis g a \times 2/3 { g8[ g g]  g[ fis e]} |
  d4 fis,16 e fis g \times 2/3 { a8[ a a]  a[ g fis]} |
  e4 e16 d e fis \times 2/3 { g8[ g g]  g[ fis e]} |
  \times 2/3 { d[ fis fis]  fis[ a a]  a[ d d]  d[ f f]} |
  %20
  \times 2/3 { f?[ e d]  f[ e d]  c[ b a]  a[ b c]} |
  \times 2/3 { c[ a a]  a[ c c]  c[ fis fis]  fis[ a a]} |
  \times 2/3 { a[ a, b]  c[ b a]  b[ a b]  d[ c d]} |
  \times 2/3 { g[ d g]  g[ d g]} g4 e |
  %24
  \times 2/3 { d8[ e d]  c[ b a]} g4 \times 2/3 { d'8[ c b]} |
  \times 2/3 { b[ a b]  d[ c b]  b[ c d]  e[ fis g]} |
  \times 2/3 { fis[ e d]  c[ b a]} g2
  \bar "|."
}
