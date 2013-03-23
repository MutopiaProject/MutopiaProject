\version "2.16.0"

IBasso =  \relative c {
  \clef "bass"
  \key d\major
  \time 4/4

  %1 page 2
  d4 r d r | d fis e cis | d r d r | d fis g a | d,8 d d d d d d d |
  d d d d cis cis cis cis | cis cis cis cis cis cis cis cis |
  b b b b d d d d | b b b b a a a a | a4 r a r | c d e r8 gis |
  %12 page 3
  a4 r8 gis a4 e | a, r8 gis' a4 r8 gis | a4 r8 gis a4 e |
  a,8 a' gis fis  e[ d]  cis[ b] | a a' gis fis e d cis b | a4 d cis b |
  a d cis b | a r a r | a r a r | a'8 gis fis e fis e d cis |
  %22 page 4
  d4 e a, a8 a | a a a a a a' fis e | d4 cis e g |
  %25 Note: this bar only has 4 eighths
  b8 e, g e s s s s | cis4 a d fis | g a d,8 fis d cis |
  b d' e d cis b ais fis | b a! g e fis e d cis |
  %30
  b \clef "tenor"  d'[ e d] cis b ais g |
  %31 page 5
  b a! g e fis4 \clef "bass" fis8 e | d4 r d r | d fis e cis |
  d d d r | d fis g a |
  %36 Note: The natural sign before the c is written as a flat.
  d, r \clef "tenor" f'!8 f f f | f?4 d cis! r |
  %38 page 6
  s1 | es8 es es es es4 c | bes4 r g8 g g g | g4 gis a \clef "bass" a, ~ |
  %42
  a8 a g' g fis fis e e | d d cis cis b b a a | g g fis fis g g gis gis |
  a4 r a r | a r a r |
  %47 page 7
  d4 fis e cis | d fis e cis | d b g a |
  %50 Note: The natural sign before the "f!":s are written as a flat.
  d, \clef "tenor" f''! e cis | d f! e cis | d bes g a |
  d, r \clef "bass" d r | d r d r |
  %55 page 8
  d r d'8 cis b a | b a g fis g4 a | d, r r a | d, r r a' |
   d8[ d']  d,[ d'] g,4 a |  d,8[ d']  d,[ d'] g,4 a |  d,8[ d']  d,[ d'] g,4 a |
  %62
  d,4 d d8 d d d | d4 r r2_\fermata \bar "|."
}
