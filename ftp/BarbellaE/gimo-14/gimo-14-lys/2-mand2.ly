\version "2.16.0"

IIMandII =  \relative c'' {
  \clef "treble"
  \key g\major
  \time 4/4

  % end beams on quarters by default
  \set Timing.baseMoment = #(ly:make-moment 1 4)

  \repeat "volta" 2 {
  \partial 8 g8 |
  %1 page 4
  <b d, g,>8. a16 g8 b <b d, g,>8. a16 <<{r8 b} \\ {g8 g}>> |
  <<{c c c c} {g g g g}>> <<{b r} \\ { g[ g]}>> g, g'' |
  fis16 e d c b a g fis g d b d g,8 g' |
  <d' d, g,>8. c16 b8 d <d d, g,>8. c16 b8 g' |
  e16 c e g g e d c d8 g, r b' |
  a16 g fis e d c b a b g d b g8 g'' |
  %7
  fis16 e d cis d d e fis e d cis! b a cis d e |
  e8 d fis16 d a fis g8 g, b'16 g fis e |
  fis8 d g'16 e d cis d8 <<{a a a} \\ { fis[ fis fis]}>> |
  <<{ b[ b]} \\ { g[ g]}>>  a[ a,] <<{d a' a a} \\ {s fis fis fis}>> |
  %11
  <<{ b[ b]} \\ { g[ g]}>>  a[ a,] d fis'16 e d c b a |
  g8 g'16 fis e d cis b a4 cis16 d e cis |
  d e fis d cis d e cis d cis d d, e' d cis d |
  %14 page 5
  fis e d fis g8 b, a a a a |
  <<{cis cis cis cis} {g g g g} {a, a a a}>> <d' fis,> d, <<{a' a} \\ {fis fis}>> |
  g g' fis16 e d cis d fis d a cis e cis a |
  fis'8 d, g' d, a'' d,, b'' d, |
  cis16 b a b cis d e fis g fis e fis g fis g e |
  d8 d a'16 fis d c b8 b' a16 g fis e |
  fis16 a fis d e g e cis d8 d16 e fis e d cis |
  d8 a fis a d,4.
  }

  \repeat "volta" 2 {
  <<fis'8 \\ d>> |
  %22
  <fis d d,>8. e16 d8 fis <fis d d,>8. e16 d8 fis |
  g, g16 b a g fis e d4 d'16 c b a |
  <b d, g,>8. a16 g8 b <b d, g,>8. a16 g8 g, |
  <e' c> <e c> <fis d> <fis d> g16 d b d g,8 d''16 b |
  gis b gis b gis b gis b gis b gis b gis b gis b |
  %27 page 6
  gis b gis b gis b gis b a8 a, r c' |
  c e r e e c r c |
  d, fis a c b16 a g a b a b g |
  c8 b a g fis d r g' |
  e^. d^. c^. b^. a8 d, d'16 c bes a |
  %32
  <<{g8 bes bes bes bes a a d} \\ {s g, g g g fis fis f}>> |
  <<{d' c c c c bes bes bes} {f? e e es es d d g}>> |
  <es c>4 r8 cis d8 d16 e fis!16 e fis d |
  g16 fis g d g fis g e! <<{d'8 d a a} {d, d d d}>> |
  %36
  <<{b' b cis cis d} {d, d d d d}>> d r <b' d,> |
  <b d, g,>8. a16 g8 b a8. g16 fis8 a |
  g16 e g a b a g fis g d b d g,8 <d'' d,> |
  <d d,>8. c16 b8 d <<{c8. b16 a8 c} \\ d,2>> |
  %40 page 7
  b'16 g b d c b a g fis8 d16 c b8 g |
  c c' b b, a a' g b, |
  c c d d g,4 r8 g'' |
  e^. g^. d^. g^. b, g' b, g' |
  a,16 b c d d c b a g d g b g d g b |
  %45
  <<{g'8 g g g g4} {b,8 b b b b4} {d,8 d d d d4} {s s g,}>> r^\fermata \bar "|."
  }
}
