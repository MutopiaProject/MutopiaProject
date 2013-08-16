 \version "2.16.0"

twoviolatwo = \new Voice { \relative c' {
  \set Staff.instrumentName = "Viola 2"
  \set Staff.midiInstrument = "viola"
  \clef alto
  \key ees \major
  \time 6/8

  \partial 8 r8 r8 <g ees>8[ <g ees>8] <g ees>8[ <g ees>8 <g ees>8] <aes f>4.  <aes f>4. r8 <bes ees,>8[ <bes ees,>8] r8 <b d,>8[ <b d,>8] <c c,>4. g4 aes8
%{ end of first line and bar 4 %}

  bes4 g8 aes4 <aes f>8 g8[ g ees] d8 r8 g16[( aes)] bes8[ bes bes] bes[ bes( ees)] d4 d32[ ees f( g)] aes4 r8 g4. f4. ees4 ees'8 b8[ c aes] g16[ bes aes g f ees] c'8 r8 ees,
%{ end of line 2 and bar 11 %}

  d8 bes16[( f bes f)] d[ f aes f( aes f)] ees[ g bes( g) bes g] c,[ a' c a c a] bes[ d( f d) bes f] d[ f bes f bes f] ees[ g( bes g) bes g] c,[ a' c a c a]
%{ end of line 3 and bar 15 %}

  f[ bes a bes f bes] g[ bes a bes f bes] ees,[ bes' ees, bes' d, bes'] <bes g>4 f8 ees4 d8 r8 <d bes'>8[ <d bes'>8] <ees bes'>4 r8 r8 <g ees'>8[ <g ees'>8] f16[ a c a c a] f16[ a c a c a]
%{ end of line 4 and bar 20 %}

  <a c,>4. <a c,>4\fermata r8 f''4. f4 bes,8 bes16[ a g f e f] e[ f g f g a] bes8[ f' f] f4 bes,8 bes16[ a g f e f] e[ f g( f) g a]
%{ end of line 5 and bar 25 %}

  bes8[ f f'] r8 f,[ f'] r8 f,[ f'] r8 f,[ f'] f8 ees16[ d c bes] a[ bes c bes d bes] aes,2. g8[ c ees] g[ c ees] d[( bes) f'] d[( bes) f']
%{ end of line 6 and bar 31 %}

  f,4. c'4. bes8.[ f,16 bes f] d'16[ f, d' f, f' f,] <f ees'>2. d'16[ f, d' f, f' f,] d'16[ f, d' f, f' f,] <f ees'>2. d'16[ f ees d( c) bes] a[ bes c d ees c] d[ f ees d( c bes)] a[ bes c d ees c]
%{ end of line 7 and bar 38 %}


  d4 r8 <bes d,>4 r8 d,16[ f bes( f) bes f] d16[ f bes( f) bes f] ees[ g c( g) c g] ees[ g c( g) c g] f[ bes d bes d bes]  f[ bes d bes d bes] f[ a c a c a] f[ a c a c a] bes8[ f' d] bes4 r8
%{ end of line 8 and bar 44 %}

  <a ees>8[ <a ees> <a ees>8] <a ees>8[ <a ees> <a ees>8] <bes d,>4 r8 r4 r8 <a ees>8[ <a ees> <a ees>8] <a ees>8[ <a ees> <a ees>8] <bes d,>8[ <bes d,>8 <a ees>8] <bes d,>8[ <bes d,>8 <a ees>8] <bes d,>8[ <bes d,>8 <bes d,>8] <bes d,>4 s8

  \bar ":|:"

  bes8[ c d] ees[ f g] <a, c,>4 r8 <a c,>4 r8 <f ees'>2. <f d'>4 r8 <aes c,>4 r8
%{ end of line 9 and bar 53 %}

  des,8[ <ges bes>8 <f aes>8] <aes ges>8[ <aes ges>8 <aes ges>8] <aes f>8[ <aes f>8 <aes des,>8] <aes c,>8 r8 f'16[( ges)] aes8[ aes aes] aes[ aes( des)] c4( c32)[ des ees f] ges4 r8 f,4. ees 4.
%{ end of line 10, first page and bar 58 %}

  des4 des'8 a8[ bes ges] f16[ aes ges f ees des] bes'8 r8 c,8 des8 aes16[ f aes f] d[ f aes f aes f] c[ ees aes ees aes ees] c[ ges' aes ges aes ges]
%{ end of line 1, second page and bar 62 %}

  des[ f aes f aes f] des[ f aes f aes f] c[ ees aes ees aes ees] c[ ges' aes ges aes ges] des[ f aes f aes f] des[ f aes f aes f] d16[ f aes f aes f] d[ f bes f bes f]
%{ end of line 2, second page and bar 66 %}

  <ges bes>2. <f aes>4. <f aes>4 d8 ees4. <ges bes>4.  <f aes>4. <f aes>4 <d bes'>8 ees8[ ees ees] ees8[ ees ees] <f aes>8[ <f aes>8 <f aes>8] <f aes>8[ <f aes>8 <f aes>8] <f aes>4.\fermata bes'16[ aes( g f) ees d] bes'4. bes4 ees,8
%{ end of line 3, second page and bar 74 %}

  ees16[ d c( bes) a bes] a[ bes c bes( c d)] d8[ bes' bes] bes4 aes32[ g f ees] ees16[ d c bes a bes] a[ bes c bes c d] ees8[ bes( bes')] r8 bes,[( bes')] r8 bes,[( bes')] r8 bes,[( bes')]
%{ end of line 4, second page and bar 79 %}

  bes8[ aes16 g f( ees)] d16[ ees f ees g ees] des'4. des,,4. c8[ ees aes] c[ ees aes] g[( ees bes')] g[( ees bes')] bes,4. f'4.\prall
%{ end of line 5, second page and bar 84 %}

  ees8 bes16[ g( bes g)] ees[ g bes g bes g] <aes f>2. ees16[ g( bes g bes g)] ees16[ g( bes g bes g)] <aes f>2. g16[ bes aes g f ees] d[ ees f g aes f]
%{ end of line 6, second page and bar 89 %}

  g16[ bes aes g f ees] d[ ees f g aes f] g4 r8 g4 r8 ees16[ g bes g bes g] ees16[ g bes g bes g] ees[ aes c( aes c aes)] ees[ aes c( aes c aes)]
%{ end of line 7, second page and bar 93 %}

  ees16[ g bes g bes g] ees16[ g bes g bes g] d[ f aes f( aes f)] d[ f aes f( aes f)] <g ees>4 r8  <g ees>4 r8 <aes d>8[ <aes d>8 <aes d>8] <aes d>8[ <aes d>8 <aes d>8] <g ees'>4 r8  <g ees'>4 r8 <aes d>8[ <aes d>8 <aes d>8] <aes d>8[ <aes d>8 <aes d>8]
%{ end of line 8, second page and bar 99 %}

  <g ees'>4 r8 <f aes>4 r8 <ees bes'>4 <d bes'>8  <ees bes'>4 <d bes'>8
  <ees bes'>8[ <ees bes'>8  <ees bes'>8]  <ees bes'>8[ <ees bes'>8  <ees bes'>8] <ees bes'>4. r4 s8
  \bar "|"

  }
}


twoviolatworondo = \new Voice { \relative c' {
  \set Staff.instrumentName = "Viola 2"
  \set Staff.midiInstrument = "viola"
  \clef alto
  \key ees \major
  \time 2/4

  \partial 4 ees8[ <ees d>8] <ees c>4 <ees bes>4 aes,8.[ bes32( aes)] g8[ g] aes[ g] d[ ees] \appoggiatura{f8} ees8[ d] ees'[ <ees d>8] <ees c>4 <ees bes>4 aes,8.[ bes32( aes)] g8[ aes]
%{ end of line 1 bar 6 %}

  g8 r8 aes[ <aes f>8] <g ees>4
  \bar ":|"
  bes8[ ees]
%{ the following 4 bars are written as 2 bars repeated in the original %}

  \appoggiatura{ees8} d8.[ c16] bes8[ bes] bes'16[( g d ees)] f[( ees g ees)]
  \appoggiatura{ees8} d8.[ c16] bes8[ bes] bes'16[( g d ees)] f[( ees g ees)]
%{ end of the short repeat %}

  ees[ g f( d)] c[ ees d bes] aes[ c bes g] f[ aes g ees]
%{ end of line 2 bar 14 in the original %}

  d[ bes' g bes] d,[ bes' g bes] <bes d,>8 r8\fermata ees8[ <ees d>8]  <ees c>4 <ees bes>4 aes,8.[ bes32( aes)] g8[ aes] g8 r aes8[ <aes f>8] <g ees>8 r
  \bar "|:"
  \key f \minor
  r4 -\tag #'vlatwo ^\markup{"Minore"}
%{ end of line 3 bar 20 in the original %}

  aes32[ bes c( des)] ees[ f des( ees)] c[ des( bes c)] aes[ bes( c aes)]
  bes[ c des c] bes c( aes bes)] g[( aes f) g] ees[ g( bes g)] aes[ bes c des] ees c bes aes] des[ ees f ees] des[( c des) bes]
%{ end of line 4 bar 23 in the original %}

  aes[ bes c( des)] ees[ des c( bes)] aes[ bes( c) des] ees[ c( bes aes)] f[( g a) bes] a[( g f) ees] d[ ees f g] aes[ f ees d] ees[ f( g) aes] g[ aes g f] ees[ f( g aes)] bes[ g( f) ees]
%{ end of line 5 bar 26 in the original %}

  aes[ bes( c aes)] f[( g aes bes)] f[ g aes bes] f[ g aes f]
  ees[ f g aes] bes[ c d ees] g,8 r8 \bar ":|:"  c,32[ des ees f] ges[ f ees des] c[ des ees f] ges[ ees d c]
%{ end of line 6 bar 29 in the original %}

  des[f bes f] c[ ees a ees] des[ f( bes f)] ees[ a c a]
  bes[ c( des ees)] f[ des c( bes)] aes[( g f) ees] d[ ees f d]
  ees[ g( bes g)] ees8 <g des>4
%{ end of line 7 bar 32 in the original %}

  aes32[ bes c des] ees[ c bes aes] g[ aes bes c] des[ bes g ees]
  aes[ bes( c des)] ees[ c( bes aes)] g[ aes bes c] des[ bes( g ees)]
  aes[ bes c aes] c,[ ees aes c] des, f bes des] g,[ bes des bes] <aes c,>4
  \bar ":|"
%{ end of line 8, page 1 and  half of bar 35 in the original %}

  \key ees \major

  ees'8[ <ees d>8] <ees c>4 <ees bes>4 aes,8.[ bes32( aes)] g8[ g] aes[ g] d[ ees] \appoggiatura{f8} ees8[ d] ees'[ <ees d>8] <ees c>4 <ees bes>4 aes,8.[ bes32( aes)] g8[ aes]
%{ end of line 1 page 2 and bar 42 %}

  g8 r8 aes[ <aes f>8] <g ees>4
  bes8[ ees]
  \appoggiatura{ees8} d8.[ c16] bes8[ bes] bes'16[( g d ees)] f[( ees g ees)]
  \appoggiatura{ees8} d8.[ c16] bes8[ bes] bes'16[( g d ees)] f[( ees g bes)]
%{ end of line 2 page 2 and bar 48 %}

  ees,[ g f( d)] c[ ees d bes] aes[ c bes g] f[ aes g ees]
  d[ bes' g bes] d,[ bes' g bes] <bes d,>8 r8\fermata ees8[ <ees d>8]  <ees c>4 <ees bes>4 aes,8.[ bes32( aes)] g8[ aes]
%{ end of line 3 page 2 and bar 54 %}

  g8 r aes8[ <bes d,>8] <c c,>8 r ees8[ <ees d>] <ees c>4 <ees c>4 aes,8.[ bes32( aes)] g8[ g] aes8[ d32( c16.)] bes32[( aes16.)] g32[( f16.)] <aes f>2( <g ees>4) r \bar "|"

  }
}
