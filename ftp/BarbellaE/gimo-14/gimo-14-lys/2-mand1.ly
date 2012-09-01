\version "2.16.0"

IIMandI =  \relative c'' {
  \clef "treble"
  \key g\major
  \time 4/4

  % end beams on quarters by default
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat "volta" 2 {
  \partial 8 g8 |
  %1 page 4
  <d' d, g,>8. c16 b8 d <d d, g,>8. c16 b8 g' |
  e16 c e g g e d c d8 g, r b' |
  a16 g fis e d c b a b g d b g8 g' |
  <b d, g,>8. a16 g8 b <b d, g,>8. a16 <<{g8 b} \\ {s g}>> |
  <<{c c c c} {g g g g}>> <<{ b[ g]} \\ {g r}>> r g' |
  %6
  fis16 e d c b a g fis g d b d g,8 b'' |
  a16 g fis e d fis g a g fis e d cis e fis g |
  g8 fis a16 fis d a b8 g g'16 e d cis |
  d8 d, b''16 g fis e fis8 d d d |
  %10
  e4. fis16 g fis8 d d d |
  e4. fis16 g fis8 a16 g fis e d c |
  b8 b'16 a g fis e d a4 <<{e'16 fis g e} \\ a,4>> |
  <<{fis'16 g a fis e fis g fis} \\ {a,4 a}>> fis'8 d, g' d, |
  %14 page 5
  a'' d,, b'' d, cis16 b a b cis d e fis |
  g fis e fis g fis g e fis8 d a'16 fis d c! |
  b8 b' a16 g fis e fis a fis d e g e cis |
  d cis d d, e' d cis e fis e d fis g8 b, |
  %18
   a[ a a a] <<{ cis[ cis cis cis]} {g g g g} {a, a a a}>> |
  <d' fis,> c, <<{a' a} \\ {fis fis}>> g g' fis16 e d cis |
  d fis d a cis e cis a d8 fis16 g a g fis e |
  d8 a fis a d,4.
  }

  \repeat "volta" 2 {
  <a'' a,>8 |
  %22
  <a a, d,>8. g16 <fis a,>8 a <a a, d,>8. g16 <fis a,>8 a |
  b, e16 g fis e d cis d a fis a d,8 d' |
  <d d, g,>8. c16 <b d,>8 <d d,> <d d, g,>8. c16 b8 g' |
  g16 a, a b c c b a g d b d g,8 d'' |
  d f r f f d r d |
  %27 page 6
  e, g b d c16 b a b c b c a |
  fis a fis a fis a fis a fis a fis a fis a fis a | 
  fis a fis a fis a fis a g8 g, r g'' |
  e d c b a d, r b' |
  c b a g fis d r d' |
  %32
  b g r g'16 bes cis,8 d r fis16 as |
  bes,8 c r es16 g a,8 bes r d |
  es16 d c b a8 g d' d, <a' d,> <a d,> |
  bes bes <cis d,> <cis d,> d d,16 e fis e fis d |
  %36
  g fis g d g fis g d fis!8 d r d' |
  <d d, g,>8. c16 <b d,>8 <d d,> <<{c b a c} \\ d,2>> |
  b'16 g b d d c b a g d b d g,8 <b' d,> |
  <d d,>8. c16 g8 b <a fis>8. g16 fis8 a |
  %40 page 7
  g16 e g b a g fis e fis8 d r g' |
  e^. g^. d^. g^. c,^. g'^. b,^. g'^. |
  a,16 b c d d c b a g d b d g,8 b' |
  c c, b b' a a, g b' |
  c, c d d g, <g'' b, d,> <g b, d,> <g b, d,> |
  %45
  g,16 d g b g d g b <g' b, d, g,>4 r^\fermata \bar "|."
  }
}
