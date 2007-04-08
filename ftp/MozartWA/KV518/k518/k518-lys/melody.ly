% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

melody = \relative c'' {
  \key f \major
  \time 6/8
  \partial 8
  
  c8 |
  a([ c]) bes g[( bes]) a |
  f4 a16[( g]) f8[( e]) e |
  f[( e]) f g[( f]) g |
  a4 d8 b c bes |
  a[( c]) bes g[( bes]) a |
  f4 bes8 a g b ~ |
  b c d e8.[( f16]) d[( e]) |
  c4 r8 r4 r8 |
  r4 r8 r4 c8 |
  bes![( a]) a a[( bes]) c |
  cis[( d]) c c[( b]) bes |
  g g g a[( bes]) c |
  d4 c16[( bes]) a8[( g]) r |
  c a d b4 r8 |
  bes! g c a4 r8 |
  bes c d d16[( c bes a]) g[( f]) |
  f4( a16[ g]) f4 r8 |
  R2. |
  r4 r8 r4

  \bar "|."
}
