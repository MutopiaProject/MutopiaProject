\version "2.18.2"
\language "deutsch"

ViolinII_e = \relative g {
  \global_e
  <g d' h'>4 \f r
  r8 d'( e d)
  fis8( g) c h
  a8 \tr( g) r4
  \barNumberCheck 5
  <g, d' h'>4 r
  r8 d'( e d)
  fis8( g) c h
  a8 ( g) r4
  r8 e( fis) r
  \barNumberCheck 10
  r8 e( d) r
  r8 e( \p fis) r
  r8 e( d) a' \f
  h8 r cis r
  d8 r e r
  \barNumberCheck 15
  d4 r
  <a g'>4 r
  <d, a' fis'>4 r
  <a' g'>4 r
  r8 d4 cis8
  \barNumberCheck 20
  d8 fis, g a
  h16( a h cis) d8 fis,
  g16( fis g a) h8 e,
  fis8 e16 d a'8 a
  d,4 r
  \barNumberCheck 25
  d4 \f a'16( \p g a h)
  c8 c c c
  ais8( h) r c
  ais8( h) r4
  d,4 \f h'16( \p a h c)
  \barNumberCheck 30
  d8 d d d
  h8( c) r d
  h8( c) r4
  d,4 \f a'16( \p g a h)
  c8 c c a
  \barNumberCheck 35
  h8 h h h
  h8 h h h
  h8 h h h
  h8 h h h
  h4 r8 h \f
  \barNumberCheck 40
  c8 c, d h'
  c,4 r
  r8 e( \p gis a)
  r8 d,( c h)
  r8 d( fis g)
  \barNumberCheck 45
  r8 c,( h a)
  g8. d''16 c( h a g)
  d4 r
  <g, d' h'>4 \f r
  r8 d'( e d)
  \barNumberCheck 50
  fis8( g) c h
  a8 \tr( g) r4
  <g, d' h'>4 r
  r8 d'( e d)
  fis8( g) c h
  \barNumberCheck 55
  a8( g) r4
  r8 a,( h) r
  r8 a( g) r
  r8 a( \p h) r
  r8 a( g) d' \f
  \barNumberCheck 60
  e8 r fis r
  g8 r a r
  g4 r
  <d c'>4 r
  <g, d' h'>4 r
  \barNumberCheck 65
  <d' c'>4 r
  r8 g4 fis8
  g8 h, c d
  e16( d e fis) g8 h,
  c16( h c d) e8 a,
  \barNumberCheck 70
  h8 a16 g d'8 d
  g,4 r \fine \bar ".|:"
  \repeat volta 2 {
    e'8 \p r fis r
    g8 r e r
    dis4. dis8
    \barNumberCheck 75
    e16( fis g a) h8 a
    g8 r e r
    dis8 r h r
    e8-. g-. a-. h-.
    e,8-. g-. h16( a g fis)
  }
  \repeat volta 2 {
    \barNumberCheck 80
    g4 \f h,8 g'
    c,8 a' d, d'
    h8 g h, g'
    c,8 a' d, d'
    h8 h c d
    \barNumberCheck 85
    g,4 r
    r8 d' \p r d,
    c8 a r4
    r8 c' r c,
    h8 g r h'
    \barNumberCheck 90
    c8. h16 a8 g
    fis8 h, r4
    e8 \p r fis r
    g8 r e r
    dis4. dis8
    \barNumberCheck 95
    e16( fis g a) h8 a
    g8 r e r dis8 r h r
    e8-. g-. a-. h-.
  }
  \alternative {
    {
      e,8-. g-. h16( a g fis)
    }
    {
      e4 r \dc \bar "|."
    }
  }
}