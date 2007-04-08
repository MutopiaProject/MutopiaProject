% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

upper = \relative c'' {
  \key f \major
  \time 6/8
  \partial 8

  c8 |
  a( c bes g bes a) |
  f4 a16( g) f8[( e]) e |
  f( e f g f g) |
  a4 d8 << { b( c bes) } { f e g } >> |
  <f a>( c' bes g bes a) |
  f4 bes8 a[( g]) b ~ |
  b c d e8.[ f16 d e] |
  c8 a'( b,) ~ b( c d) |
  e8.[( f16 d e]) c8 r c |
  bes( a) a a( bes c) |
  cis( d) <fis, c'> <g c>( b) bes |
  << { g g g a( bes c) } { e, e e f g a } >> |
  << { d4 c16( bes) a8( g) } { bes4 a16 g f8 e } >> r |
  c' a d b4 r8 |
  bes! g c a4 r8 |
  << { bes( c d) d16( c bes a g f) } \\ { f4. f4 s8 } >> |
  <f a>4( <e g>8) f8 r r |
  << { bes'( c d) d16( c bes a g f) } \\ { f4. f4 s8 } >> |
  << { \stemDown f4( \stemUp a16 g) } \\ { s8 s8^\turn e } >> f r

  \bar "|."
}

lower = \relative a {
  \key f \major
  \time 6/8
  \partial 8

  a8 |
  f( a g e g f) |
  r d( bes) c4 bes'8 |
  a( g f e d e) |
  f( d f g c, e) |
  f( a g e g f) |
  r d( bes) c4 d8 |
  f e d c e g |
  e( f g gis a fis) |
  << { r8 <c' e> <b f'> } \\ g4. >> <c e>8 c, r |
  r4 << { f'8 f e es } \\ { f, f4. } >> |
  <bes d>4 <a d>8 <g d'>4 r8 |
  \repeat unfold 3 <bes c> << c4. \\ { a8 g f } >> |
  bes( g bes) c c, r |
  r4 r8 f' d g |
  e4 r8 es c f |
  d( c bes) a4 bes8 |
  << { c4. f8( e es) | d( c bes) a } 
     { c,4. f8 e es | d c bes a } >> r \clef violin <d' bes'> |
  << { a'16 c a c bes c a8 } \\ { c,4. f8 } >> r

  \bar "|."
}
