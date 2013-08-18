 \version "2.16.0"

twoviolaone = \new Voice { \relative c' {
  \set Staff.instrumentName = "Viola 1"
  \set Staff.midiInstrument = "viola"
  \clef alto
  \key ees \major
  \time 6/8

  \partial 8 g16[( aes)] bes8[ bes bes] bes[ bes( ees)] d4 d32[( ees f g] aes4) r8
%{ end of line one and bar 2 in manuscript %}

  g4. f4. ees4( ees'8) b[( c aes)] g16[( bes) aes g f ees] c'8 r d,8( ees[) ees( g)] <f bes,>4 r8 r8 aes,8[ aes] aes8[ aes aes] <aes f>8[ <aes f>8 <aes f>8] <aes f>8[ <aes f>8 <aes f>8]
%{ end of line 2 and bar 8 in manuscript %}

  r8 <bes ees,>8[ <bes ees,>8] r8 <b d,>8[ <b d,>8] <c c,>4 g8 aes4 aes8 g4 g8 aes4 a8 bes4. r8 f'8[ f] \acciaccatura{aes8} g8.[ f16 ees8] ees4 ees'8 d4 f8 bes,4 aes8
%{ end of line 3 and bar 14 in manuscript %}

  \acciaccatura{bes8} g8.[ f16 ees8] ees4 ees8 d4 d8 \appoggiatura{ees8} ees4 d8 \appoggiatura{d8} c4 bes8 f'16[ ees f ees cis( d)] c16[ f a, c] bes8 aes4. g4. bes'4.
%{ end of line 4 and bar 19 in manuscript %}

  a8[ ees' ees] ees[ ees ees] ees4.( ees4) r8\fermata d,16[ f, d' f, f' f,] d'16[ f, d' f, f' f,] <f ees'>2. d'16[ f, d' f, f' f,] d'16[ f, d' f, f' f,] <f ees'>2.
%{ end of line 5 and bar 25 in manuscript %}

  d'16[ f ees d c bes] a[ bes( c d) ees c] d16[ f ees d c bes] a[ bes( c d) ees c] d4 r8 <bes d,>4 r8 d,16[ f bes f bes f] d16[ f bes f bes f]
%{ end of line 6 and bar 29 in manuscript %}

  ees16[ g c g c g] ees16[ g c g c g] f16[ bes d bes d bes] f16[ bes d bes d bes] f16[ a c a c a] f16[ a c a c a] bes4. r8 bes'8[ bes] bes16 a g f e f] e[( f g) f g a]
%{ end of line 7 and bar 34 in manuscript %}

  bes8[ f' f] f4 bes,8 bes16[ a g f( e) f] e[ f( g) f g a] bes8[( f f')] r8 f,8[ f'] r f,[ f'] r f,[ f'] f8[ ees16 d( c) bes] a16[ bes c bes d bes]
%{ end of line 8 and bar 39 in manuscript %}

  aes,2. g8[ c ees] g[ c ees] 
  d[ bes( f')] d[ bes( f')] f,4. c'4.\prall bes4. r8 f8[ f] f,8.[ g16 f8] f8[ f f] f4. r8 d'8[( f)] f,8.[ g16 f8] f8[ f f]
%{ end of line 8 and bar 47 in manuscript %}

  f8[ f( g)] f8[ f( g)] f[ f f] f4 r8 \bar ":|:"

  bes8[ c d] ees[ f g] a,[ c ees] r8 ees'8[ c] a8.[ g16 f8] f16[ a g bes a c] bes4 r8 aes8[ aes ges]
%{ end of line 9, first page and bar 53 in manuscript %}

  \appoggiatura{ g8} f8.[ ees16 des8] ees8[ ees c] des[ e aes] aes,4 r8 r8 << {aes8[ aes] aes[ aes aes]} \\ {f[ f] f[ f f]}>> ges4 <aes ees>8 <aes c,>4 r8 r8 <aes des,>8[ <aes des,>8] r8 <a c,>8[ <a c,>8] bes4 f8 ges4 ges8
%{ end of line 1, second page and bar 59 in manuscript %}

  aes4 f8 ges8 r8 <ges aes>8 < aes f>4 r8 r aes'8[ aes] \appoggiatura{aes8} ges8.[ f16 ees8] ees[ ees ees]  aes8.[ des16 bes8] aes8[ aes aes] \appoggiatura{aes8} ges8.[ f16 ees8] ees8[ ees c'] des4. c4. 
%{ end of line 2, second page and bar 65 in manuscript %}

  bes4 d8 f4 ges,8 ges16[ bes aes ges f ees] d[ ees ges ees bes' ees] ees[ d ces( bes) a bes] aes[ f d ces' bes aes]
%{ end of line 3, second page and bar 68 in manuscript %}

  ges16[ bes aes ges f ees] d[ ees ges ees bes' ees] ees[ d ces( bes) a bes] aes[ f d ces' bes aes] g8[ <a, c,>8  <a c,>8]  <a c,>8[  <a c,>8 <a c,>8] <bes d,>8[ <bes d,>8 <bes d,>8] <bes d,>8[ <bes d,>8 <bes d,>8] <bes 
%{ end of line 4, second page and bar 72 in manuscript %}

  d,>4.\fermata r4 r8 ees,16[( g bes g bes g)] ees16[( g bes g bes g)] <aes f>2. ees16[( g bes g bes g)] ees16[( g bes g bes g)] <aes f>2. g16[ bes aes g f ees] d[ ees f g aes f]
%{ end of line 5, second page and bar 78 in manuscript %}

  g16[ bes aes g f ees] d[ ees f g aes f] g4 r8 g4 r8  ees16[( g bes g bes g)] ees16[( g bes g bes g)] ees16[ aes c aes c aes]  ees16[ aes c aes c aes]  ees16[( g bes g bes g)] ees16[( g bes g bes g)]
%{ end of line 6, second page and bar 83 in manuscript %}

  d16[ f aes f aes f] d16[ f aes f aes f] ees4. r8 ees''8[ ees] ees16[ d c( bes) a bes] a[ bes c( bes c) d] ees8[ bes bes] bes4 ees8 ees16[ d c( bes) a bes] a[ bes c( bes c) d] 
%{ end of line 7, second page and bar 88 in manuscript %}

  ees8[( bes, bes')] r8 bes,[ bes'] r8 bes,[ bes'] r8 bes,[ bes'] bes8[ aes16 g f( ees)] d[ ees f ees( g ees)] des'4. des,,4. c8[ ees aes] c[ ees aes]
%{ end of line 8, second page and bar 93 in manuscript %}

  g8[ ees( bes')] g8[ ees( bes')] bes,4. f'\prall ees4. r8 g'[( ees)] bes[ bes, bes] bes[ bes bes] bes4. r8 g''[( ees)] bes[ bes, bes] bes[ bes bes] bes4 r8 d4 r8 <ees g,>4( <f aes,>8) <ees g,>4( <f aes,>8)
  <ees g,>8[ <ees g,>8 <ees g,>8] <ees g,>8[ <ees g,>8 <ees g,>8] <ees g,>4. r4 r8
  \bar "|"
  }
}


twoviolaonerondo = \new Voice { \relative c' {
  \set Staff.instrumentName = "Viola 1"
  \set Staff.midiInstrument = "viola"
  \clef alto
  \key ees \major
  \time 2/4

  \partial 4 g'8[g] aes8.[ bes32 aes] g8[ g] f16[ bes d, f] ees8[ees] d16[ f ees g] f[ aes g bes] \acciaccatura{ aes8} g8[ f] g8[ g]
%{ end of line 1 and bar 4 %}

  aes8.[ bes32( aes)] g8[ g] f16[ bes d, f] ees[ ees' d c] bes8[ aes32 g f( ees)] c'8[ d,] ees4 \bar ":|" <g, ees>8[ <g ees>8] <aes f>2 <g ees>2 <aes f>2
%{ end of line 2 and bar 11 %}

  <g ees>2 g''8.[ f16] f16[ ees] r16 d d[( c)] r bes bes[( aes)] r g f16.[ d32 ees8] f16.[ d32 ees8]
%{ end of line 3 and bar 15 %}

  bes'4\fermata \appoggiatura{ a16[ aes]} g8[ g] aes8.[ bes32( aes)] g8[ g] f16[ bes d, f] d[ ees' d c] bes8[ aes32 g f( ees)] c'8[ d,] ees4 
  \bar "|:" 

  \key f \minor

  des16^Minore[ des des des] 
%{ end of line 4 and bar 20 %}

  ees[ aes8 c ees c16(] c)[ des8 ees, bes' des16] c[ ees8 aes, bes g16(] g)[ aes8 ees ees' c16(] c)[ a8 bes f' aes,16]
%{ end of line 5 and bar 25 %}

  fis16[ g8 bes ees g,16] d16[ ees8 aes f d16] d[( ees)] ees,8 
  \bar ":|:"
  ees'16[( f) f ges] ges16[ a,8 ees'' c a16(] a16)[ bes8 c des ees16]
%{ end of line 6 and bar 30 %}

  e16[ f8 d bes aes16] \appoggiatura{ aes8} g4 aes16[ bes c des]

  d16[( ees)] r16 ees, des'[ des] r bes d16[( ees)] r16 ees, des'[ des] r bes


  d16 ees8 aes, bes g16] \appoggiatura{ g8} aes4
  \bar ":|"
%{ end of line 7 and bar 35 %}

  \key ees \major
  g8_Maggiore[ g\turn]

  aes8.[ bes32 aes] g8[ g] f16[ bes d, f] ees8[ees] d16[ f ees g] f[ aes g bes] \acciaccatura{ aes8} g8[ f] g8[ g]
  aes8.[ bes32( aes)] g8[ g] 
%{ end of line 8 and bar 41 %}

  f16[ bes d, f] ees[ ees' d c] bes8[ aes32 g f( ees)] c'8[ d,] ees4  <g, ees>8[ <g ees>8] <aes f>2 <g ees>2 <aes f>2
  <g ees>2 
%{ end of line 1 page 2 and bar 48 %}

  g''8.[ f16] f16[ ees] r16 d d[( c)] r bes bes[( aes)] r g f16.[ d32 ees8] f16.[ d32 ees8] bes'4\fermata \appoggiatura{ a16[ aes]} g8[ g] 
%{ end of line 2 page 2 and bar 52 %}

  aes8.[ bes32( aes)] g8[ g] f16[ bes d, f] ees[ ees' d c] bes8[ aes32 g f( ees)] c'8[ d,] <ees g,>8 r8\fermata g8[ g] aes8.[ bes32 aes] g8[ g]
%{ end of line 3 page 2 and bar 57 %}

  f16[ bes d, f] d[ g bes ees] d32[( c16.)] bes32[( aes16.)] g32[( f16.)] ees32[( d16.)] d2\prall ees4 r
  \bar "|"

  }
}
