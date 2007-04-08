\version "1.6.0"
\include "1-shared.ly"

IMandI = \notes \relative c'' {
  \clef "treble"
  \key d\major
  \time 4/4

  % end beams on quarters by default
  \property  Voice.autoBeamSettings \override
    #'(end * * * *) = #(make-moment 1 4)
  %1 page 2
  <fis4 a, d,> a8 fis <fis4 a, d,> a8 fis |
  \ISharedA
  %8 page 2
  a4 e8 cis |
  \ISharedB
  %24 page 4
  <{<e8 cis> a | [<e cis> <e cis> <e cis> <e cis>] <e4 cis>} \\
    {a,8 s [a a a a] a4}> r4 |
  \ISharedC 
  %42 page 6
  cis4 a8 cis |
  \ISharedD
} 

