\version "2.16.0"
\include "1-shared.ly"

IMandII =  \relative c'' {
  \clef "treble"
  \key d\major
  \time 4/4

  % end beams on quarters by default
  %1 page 2
  <fis a, d,>4 a8 fis <fis a, d,>4 a8 fis |
  \ISharedA
  %8 page 2
  a4 e8 cis |
  \ISharedB
  %24 page 4
  <a e cis>8 cis | <a e cis> <a e cis> <a e cis> <a e cis> <a e cis>4 r |
  \ISharedC
  %42 page 6
  cis4 a8 e' |
  \ISharedD
}
