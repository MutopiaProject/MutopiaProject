\version "2.16.0"

IIMandI =  \relative c'' {
  \clef "treble"
  \time 4/4
  \key g\major

  %page 4
  \repeat "volta" 2 {
  \partial 8 g8 | <d' d, g,> g-. fis-. e-. <d d, g,>[ c-.]  b[-. g'-.] |
  a, e'-. d-. c-. <b d, g,>[ a]  g[-. a-.] | b c r a b c r a |
  %4
  b16 g' fis e d c b a g8 g, r d'' |
  <d d, g,> g fis e <d d, g,>8.[ c16]  b8[-. g'-.] |
  a,-. e'-. d-. c-. <b d, g,>8.[ a16-.]  g8[-. a-.] |
  %7
  <b d,> <c d,> r <a d,> <b d,> <c d,> r <a d,> |
  b16 g' fis e d c b a g8 g, r d'' |
  <d d, g,>8.[ c16-.]  b8[-. d-.] <c d,>[-. b-.]  a[-. c-.] |
  %10
  <c d,>8.[ b16]  a8[-. c-.] <b d, g,>8.[ a16]  g8[ <d' d,>] |
  <d d,>8[ e16. d32]  c8[ b] a16 gis a b c b c d |
  e d c b a g fis g d'8 d, r a'' |
  %13
  <a a, d,>8.[ g16]  fis8[ <a a,>] <g a,>8.[ fis16]  e8[ <g a,>] |
  <fis a,> d-. a-. cis-. d d, r <fis' a,> |
  <fis a, d,>8.[ e16-.]  d8[-. fis-.] <e cis>8.[ d16-.]  cis8[-. e-.] |
  d-. fis,-. cis-. e-. d16 d' fis d d, e' g e |
  %17 page 5
  d,16 fis' a fis d, g' b g  a8[ ais]  b[ dis,] |
   e[ gis]  a[ cis,]  d[ fis]  g?[ b,] |
  cis a r <a' a,> <g a,>16 fis e fis g fis g e |
  %20
  <a a,> g fis g a g a fis <g a,> fis g e g fis g e |
  <fis a,>8 d, fis a d a d fis | <a a, d,>4. ais8 ais4(  b8) g |
  fis16 a fis d e g e cis d8 d,-. fis-. a-. |
  %24
  d-. a-. d-. fis-. <a a, d,>4. ais8 |
  ais4(  b8) g fis16 a? fis d e g e cis |
  d8 d, r a'' b, g' r g | a, fis' r a b,16 g' fis e d8 cis |
  %28
  d8 d, r a'' b, g' r g | a, fis' r a b,16 g' fis e d8 cis |
  d16 cis d cis d cis d cis d cis d cis d cis d cis |
  %31
  d8 b' a16 g fis e a,4 e' |
  d16 cis d cis d cis d cis d8 b' a16 g fis e | a,4 e' d8 d, r
  }

  \repeat "volta" 2 {
  d'8-| |
  %34 page 6
  <a' a, d,> b-. a-. g-. <fis a, d,>8. e16-. d8-. fis |
  b,-| g'-. fis-. e-. d d, r d'-| |
  <fis a, d,> g-. fis-. e-. <d d,>8.[ a16]  fis8[-. d'-.] |
  %37
  g, e' d cis d d, r d' | d f r d d b r b' | b gis r f-. e d c b |
  %40
  c a' r f-. e-. d-. c-. b-. | c a r c c c, r c' |
  c a r a' a fis r <es d,> | d c bes a <bes! d,> g' r <es d,> |
  %44
  <<{ d8[ c bes a]  bes[-- a]} \\ {d,2 d4}>> r8 d'-| |
  d-- g-| r b,! c a r a' |
  b,-. d-. c-. b-. <<{ b8[-. a-.]} \\ d,4>> r8 b'-| |
  %47
  b-. e-. d-. c-. <b d, g,>8.[ a16]  g8[ b] |
  <e, c> c'-. b-. a-. <g g,>8.[ fis16]  g8[ a] |
  b c r a b c r a |
  b d g b, <<{ b8[_\trill a]} \\ d,4>> r8 d' |
  %51
  g, b d f e c g, c' | g, b' d f e c r e |
  %53 page 7
  a, cis e g  fis[ d]  d,[ a''] | a, cis e g  fis[ d] r d |
  d bes' r d, es c r a | bes d g bes,! a d, r d' |
  %57
  d bes' r d, es c r a |  bes[ d]  g[ bes,]  a[ d,] r <d' d,> |
  <d d, g,>8.[ c16]  b!8[ d] <c d,>8.[ b16]  a8[ c] |
   b16[ d b g]  a8[ fis]  g[ g,] r <b' d,> |
  %61
  <b d, g,>8.[ a16]  g8[-. b-.]  a8.[ g16]  fis8[-. a-.] |
  g16 b g e fis8 d g16 g a b c d e fis |
  g b, c d e fis g a b4 g8 e |
  %64
  <d d,>8 <b d,> <c d,> <a d,> <b d,>4 g'8 e |
  <d d,>8 <b d,> <c d,> <a d,> g4 r |
  r16 g a b c d e fis g4 e8 c | b g a fis g4 e'8 c |
  %68
  b-. g-. a-. fis-. g r <fis' a, d,> r |
  <g b, d,> r <a c, d,> r <g b, d,> r <fis a, d,> r |
  <g b, d,> r <a c, d,> r b, g' r e |
  %71
  d c b a g4 c8 d, |  b'[ d,]  fis[ d]  g[ d]  c'[ d,] |
   b'[ d,]  fis[ d] g r c, r | d a' g fis g g' r e |
  %75 page 8
  d c b a g r <fis' a, d,> r |
  <g b, d,> r <a, fis d> r <g' b, d, g,>4 r4^\fermata \bar "|."
  }
}
