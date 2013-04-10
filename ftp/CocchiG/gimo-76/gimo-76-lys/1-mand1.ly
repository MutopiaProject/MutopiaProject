\version "2.16.0"
\include "1-shared.ly"

IMandI =  \relative c'' {
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
  <<{<e cis>8 a | <e cis>[ <e cis> <e cis> <e cis>] <e cis>4} \\
    {a,8 s  a[ a a a] a4}>> r4 |
  \ISharedC 
  %42 page 6
  cis4 a8 cis |
  \ISharedD
} 

