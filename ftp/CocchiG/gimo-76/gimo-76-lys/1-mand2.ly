\version "1.6.0"
\include "1-shared.ly"

IMandII = \notes \relative c'' {
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
  <a,8 e cis> cis | <a e cis> <a e cis> <a e cis> <a e cis> <a4 e cis> r |
  \ISharedC
  %42 page 6
  cis4 a8 e' |
  \ISharedD
}
