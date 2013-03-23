\version "2.16.0"

IIIBasso =  \relative c {
  \clef "bass"
  \key d\major
  \time 3/8

  %1 page 11
  d4 a8 | d e fis | d4 a8 | d e fis | g4 fis8 | e cis d | a a a |
  %8
  a4 r8 | d4 a8 | d e fis | d4 a8 | d e fis | g4 fis8 | e cis d | a a a
  %16 page 12
  a4 r8 | a4. | a'8 a a | a,4. | a'8 a a | d, e fis | cis b a | d e fis |
  %24
  a, b cis | d e e, | a a' g! | f d cis | d d d | cis cis a | d f e |
  %31
  d \clef "tenor" d' cis | d d d | cis cis a | d, f e |
  %35 page 13
  d d' bes | c?4 f,8 | bes! bes bes | a4 r8 | \clef "bass" cis,8 a d |
  %40
  g e fis | cis a d | g e fis | b g a | fis fis e | d4 cis8 | d4 cis8 |
  %47 Note: This measure was not present in the manuscript. Moved here from bar 70.
  d4 cis8 |
  %48
  d a' g | f d cis | d d d | cis cis a |
  d f e | d \clef "tenor" d' cis | d d d |
  %54 page 14
  cis cis a | d, f e | d d' bes | c4 f,8 | bes bes bes | a r r |
  %60
  \clef "bass" cis, a d | g e fis | cis a d | g e fis | b g a | fis g e |
  %66
  d4 cis8 | d4 cis8 | d d a | d, fis' e |
  %70 Note: This measure was present here in the manuscript. I moved it to bar 47.
  %d4 cis8 |
  d4 cis8 | d4 cis8 | d4 cis8 | d fis a | d, fis a |
  %76
  d,4 r8^\fermata \bar "|."
}
