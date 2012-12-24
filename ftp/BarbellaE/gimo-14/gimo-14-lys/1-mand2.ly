\version "2.16.0"

IMandII =  \relative c'' {
  \clef "treble"
  \key g\major
  \time 4/4

  % end beams on quarters by default
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat "volta" 2 {
  \partial 8 <<b8 \\ g>> |
  %1 page 1
  <b g g,> c16. b32 a8 g fis g r e |
  d fis16 g \times 4/6 {a g fis c' b a} \times 2/3 {g fis g} g,8 r <d'' d,> |
  <d d, g,> e16. d32 c8 b a g r g | 
  g16 fis a b \times 4/6 {c b a e' d c} \times 2/3 {b a g} g8 r <d' g,> |
  <d fis,>[ <d fis,>] <d fis,> <d fis,> <d e,> <cis e,> <cis e,> <cis e,> |
  \times 4/6 {d16 a d e cis e fis d fis g d b}
    \times 2/3 {a b cis} cis8 r fis, |
  %7
  fis \times 2/3 {b16 a g} fis8 e fis \times 2/3 {g'16 fis e} d8 cis |
  d d, e fis <<{r b b b | a a b b} \\ {g g g g | fis fis g g}>>  a[ a a, a] |
  d4 r8 a'' \times 4/6 {b,16 g' fis g fis e} d8 cis |
  \times 4/6 {d16 b' a b a g} fis8 e  fis[ d cis c] |
  b16 cis d dis e fis g e a4 g16 fis e d? |
  %13 page 2
  a8 a e'4 d8 fis,16 fis g g e e |
  fis8 \times 2/3 { g'16[ fis e]} \times 4/6 {fis e d e d cis}
    d8 <a d,>16 <a d,> b b cis cis |
  <d d,>8 \times 2/3 { b'16[ a g]} \times 4/6 {a g fis g fis e}
    fis8 \times 2/3 {fis,16 fis a} \times 4/6 {fis fis a fis fis a} |
  <fis a,>8 <fis a,>16. <fis a,>32 <fis a,>16. <fis a,>32
    <fis a,>16. <fis a,>32 <fis a,>4.
  }

  \repeat "volta" 2 {
  <fis' a,>8 |
  %17
  <fis a, d,>8 g16. fis32 e8 d cis d r gis, |
  a cis16 d \times 4/6 {e d cis g' fis e} \times 2/3 {d a g} fis8 r <a' a,> |
  <a a, d,> b16. a32 <g a,>8 <fis a,> <e a,> d r d |
  d16 cis e fis \times 4/6 {g fis e b' a g} \times 2/3 {fis e d} d8 d16 c c b |
  b b b b a a a a gis b d b e,8 d' |
  %22
  c^- b^- a^- gis?^- a4 r8 c |
  c16 e d c c e d c d, d d d d8 e' |
  d^- c^- b^- a^- b32 g a b c d e fis g8 d16 dis |
  e32( fis g  e) c( d e  c) a8 g g fis d'16 c b a |
  <b d, g,>8 c16. b32 <a fis>8 g fis g r <g cis,> |
  %27 page 3
  d fis16 g \times 4/6 {a g fis c' b a} \times 2/3 {g d b} g8 r d'' |
  d16 c b a g f e d d8 c r g'' |
  g16 fis! e d cis b a g g8 fis r <<b \\ g>> |
  <<{c8 c c c b b b b} {e, e e e g g g g} {g, g g g g g g g}>> |
  %31 Note: The c16. was an c16 in the manuscript.
  <<{a'8 a a a} \\ {fis fis fis fis}>> g8 a64 b c16. b16 a g fis |
  g8 b, c d g, g' a b |
  c \times 2/3 {e16 d c} \times 4/6 {b a g a g fis} g8 \times 2/3 {b,16 b d}
    \times 4/6 {b b d b b d} |
  b8 <d b>16. <d b>32 <d b>16. <d b>32 <d b>16. <d b>32
    <b' g g,>4 r4^\fermata \bar "|."
  }
}
