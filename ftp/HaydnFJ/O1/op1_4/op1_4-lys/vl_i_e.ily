\version "2.18.2"

ViolinI_e = \relative g {
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \global_e
  <g d' h' g'>4 \f g'16( fis g a)
  g8 g g g
  c8( \tr h) e d
  c8( \tr h) r4
  \barNumberCheck 5
  <g, d' h' g'>4 g'16( fis g a)
  g8 g g g
  c8( \tr h) e d
  fis8( g) r h16( cis,)
  cis4( d8) e16( g,)
  \barNumberCheck 10
  g4( fis8) h'16( \p cis,)
  cis4( d8) e16( g,)
  g4( fis8) d'~ \f
  d16 fis e8~ e16 g fis8~
  fis16 a g8~ g16 h e, g
  \barNumberCheck 15
  fis8 \tuplet 3/2 { d'16( cis h) } a8 a
  a8 e'16 cis a g e g
  fis8 \tuplet 3/2 { d'16( cis h) } a8 a
  a8 e'16 cis a g e g
  fis16 a d, fis e4 \tr
  \barNumberCheck 20
  d8 fis, g a
  h16( a h cis) d8 fis,
  g16( fis g a) h8 e,
  fis8 e16 d a'8 a
  d,4 r
  \barNumberCheck 25
  d'2~ \fp
  d2~
  d2~
  d2
  d2~ \fp
  \barNumberCheck 30
  d2~
  d2~
  d4 d16( e32 fis g a h c)
  d2~ \fp
  d2
  \barNumberCheck 35
  d16( c h c) h8 r
  h16( a g a) g8 r
  g16( f e f) f8 r
  g,,4 d'''~
  d16 \< h e c f d h f
  \barNumberCheck 40
  e8 \f c' d,, h'
  c,4 r8 c''16( \p gis)
  gis8( a) r c16( e,)
  e8( d) r h'16( fis)
  fis8( g) r h16( d,)
  \barNumberCheck 45
  d8( c) r a'16( c,)
  h8. d16 c( h a g)
  d4 r
  <g, d' h' g'>4 \f g'16( fis g a)
  g8 g g g
  \barNumberCheck 50
  c8( \tr h) e d
  c8( \tr h) r4
  <g, d' h' g'>4 g'16( fis g a)
  g8 g g g
  c8( \tr h) e d
  \barNumberCheck 55
  fis8( g) r e16( fis,)
  fis4( g8) a16( c,)
  c4( h8) e'16( \p fis,)
  fis4( g8) a16( c,)
  c4( h8) g'~ \f
  \barNumberCheck 60
  g16 h a8~ a16 c h8~
  h16 d c8~ c16 e a, c
  h8 \tuplet 3/2 { g'16( fis e) } d8 d
  d8 a'16 fis d c a c
  h8 \tuplet 3/2 { g'16( fis e) } d8 d
  \barNumberCheck 65
  d8 a'16 fis d c a c
  h16 d g, h a4 \tr
  g8 h, c d
  e16( d e fis) g8 h,
  c16( h c d) e8 a,
  \barNumberCheck 70
  h8 a16 g d'8 d
  g,4 r \fine \bar ".|:"
  \repeat volta 2 {
    r8 h'' \p r dis,
    r8 e r c
    r8 c( h a)
    \barNumberCheck 75
    \app a8 g4 fis
    r8 e' r g
    r8 fis r a
    g8-. e-. fis-. dis-.
    e4 r
  }
  \repeat volta 2 {
    \barNumberCheck 80
    <g,, d' h' g'>4 \f d''8 r
    e8 r c'16 a fis8
    <d, h' g'>4 d'8 r
    e8 r c'16 a fis8
    g8 h, c d
    \barNumberCheck 85
    g,4 r
    r4 gis' \p
    a16( gis a h) c8 r
    r4 fis,
    g!16( fis g a) h8 h~
    \barNumberCheck 90
    h8 a16 g fis8 e
    dis8 h r4
    r8 h' \p r dis,
    r8 e r c
    r8 c( h a)
    \barNumberCheck 95
    \app a8 g4 fis
    r8 e' r g
    r8 fis r a
    g8-. e-. fis-. dis-.
  }
  \alternative {
    {
      e4 r
    }
    {
      e4 r \dc \bar "|."
    }
  }
}