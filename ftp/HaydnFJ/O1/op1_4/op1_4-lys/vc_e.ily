\version "2.18.2"

Cello_e = \relative g {
  \global_e
  \clef bass
  \compressFullBarRests
  g4 \f r
  r8 h( c h)
  a8( g) r4
  d8( g) r4
  \barNumberCheck 5
  g4 r
  r8 h( c h)
  a8( g) r4
  d8( g) r4
  r8 g( fis) r
  \barNumberCheck 10
  r8 cis( d) r
  r8 g( \p fis) r
  r8 cis( d) fis \f
  g8 r a r
  h8 r cis r
  \barNumberCheck 15
  d4 r
  cis4 r
  d4 r
  cis4 r
  d8 fis, g a
  \barNumberCheck 20
  d,8 fis g a
  h16( a h cis) d8 fis,
  g16( fis g a) h8 e,
  fis8 e16 d a'8 a
  d,4 r
  \barNumberCheck 25
  d4 \f r
  R2
  d4 \p r
  d4 r
  d4 \f r
  \barNumberCheck 30
  R2
  d4 \p r
  d4 r
  d4 \f r
  d4\p r
  \barNumberCheck 35
  g8 g g g
  g8 g g g
  g8 g g g
  g8 g g g
  g4 r8 g \f
  \barNumberCheck 40
  c8 e, f g
  c,8 g c,4
  r8 c''( \p h a)
  r8 h( a g)
  r8 h( a g)
  \barNumberCheck 45
  r8 a( g fis)
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
  d8( g) r4
  r8 c( h) r
  r8 d,( g) r
  r8 c( \p h) r
  r8 d,( g) h, \f
  \barNumberCheck 60
  c8 r d r
  e8 r fis r
  g4 r
  fis4 r
  g4 r
  \barNumberCheck 65
  fis4 r
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
    g'4 \f h,8 g'
    c,8 a' d, d'
    h8 g h, g'
    c,8 a' d, d'
    g,8 h, c d
    \barNumberCheck 85
    g,8 h' \p d16( c h a)
    gis4 e
    a8 r a g!
    fis4 d
    g8 r g,4
    \barNumberCheck 90
    a4 ais
    h8 h' h16( a g fis)
    e4 r
    R2 * 6
  }
  \alternative { { R2 } { R2 \dc \bar "|." } }
}