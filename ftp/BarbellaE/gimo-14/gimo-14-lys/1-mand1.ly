\version "2.16.0"

IMandI =  \relative c'' {
  \clef "treble"
  \key g\major
  \time 4/4

  % end beams on quarters by default
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat "volta" 2 {
  \partial 8 <d d,>8 |
  %1 page 1
  <d d, g,> e16. d32 c8 b a g r g | 
  g16 fis a b \times 4/6 {c b a e' d c} \times 2/3 {b a g} g8 r <b d,> |
  <b d, g,> c16. b32 <a fis>8 g <fis c> <g b,> r cis, |
  d d \times 4/6 {a'16 g fis c' b a} \times 2/3 {g d b} g8 r b'' |
  \times 4/6 {a16 g fis fis e d d e fis fis g a
    g fis e e d cis cis! d e e fis g |
  %6
  fis d fis g e g a fis a b g d} \times 2/3 {cis b a} a8 r a' |
  b, \times 2/3 {g'16 fis e} d8 cis d \times 2/3 {b'16 a g} fis8 e |
  fis d cis(  c) b16 cis d dis e fis g e |
  a4 g16 fis e d a4 e' |
  d8 a d,4 r8 g a cis,? |
   d[ g a a,]  d[ d d fis] |
  <<{r b b b} \\ {g g g g  a[ a b b]}>> |
  %13 page 2
   a[ a a, a] d  a'16[ a]  b[ b d, cis'] |
  <d d,>8 \times 2/3 { b'16[ a g]} \times 4/6 {a g fis g fis e} d8
    fis,16 fis g g e e |
  fis8 \times 2/3 {g'16 fis e} \times 4/6 {fis e d e d cis}
    d8 \times 2/3 {d16 d fis} \times 4/6 {d d fis d d fis} |
  % Note: The last fourth is not dotted in the manuscript
  d8 <d d,>16. <d d,>32 <d d,>16. <d d,>32 <d d,>16. <d d,>32 <d d,>4.
  }

  \repeat "volta" 2 {
  <a' a,>8 |
  % 17
  <a a, d,> d16 a <g a,>8 <fis a,> <<{<e a,>[ d]} \\ {s r}>> r d |
  d16 cis e fis \times 4/6 {g fis e b' a g} \times 2/3 {fis e d} d8 r <fis a,> |
  <fis a, d,> g16. fis32 <e cis>8 d cis! d r gis, |
  a cis16 d \times 4/6 {e d cis g' fis e} \times 2/3 {d a fis} fis8 r d' |
  d16 f e d d f e d gis,, gis gis gis gis8 f'' |
  %22
  e d c b c32( a b  c) d( e fis!  gis) a16 c, c b |
  a a a a g g g g fis fis fis fis fis8 c' |
  b_- a_- g_- fis_- g4 r8 b |
  c32 d e c a b c a c,8 cis d d r <d' d,> |
  <d d, g,> e16. d32 <c d,>8 <b d,> <a d,> g r g |
  %27 page 3
  g16 fis a b \times 4/6 {c b a e' d c} \times 2/3 {b a g} g8 r f' |
  f16 e d c b a g f f8 e r e' |
  e16 d cis b a g fis e e8 d r d' |
  e32 c e g e c e g e c e g e c e g d b d g d b d g d b d g d b d g |
  %31 Note: The e16. was an e16 in the manuscript.
  c, a b c d e fis g a g fis e d c b a b8 c64 d e16. d16 c b a |
  g8 d'32 b a g a8 c32 a g fis g8 g'16 fis f4 |
  e8 \times 2/3 {g16 fis! e} \times 4/6 {d c b c b a} g8
    \times 2/3 {g16 g b} \times 4/6 {g g b g g b} |
  %34
  g8 <g g,>16. <g g,>32 <g g,>16. <g g,>32 <g g,>16. <g g,>32
    <g' b, d, g,>4 r^\fermata \bar "|."
  }
}
