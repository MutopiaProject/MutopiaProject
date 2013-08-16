\version "2.16.0"

oneviolaone = \new Voice { \relative c' {
  \set Staff.instrumentName = "Viola 1"
  \set Staff.midiInstrument = "viola"
  \clef alto
  \key bes \major
  \time 4/4

  \partial 4 bes'4 f'2 a, bes4. c16[ d] ees4 d
  \times 2/3 { d8[( c ees)]}
  \times 2/3 { ees8[( d f)]}
  f4. ees8 cis8[ d] d4 r8 f,[ f fis] fis16[( g)] r8 gis16[( a)] r8 a16[( bes)] r8  b16[( c)] r8
%{ end of line one and bar 5 in manuscript %}

  d4 f16-.[( d-. ees-. c-.)] bes4 b c16[( bes c d)] ees[( d ees f)] g8[ g g g] e8[( f)] f2 ees8[( d)] d16[( c ees c)] bes2 a4 <bes d,>8 r8 < c, f,>8 r8 < bes d,>8 r8 r4 d8[ f d( f)] ees[ f ees( f)]

%{ end of line 2 and bar 11 %}

  d8[ f d( f)] a,[ f' bes, f']
  \times 2/3{ bes8[( a c)]}
  \times 2/3{ c[( bes d)]}
  d4. c8 a8[ bes] bes4 d,8[ bes d bes] ees,4 f g a bes8 r8 r4 r4 <aes f>4 <g ees> c'16[( b) c d] ees8[ ees ees ees] cis8[ d] d2 c8[ bes]
%{ end of line 3 and bar 18 %}

  ees,8[ ees ees ees] ees[ ees e e] f[ f] c[ a] f4 f' c'4 c16 b c d] c8[ g a bes] gis[( a)] a2 f'4 e16[ d c d]

  \clef treble

  ees16[ f ees f] g[ f e d] c[ bes a bes] a8[ c d( e)] f4 fis g4. bes16[ g] f8[ e d c]
%{ end of line 4 and bar 25 %}

  f4. \times 2/3{c16[ d ees]}
  f4 fis g4. bes16[( g)] f8[ e d c] f16[( g) a-. g-.] f16[( g) a-. g-.] f16[( g) a-. g-.] f16[( g) a-. f-.]
  g16[( a) bes-. a-.] g16[( a) bes-. a-.] g16[( a) bes-. a-.] g16[( a) bes-. g-.]
  a2 c d, bes' a4 bes8[( g)] g2\prall f16[( g) a g] f4 d16[ e f( e)] d4
%{ end of line 5 and bar 33 %}

  bes16[( c d c)] bes4 g16[( a bes a)] g4

  \clef alto

  a16[( bes c bes)] a[ g f e] d[ c bes a] g[ f e d] <c bes' e>2\fermata r8 e'8[ f g] e[( f f) fis] g4. bes8 c8.[ a16] f4 r8 e8[( f g)] e8[ f] f4 \appoggiatura{fis8} g4. bes8
%{ end of line 6 and bar 39 %}

  a4 c16[ d c d] ees[ d c bes] a[ g f ees] d[ fis( g fis)] g[ fis( g fis)] g8[ bes16( a)] c16[ bes a g] f2 g2\prall f8[ a, bes c] d[( e f g)] a[( c a c)] a[( c a c)] bes[( c bes c)] bes[( c bes c)] a[( c a c)] a[( c a c)]
%{ end of line 7 and bar 46 %}

  bes[( c bes c)] bes[( c bes c)]

  \clef treble

  a16[ bes c bes] a16[ bes c bes] a16[ bes c a]  a16[ bes c a] e'16[ f g f] e16[ f g f] e16[ f g f] e16[ f g e]

  \clef alto

  f8.[ f,16] ees16[ d c bes] a[ bes c a] f[ g a f] bes[ c d c] bes[ a g f] e[ f g a] bes g e c] f8[ f' d bes] c[ c c, c]
%{ end of line 8 and bar 52 %}

  f4 a16[( bes c a)] bes4 bes16[ c d bes] g4 g16( a bes g)] e4 e16[ f g e] f4 r4 r2 <g c,>2\fermata bes8[ c( bes c)] a8[( c a c)] e,8[( c' e, c')] f,8[ c' a c] bes[ c bes c] a8[( c a c)] e,8[( c' e, c')] f,4 a'16[ bes a bes] c[ bes a g] f[ ees d c]
%{ end of line 9 and bar 60 %}

  bes16[( a bes a)] bes16[( a bes a)] bes8[ bes bes bes] c8[ c c c] c,[ c c c] f4 r fis'16[ g aes a] bes8. c16] bes8[ a g f] <e g,>8 r <e g,>8 r <f a,>8 r <e g,>8 r <f a,>8 r \bar ":|:"

  f4 c'2 e,2 f4. g16[( a)] bes4 a
%{ end of line 10 and page 1 and bar 67 %}

  \times 2/3{a8[( g bes)]}
  \times 2/3{bes8[( a c)]}
  c4. bes8 a16[( bes) c bes]  a16[( bes) c bes] a[ g f g] a[ bes c d] ees[ d c d] c[ bes a( bes)] a[ g fis( g)] fis[ ees d( ees)] d2( fis) g2( aes) g2 des'2 c2 e,2
%{ end of line 1 page 2 and bar 74 %}

  f4 <aes aes, c,>4 r2 des,,8[ aes' f aes] des,8[ aes' f aes]  ees8[ aes ges aes] ees8[ aes ges aes]  des,8[ aes' f aes] des,8[ aes' f aes] ees[ aes ges aes] ees[ aes ges aes] des,[ aes' f aes] des,[ aes' f aes] c,[ aes' ees aes] c,[ aes' ees aes] c8 ees4 ees' c a8
%{ end of line 2 page 2 and bar 82 %}

  bes4.
  \times2/3{a16[ bes c]}
  bes8[ aes ges f] f8.[ ees'16] c4 a4. bes16[ c] bes4.
  \times 2/3{a16[ bes c]}
  bes8[ aes ges f] f8.[ ees'16] c4 a4. bes16[( c)] bes16[  c des c] bes[ a bes( c)] bes[( c des c)] ees[ des( c) bes]
%{ end of line 3 page 2 and bar 87 %}

  a16[ g f g] a[ bes( c) des] c[ bes( a bes)] c[( des ees c)] bes[( c des c)] bes a( bes c)] bes[( c des) c] ees[ des c( bes)] a4 r b16[ c8.] b16[ c8.] d,16[( ees8.)] r4 d'16[( ees8.)] d16[( ees8.)]
%{ end of line 4 page 2 and bar 91 %}

  b16[( c8.)] r4 b16[( c8.)] b16[( c8.)] bes8[ a] r ees'16[( c)] bes8[( a)] r8 ees'16[( c)] bes16[( a)] r8 g16[( f)] r8 e16[( f)] r8 g16[( a)] r8 bes4.
  \times 2/3{a16[( bes c)]}
  bes4 b c4. ees16[( c)] bes8[ a g f] bes4.
  \times 2/3{a16[( bes c)]}
  bes4 b
%{ end of line 5 page 2 and bar 97 %}

  c4. ees16[( c)] bes8[ a g f] bes16[ c d c] bes16[ c d c] bes16[ c d c] bes16[ c d bes] c16[ d ees d] c16[ d ees d] c16[ d ees d] c16[ d ees c]
  d2 f2 g,2 ees'2 d4 ees8[ c] c2\prall bes16[( c d c)] bes4
  g16[( a bes a )] g4 ees'16[ f g f] ees4 c16[ d ees d] c4
%{ end of line 6 page 2 and bar 105 %}

  d16[( ees f ees)] d[ c bes a] g[ f ees d] c[ bes a g] f2\fermata r8 a'8[bes( c)] a[( bes)] bes4 \appoggiatura{b8} c4. ees8 f8.[ d16] bes4 r8 a8[( bes c)] a8[( bes)] bes4 \appoggiatura{b8} c4. ees8 d4 d16[( ees d ees)]
%{ end of line 7 page 2 half through bar 111 %}

  f16[ ees d c] bes[ aes g aes] g[( b c b)] c[( b c b)] c[ d ees d] f[ ees d c] bes2 c2\prall bes8[ d,, ees f] g[ a bes c] d[( f d f)] d[( f d f)] ees[( f ees f)] ees[( f ees f)] d[( f d f)] d[( f d f)] ees[( f ees f)] ees[( f ees f)]
%{ end of line 8 page 2 and bar 118 %}

  d16[ ees f ees] d16[ ees f ees] d16[ ees f ees] d16[ ees f d] a'[ bes c bes] a[ bes c bes] a[ bes c bes] a[ bes c a] bes8[ bes,] aes16[ g f ees] d[ ees f g] aes[ f ees d] ees[ ees' g f] ees[ d c bes] a[ bes c d] ees[ c a f] bes8[ bes g ees] f8[ f f f] bes4 d16[( ees f d)] ees4 ees16[( f g ees)] c4 c16[( d ees c)] a4 a16[( bes c a)]
%{ end of line 9 page 2 and bar 125 %}

  bes4 r r2 <a c,>2\fermata ees'8[ f ees( f)] d[( f d f)] a,8[( f' a, f')]
  bes,8[( f' d f)] ees[( f ees f)] d[( f d f)] a,[( f' a, f')]
  bes,4 bes'16[ c bes c] d[ c bes a] g16[ f ees d] ees16[ d( ees d)] ees16[ d( ees d)] ees8[ ees ees ees] f8[ f f f] f,8[ f f f] bes4 r c'4. f8 ees8[ d( c) bes] <a ees>8 r8 <a ees>8 r8  <d, bes'>8 r8  <a' ees>8 r8  <d, bes'>8 r8  \bar ":|:"

  }
}


oneviolaonerondo = \new Voice { \relative c' {
  \set Staff.instrumentName = "Viola 1"
  \set Staff.midiInstrument = "viola"
  \clef alto
  \key bes \major
  \time 3/4

  << {d4. ees8 c4}\\{f,2.} >> << {ees'4. f8 d4}\\{f,2.} >> f''8.[ d16] bes4 r8 bes8 a16[( bes c d)] ees8[ ees] ees8.[ c16] f8.[ d16] bes4 r8 bes8
%{ end of line 1 and bar 5 %}

  a16[ bes( c) d] ees8[ ees] r8 a,8 bes8.[ c32 bes] a4 g4 \appoggiatura{g8} f4 e4 f4 d'16[ bes c g] bes[ g a fis] g[ d e f] f[ e d( c)] c4 r4
%{ end of line 2 and bar 10 %}

  <c e,>2. <c f,>2. <c e,>2. <c f,>2. c'16[ b c b] c[ bes a g] f[ ees d c] bes8[ bes bes bes] bes[ bes] a8[ bes c c] c,[ c] f4 f'4 r4
%{ end of line 3 and bar 18 %}

  g16[ f e f] g[ aes a bes] b[ c bes g] a[ c( bes) a] g[ f( ees) f] a[ f( c') a] g[ f( e) f] g[ aes a bes] b[ ( c) bes g]
%{ end of line 4 and bar 21 %}

  a16[ c bes( a)] g[ f e f] a[( f c') a] ees'[ d ees d] ees d c bes] a[ g f ees] d[ fis( g) aes] a[ bes( b) c ] cis[ d bes g ]
%{ end of line 5 and bar 24 %}

  c8.\turn [ d16] f,4 e\upprall f r g8.[( a16)] f4 r g8.[( a16)] f4 f f f2. \bar":|:"

  f,4. g8 e4 g4. a8 f4 a8[ g f g a bes]
%{ end of line 6 and bar 32 %}

  bes16[ ees c ees] bes16[ ees c ees] bes16[ ees c ees] <d bes>2. <ees c>2. <d bes>2. <ees c>2. <d bes>4 d'4 c16[ bes a g] fis2 g4
  \times 2/3{a8[ d, d']} d4. c8
%{ end of line 7 and bar 40 %}

  bes4 d4 c16[ bes a g] fis2( g4)
  \times 2/3{a8[ d, d']}
  d4. c8

  \times2/3{bes8[ d d]}
  \times2/3{d8[ d d]}
  \times2/3{d8[ d d]}
  \times2/3{d8[ ees c]}
  \times2/3{c8[ c c]}
  \times2/3{c8[ c c]}
%{ end of line 8 and first page and bar 45 %}

  \times2/3{c8[ d bes]}
  \times2/3{bes8[ bes bes]}
  \times2/3{bes8[ bes bes]}

  \times2/3{a8[ a a]}
  \times2/3{a8[ a a]} c16[ bes a( g)]
  fis4 d4 d <ees d>2. << {ees4 ees4 ees4}\\{c2.} >> <ees c>2\fermata r4 << {d4. ees8 c4}\\{f,2.} >>
%{ end of line 1  page 2 and bar 52 %}

  << {ees'4. f8 d4}\\{f,2.} >> f''8.[ d16] bes4 r8 bes8 a16[ bes( c) d] ees8[ ees] r8 a,8 f'8.[ d16] bes4 r8 bes8 a16[ bes( c) d] ees8[ ees] r8 a,8
%{ end of line 2  page 2 and bar 57 %}

  bes8[ c d ees f g] a8 a4 a4 a8 fis16[( g)] r8 fis16[( g)] r8 e16[( fis)] r8 d16[( c) ees( c)] bes4 a
%{ end of line 3  page 2 and bar 61 %}

  bes8[ d16( c)] bes16[ a g( f)] ees[ d c bes] <bes f>2. <bes f>2. <a f>2. <bes f>2. bes8[ d c ees d f] ees4 ees, <ees a>4 <d bes'>8[ ees'] f4 f,
%{ end of line 4  page 2 and bar 69 %}

  bes4 bes r c16[ bes a( bes)] c[ des d ees] e[ f ees c] d[ f bes c] d[ c bes a] g[ f ees d] c[( bes a bes)] c[ des( d) ees] e[ f ees c]
%{ end of line 5  page 2 and bar 73 %}

  d[ f bes c] d[ c bes a] g[ f ees d] aes'4. c16[ bes] d[ c bes aes] fis32[( g16.)] b,32[( c16.)] d32[( ees16.)] fis32[( g16.)] b32[( c16.)] d32[( ees16.)]
%{ end of line 6  page 2 and bar 76 %}

  d8[ ees16 c] bes4 a\prall bes8 r r4 c8.[ d16] bes4 r c8.[ d16] bes4 bes bes bes2. \bar ":|:"

  }
}
