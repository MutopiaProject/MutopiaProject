\version "2.16.0"

oneviolatwo = \new Voice { \relative c' {
  \set Staff.instrumentName = "Viola 2"
  \set Staff.midiInstrument = "viola"
  \clef alto
  \key bes \major
  \time 4/4

  \partial 4 r4 d8[ f d( f)] ees[ f ees( f)] d8[ f d( f)] a,[ f' bes, f']
  \times 2/3 { bes8[( a c)]}
  \times 2/3{ c[( bes d)]} d4. c8 a8[( bes)] bes4 d,8[ bes d bes] ees,4 f g a
%{comment - end of line one in the manuscript, end of bar 5 %}

  bes8 r r4 r <aes f>4 <g ees>4 \acciaccatura {d''8} c16[ bes( c d)] ees8[ ees ees ees] cis8[( d)] d8[ d d d] c8[ bes] f16[( ees g ees)] d8[ f d f] ees[ f] d r <a ees>8 r < bes d,>8 r bes'4 f'2 a,2
%{comment - end of line 2 in the manuscript, end of bar 11 %}

  bes4. c16[( d)] ees4 d
  \times 2/3{d8[( c ees)]}
  \times 2/3{ ees8[( d f)]}
  f4. ees8 cis8[( d)] d4 r8 f,8[ f fis] fis16[ g] r8 gis16[( a)] r8 a16[( bes)] r8 b16[( c)] r8 \acciaccatura {ees8} d4 f16[ d ees c] bes4( b)
%{comment - end of line 3 in the manuscript, end of bar 16 %}

  c16[ b c d] ees[ d ees f] g8[ g g g] e8( f)] f8[ f f f] ees8[ d] c16[ b c( d)] ees[ d ees f] g4. bes,8 \appoggiatura{bes8} a2 r2 e,8[ c' g c] e,8[ c' g c] f,8[ c' a c] f,8[ c' a c] <g bes>2 < c e,>2
%{comment - end of line 4 in the manuscript, end of bar 23 %}

  <c f,>4 r4 a'8[( c a c)] bes8[( c bes c)] bes8[( c bes c)]  a8[( c a c)]  a8[( c a c)] bes8[( c bes c)] bes8[( c bes c)] a16[( bes) c bes] a16[( bes) c bes] a16[( bes) c bes] a16[( bes) c-. a-.] e'16[ f g f]  e16[ f g f]  e16[ f g f]  e16[ f g e] f8.[ f,16] ees16[( d c bes)] a[ bes( c a)] f[ g( a f)]
%{comment - end of line 5 in the manuscript, end of bar 30 %}

  bes[ c d c] bes[ a g f] e[ f g a] bes[ g e c] f8[ f' d bes] c[ c] c,[ c] f4 a16[ bes( c a)] bes4 bes16[( c d bes)] g4 g16[ a( bes g)] e4 e16[ f g e] ees4 r r2 <g c,>2\fermata bes8[( c bes c)] a[( c a c)] e,[( c' e, c')]
%{comment - end of line 6 in the manuscript, end of bar 37 %}

  f,8[ c' a c] bes[ c bes c] a[ c a c] e,[ c' e, c'] f,4 g'16[ bes g bes] c[ bes a g] f[ ees d c] bes[( a bes a)] bes[( a bes a)] bes8[ bes bes bes] c[ c c c] c,[ c c c] f8[ f'] g[ a] bes[ c] d[ e]

  \clef treble

  f4.
  \times 2/3{e16[( f-| g)]}
  f4( fis)
%{comment - end of line 7 in the manuscript, end of bar 37 %}

  g4. bes16[ g] f8[ e d c] f4.
  \times 2/3{e16[( f g)]}
  f4 fis g4. bes16[ g] f8[ e d c] f16[( g a g)] f16[( g a g)] f16[( g a g)] f16[( g a f)]
  g16[( a bes a)] g16[( a bes a)] g16[( a bes a)] g16[( a bes g)] a2( c) d, bes'
%{comment - end of line 8 in the manuscript, end of bar 44 %}

  a4 bes8[( g)] g2 f16[ g a( g)] f4 d16-|[ e f( e)] d4 bes16-|[ c d( c)] bes4 g16-|[ a( bes a)] g4

  \clef alto

  a16[ bes c bes] a[ g f e] d[ c bes a] g[ f e d] <c bes' e>2\fermata r8 e'8[ f g] e[( f)] f4 \appoggiatura{fis8} g4. a8
%{comment - end of line 9 in the manuscript, end of bar 57 %}

  c8.[ a16] f4 r8 e8[( f g)] e[( f)] f4 \appoggiatura{f8} g4. bes8 a4 c16[ d c d] e[ d c bes] a[ g f ees] d[ fis g( fis)] g[ fis g( fis)] g8[ bes16 a] c16[ bes a g] f2 g2\prall f4 r4 <c e,>2 <c f,>4 r4 <bes c,>8 r8 <bes c,>8 r8
%{comment - end of line 10 and page 1 in the manuscript, end of bar 64 %}

  <a c,>8 r8 <bes c,>8 r8 <a c,>8 r8 \bar ":|:"

  r4 a8( c a c)] bes[( c bes c)] a[( c a c)] e,[( c' f, c')]
  \times 2/3{f8[( e g)]}
  \times 2/3{g8[( f a)]}
  a4. g8 f16[ g a g] f16[ g a g] f4 r4 <ees c>2. a,8[ g] fis16[ a fis a] fis16[ a fis a] c16[ d, c' d,] c'16[ d, c' d,]
%{comment - end of line 1 page 2 in the manuscript, end of bar 71 %}

  bes'16[ d, bes' d,] bes'16[ d, bes' d,] d'16[ bes d bes]  d16[ bes d bes] ees16[ bes ees bes] ees16[ bes ees bes] g16[ ees' bes ees] g,16[ ees' bes ees] g,16[ ees' c ees] g,16[ ees' c ees] g,16[ bes des bes] g16[ bes des bes] aes4 <c, g' g'>4 r4 \appoggiatura{c8} aes''4 aes2 des8[( c bes aes)] aes-.[ ges-.] ees4 c'4.( des16[ ees)] des4.
  \times2/3{c16[( des ees)]}
%{comment - end of line 2 page 2 in the manuscript, middle of bar 78 %}

  des8[( c bes a)] a8-.[ ges-.] ees4-. c'4.( des16[ ees)] des4.
  \times 2/3{c16[( des ees)]} des4 f f8 ees4 ees ees ees8 ees8 c4 a4 ees4 c8 bes8[ f' des f] bes,8[ f' des f] c8[ f ees f] c8[ f ees f] bes,8[ f' des f] bes,8[ f' des f] c8[ f ees f] c8[ f ees f]
%{comment - end of line 3 page 2 in the manuscript, end of bar 86 %}

  des4 <g, e>2. f2 < b c,>2 <bes des,>4 <g e>2. f4 r4 d''16[( ees8.)] d16[( ees8.)] b16[( c8.)] r4 b16[( c8.)]  b16[( c8.)] d,16[( ees8.)] r4  d16[( ees8.)]  d16[( ees8.)] ees8 ees4 ees ees ees8 <ees c>1 d8[( f d f)] d8[( f d f)] ees[( f ees f)] ees[( f ees f)]
%{comment - end of line 4 page 2 in the manuscript, end of bar 96 %}

  d8[( f d f)] d8[( f d f)] ees8[( f ees f)] ees8[( f ees f)] d16[ ees f ees] d16[ ees f ees] d16[ ees f ees] d16[ ees f d] a'[ bes c bes] a[ bes c bes] a[ bes c bes] a[ bes c a] bes8.[ bes,16] aes16[ g f ees] d[ ees f g] aes[ f d bes'] ees,[ ees' g f] ees[ d c bes] a[ bes c a]
  f[ g a f]
%{comment - end of line 5 page 2 in the manuscript, end of bar 102 %}

  bes8[ bes g ees] f[ f f f] bes4 d16[ ees f( d)] ees4 ees16[ f g( ees)] c4 c16[d( ees c)] a4 a16[ bes( c a)] bes4 r r2 <a ees>2\fermata ees'8[ f( ees f)] d8[( f d f)] a,8[( f' a, f')] bes,8[ f' d f] ees8[( f ees f)] d8[( f d f)] a,8[( f' a, f')]
%{comment - end of line 6 page 2 in the manuscript, end of bar 110 %}

  bes,4 bes'16[ c bes c] d c bes aes] g[ f ees d] ees16[ d ees d] ees16[ d ees d] ees8[ ees ees ees] f[ f f f] f,[ f f f] bes8[ bes c d] ees[ f g a] bes4.
  \times 2/3{ a16[( bes c)]}
  bes 4 b c4. ees16[ c] bes8[( a g f)] bes4.
  \times 2/3{ a16[( bes c)]}
  bes 4 b
%{comment - end of line 7 page 2 in the manuscript, end of bar 117 %}

  c4. ees16[ c] bes8[( a g f)] bes16[( c) d c] bes16[( c) d c] bes16[( c) d c] bes16[( c) d bes] c16[ d ees d] c16[ d ees d] c16[ d ees d] c16[ d ees c] d2 f2 g,2 ees'2 d4 ees8[ c] c2\prall bes16[( c ) d c] bes4 g16[( a bes a)] g4
%{comment - end of line 8 page 2 in the manuscript, end of bar 124 %}

  ees'16[( f g f)] ees4 c16[( d ees d)] c4 d16[( ees f ees)] d[ c bes( a)] g[( f ees) d] c[ bes( a) g] f2\fermata r8 a'8[ bes c] a[( bes)] bes4 \appoggiatura{b8} c4. ees8 f8.[ d16] bes4 r8 a8[ bes c]
%{comment - end of line 9 page 2 in the manuscript, end of bar 129 %}

  a[( bes)] bes4 \appoggiatura{b8} c4. ees8 d4 d16[ ees d ees] f[ ees d c] bes[ aes g aes] g[ b c b] c[ b c b] c[ d ees c] ees8[ d16 c] bes2 c2\prall bes4 r4 <a, ees>2 <bes d,>4 r4 <c f,>8 r8 <c f,>8 r8 <bes d,>8 r8 <c f,>8 r8 <bes d,>8 r8 \bar ":|:"

  }
}


oneviolatworondo = \new Voice { \relative c' {
  \set Staff.instrumentName = "Viola 2"
  \set Staff.midiInstrument = "viola"
  \clef alto
  \key bes \major
  \time 3/4

  bes4. c8 a4  c4. d8 bes4 d16[ ees f ees] d[ ees c( d)] bes[ c d( bes)] c[ d ees( d)] c[( bes a) g] f[ a( c) ees]
%{comment - end of line 1 in the manuscript, end of bar 4 %}


  d[ ees( f) ees] d[ ees c( d)] bes[ c( d bes)] c[ d( ees) d] c[( bes a g)] f[ a c ees] d8[( f)] c[ ees] bes[ d] a[ c] g[ bes] a[ c] bes4 bes b
%{comment - end of line 2 in the manuscript, end of bar 9 %}

  c4 c, r g''16[( f) e-| f-|] g[ aes a bes] b[( c) bes g] a[( c) bes-| a-|] g[( f) e f] a[( f) c' a] g16[( f) e-| f-|] g[ aes a bes] b[( c) bes g]
%{comment - end of line 3 in the manuscript, end of bar 13 %}

  a[( c) bes-| a-|] g[( f) e f] a[( f) c' a] ees'[ d ees d] ees[ d c bes] a[ g f ees] d[ fis g aes] a[ bes b c] cis[ d b g]
%{comment - end of line 4 in the manuscript, end of bar 16 %}

  c8.[ d16] f,4 g\turn f8[ a16( g)] f16[ e d c] bes[ a g f] <e c'>2. <f c'>2. <e c'>2. <f c'>2. c''16[ b( c) b] c[ bes a g] f[ ees d c]
%{comment - end of line 5 in the manuscript, end of bar 23 %}

  bes2. a8[ bes] c4 c,
  \times 2/3{c8[ a' f]}
  \times 2/3{c8[ a' f]}
  \times 2/3{c8[ bes' g]}

  \times 2/3{c,8[ a' f]}
  \times 2/3{c8[ a' f]}
  \times 2/3{c8[ bes' g]}
  f4 <a c,>4 <a c,>4 <a c,>2 r4 \bar":|:"
  << {a'4. bes8 g4}\\{c,2.} >>
%{comment - end of line 6 in the manuscript, end of bar 30 %}

  << {bes'4. c8 a4}\\{c,2.} >> c8[ bes a bes c d] ees8[ fis] fis2
  \times 2/3{ g8[ bes a]}
  \times 2/3{ bes8[ d c]}
  \times 2/3{ bes8[ a g]}

  \times 2/3{ fis8[ a c]}
  \times 2/3{ ees8[ fis, fis]}
  \times 2/3{ ees'8[ fis, fis]}
%{comment - end of line 7 in the manuscript, end of bar 35 %}

  \times 2/3{ g8[ bes a]}
  \times 2/3{ bes8[ d c]}
  \times 2/3{ bes8[ a g]}

  \times 2/3{ fis8[ a c]}
  \times 2/3{ ees8[ fis, fis]}
  \times 2/3{ ees'8[ fis, fis]}
  g4 bes,16[ d, bes' d,] bes'16[ d, bes' d,] c'[ d, c' d,] c'[ d, c' d,] bes'16[ d, bes' d,] fis[ d fis d] fis[ d fis d] fis[ d fis d]
%{comment - end of line 8 and page 1 in the manuscript, end of bar 40 %}

  g16[ d g d] bes'[ d, bes' d,] bes'[ d, bes' d,] c'[ d, c' d,] c'[ d, c' d,] bes'16[ d, bes' d,] fis[ d fis d] fis[ d fis d] fis[ d fis d]
  \times 2/3{ g8[( bes bes)]}
  \times 2/3{ bes8[( bes bes)]}
  \times 2/3{ bes8[( bes bes)]}

  \times 2/3{ bes8[( c a)]}
  \times 2/3{ a8[( a a)]}
  \times 2/3{ a8[( a a)]}
%{comment - end of line 1 page 2 in the manuscript, end of bar 45 %}

  \times 2/3{ a8[( bes g)]}
  \times 2/3{ g8[( g g)]}
  \times 2/3{ g8[( g g)]}
  \times 2/3{ <cis e>8[<cis e>8 <cis e>8]}
  \times 2/3{ <cis e>8[<cis e>8 <cis e>8]}
  \times 2/3{ <cis e>8[<cis e>8 <cis e>8]}
  d4 <a fis>4 <a fis>4 <g bes>2. <a f>4 <a f>4 <a f>4 <a f>2\fermata r4

  bes4. c8 a4 c4. d8 bes4
%{comment - end of line 2 page 2 in the manuscript, end of bar 53 %}

  d16[ ees f ees] d[( ees) c d] bes[ c d bes] c[( d) ees d] c[( bes) a g] f[ a( c) ees] d[ ees( f) ees] d[ ees c d] bes[ c( d) bes] c[ d ees d] c[ bes( a) g] f[ a c ees]
%{comment - end of line 3 page 2 in the manuscript, end of bar 57 %}

  d8[ a' bes c d ees] f8 f4 f f8 d16[( ees)] r8 d16[( ees)] r8 cis16[( d)] r8 ees,4 f f, bes bes r
%{comment - end of line 4 page 2 in the manuscript, end of bar 62 %}

  f16[ g a bes] c[ des( d) ees] e[ f( ees) c] d[ f bes c] d[ c bes a] g[ f ees d] c[ bes a bes] c[ des d ees] e[ f ees c]
%{comment - end of line 5 page 2 in the manuscript, end of bar 65 %}

  d[ f bes c] d[ c bes a] g[ f ees d] aes'4. bes16[ c] bes16[ f bes aes] fis32[( g16.)] b,32[( c16.)] d32[( ees16.)] fis32[( g16.)] b32[( c16.)] d32[( ees16.)]
%{comment - end of line 6 page 2 in the manuscript, end of bar 68 %}

  d8[ ees16 c] bes4 a\prall bes8[ d16( c)] bes16[ a g f] ees[ d c bes] <a f>2. <bes f>2. <a f>2. <bes f>2. bes8[( d)] c[( ees)] d[( f)]
%{comment - end of line 7 page 2 in the manuscript, end of bar 75 %}

  ees4 ees, <ees a>4 <d bes'>8[ ees'] f[ f f, f]
  \times 2/3{ d8[ f bes]}
  \times 2/3{ d,8[ f bes]}
  \times 2/3{ ees,8[ f a]}

  \times 2/3{ d,8[ f bes]}
  \times 2/3{ d,8[ f bes]}
  \times 2/3{ ees,8[ f a]}
  bes4 <bes d>4 <bes d>4 <bes d>2 r4 \bar ":|:"

  }
}
