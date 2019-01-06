\version "2.18.2"
\language "deutsch"

Viola_e = \relative g' {
  \global_e
  \clef alto
  \compressFullBarRests
  g4 \f r
  r8 h( c h)
  a8( g) r4
  d8( g) r4
  \barNumberCheck 5
  g4 r
  r8 h( c h)
  a8( g) r4
  c8( h) r4
  r8 a, a r
  \barNumberCheck 10
  r8 a( d) r
  r8 a \p a r
  r8 a( d) fis \f
  g8 r a r
  h8 r cis r
  \barNumberCheck 15
  a4 r
  a4 r
  a4 r
  a4 r
  d8 fis, g a
  \barNumberCheck 20
  d,8 fis g a
  h16( a h cis) d8 fis,
  g16( fis g a) h8 e,
  fis8 e16 d a'8 a
  d,4 r
  \barNumberCheck 25
  d4 \f fis16( \p e fis g)
  a8 a a a
  fis8( g) r a
  fis8( g) r4
  d4 \f g16( \p fis g a)
  \barNumberCheck 30
  h8 h h h
  gis8( a) r h
  gis8( a) r4
  d,4 \f fis16( \p e fis g)
  a8 a a fis
  \barNumberCheck 35
  g8 g g g
  g8 g g g
  g8 g g g
  g8 g g g
  g4 r8 g \f
  \barNumberCheck 40
  c8 e, f g
  c,8 g c,4
  h''8( \p c) r c
  c8( h) r4
  a8( h) r h
  \barNumberCheck 45
  h8( a) r d,
  g8. d'16 c( h a g)
  d8. e16 \< d( c h a)
  g4 \f r
  r8 h'( c h)
  \barNumberCheck 50
  a8( g) r4
  d8( g) r4
  g4 r
  r8 h( c h)
  a8( g) r4
  \barNumberCheck 55
  c8( h) r4
  r8 d, d r
  r8 d( g,) r
  r8 d' \p d r
  r8 d( g,) h \f
  \barNumberCheck 60
  c8 r d r
  e8 r fis r
  d4 r
  d4 r
  d4 r
  \barNumberCheck 65
  d4 r
  g8 h, c d
  g8 h, c d
  e16( d e fis) g8 h,
  c16( h c d) e8 a,
  \barNumberCheck 70
  h8 a16 g d'8 d
  g,4 r \fine \bar ".|:"
  \repeat volta 2 {
    R2 * 8
  }
  \repeat volta 2 {
    \barNumberCheck 80
    g'4 \f g
    g4 fis8 a
    g4 g
    g4 fis8 a
    g8 h, c d
    \barNumberCheck 85
    g,4 r
    r8 h' \p r h,
    a8 a' r4
    r8 a r a,
    g8 g' g,4\barNumberCheck 90
    a4 ais
    h8 h' h16( a g fis)
    e4 r
    R2 * 6
  }
  \alternative { { R2 } { R2 \dc \bar "|." } }
}