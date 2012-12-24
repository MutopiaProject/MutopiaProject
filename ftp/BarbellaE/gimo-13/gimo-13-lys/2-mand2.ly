\version "2.16.0"

IIMandII =  \relative c'' {
  \clef "treble"
  \time 4/4
  \key g\major

  %page 4
  \repeat "volta" 2 {
  \partial 8 g8 | <fis' d, g,> e-. d-. c-.
    <b d, g,>8.[ a16-.]  g8[-. b-.] |
  <e, c> c'-. b-. a-.  g8.[ fis16] g4 | r8 e fis d r e fis d |
  %4
  g16 e' d c b a g fis g8 g, r b' |
  <b d, g,> e d c <b d, g,>8.[ a16]  g8[-. b-.] |
  e, c'-. b-. a-.  g[-. fis-.]  g[-. fis-.] |
  %7
  g a16 g fis e fis d g d a' g fis e fis d |
  g e' d c b a g fis g8 g, r <b' d,> |
  <b d, g,>8.[ a16-.]  g8[-. b-.]  a[-. g-.]  fis[-. a-.] |
  %10
  <a fis>8.[ g16]  fis8[-. a-.] <g g,>8.[ fis16]  g8[ <b g>] |
  <b g>8[ c16. b32]  a8[ g] <e c> <e c> <e c> <e c> |
  <e c> <e c> <e cis> <e cis> d d r <fis' a,> | 
  %13
  <fis a, d,>8.[ e16]  d8[ fis] <e cis>[ d]  cis8[ e] |
  d fis, cis e fis d r <a'' a,> |
  <a a, d,>8.[ g16]  fis8[ <a a,>] <g a,>8.[ fis16]  e8[ <g a,>] |
  %16
  fis d a cis d,16 d' d, d' d, cis'! e cis |
  d, d' fis d d, e' g e <a d,> fis d fis g b, g' b, |
  cis e cis e fis a, fis' a, b d b d b g b gis? |
  a8 a, r <fis'' a,> <e a,>16 d cis d e d e cis |
  %20
  <fis a,> e d e fis e fis d <e cis> d cis d e d e cis |
  d8 d, r4 <fis' a, d,>8 d, fis a |
  fis'16 d fis d fis d fis d g d g d g d e cis |
  d fis d a cis e cis a d4 r |
  %24
  r8 d, fis a fis'16 d fis d fis d fis d |
  g d g d g d e cis d fis d a cis! e cis a |
  d, a' fis a d, a' fis a d, b' g b d, b' g b |
  %27
  d, a' fis a d, a' fis a g b a g fis a e a |
  d, a' fis a d, a' fis a d,16 b' g b d, b' g b |
  d, a' fis a d, a' fis a g b a g fis8 e | d b' a g fis <b g> <a fis> e |
  %31
  d g g g a a a, a | d b' a g fis g <b g> <b g> | a a a, a d4 r8
  }

  \repeat "volta" 2 {
  d'8-| |
  %34 page 6
  <fis a, d,> g-. fis-. e-. <d d,>8. a16-. fis8-. d'-. |
  g, b a g fis16 d fis a d,8 d' |
  <a' a, d,> b a g <fis a, d,>8.[ e16]  d8[ fis] |
  %37
  b, g' fis e d16 d, fis a fis d fis a |
  gis16 b gis b gis b gis b gis b gis b gis b gis b |
  gis? b gis b gis b gis b c a b gis! a e gis! e |
  %40
  a e c' a d a d a c a b gis a e gis e |
  a e a e a e a c c d e d c b a gis |
  a b c b a g! fis e fis d fis d fis d fis d |
  %43
  fis d fis d g d fis d g d bes' d, bes' d, c' d, |
  bes' d, a' d, g d fis d g d fis d fis d fis d |
  g d b' d, g d b' d, a' d, fis d fis d fis d |
  %46
  g d b' d, a' d, g d g d fis d fis8 <d' d,> |
  <d d, g> g-. fis-. e-. <d d, g,>[ c-.]  b[-. d-.] |
  a e' d c <b d, g,>8.[ a16]  g8[-. fis-.] |
  %49
  g e fis d g e fis d |
   g[ <b d,> <b d,> g] g fis d16 c b a |
  g b d g g, b d g g, c d g g, c d g |
  g, b d g g, b d g g, c d g g, c d g |
  %53 page 7
  a, cis e a a, cis e a a, d fis a a, d fis a |
  % Note: The b, here should probably be an a,
  b, cis e a a, cis e a a, d fis a d c bes a |
  g bes g bes g bes g bes fis a fis a fis a fis a |
  %56
  g bes g bes g bes g bes fis a fis a d c b a |
  g bes g bes g bes g bes fis a fis a fis a fis a |
  g bes g bes g bes g bes fis 8 d r <b' d,> |
  %59
  <b d,>8.[ a16]  g8[ b] <a fis>8.[ g16]  fis8[ a] |
   g16[ d b' g]  fis8[ d]  g[ g,] r <d'' d,> |
  <d d, g,>8.[ c16]  b8[ <d d,>] <c d,>8.[ b16]  a8[ <c d,>] |
   b16[ d b g]  a8[ fis] g4 e8 c |
  %63
  b16 g' a b c d e fis g4 e8 c | b g a fis <g g,>4 e'8 c |
  b g a fis g16 g a b c d e fis |
  %66
  g b, c d e fis g a b4 g8 e |
  <<{ d[ b c a]} \\ d,2>> <b' d,>4 g'8 e |
  d-. b-. c-. a-. g r c d, |  b'[ d,]  fis[ d]  g[ d]  c'16[ d, c' d,] |
  %70
  b' d, b' d, fis d fis d g8 r c, r | d d d d g,4 <fis'' a, d,>8 r |
  <g b, d,> r <a c, d,> r <g b, d,> r <fis a, d,> r |
  %73
  <g b, d,> r <a c, d,> r b, g' r e | d c b a g r c, r |
  %75 page 8
  d a' g fis g16 a b c d8 d, |
  g16 a b c d8 d, <b' d, g,>4 r^\fermata \bar "|."
  }
}
