\version "2.18.2"
\language "deutsch"

ViolinI_b = \relative g'' {
  \global_b
  \repeat volta 2 {
    g2 \f \tuplet 3/2 { a8( g fis) }
    g4 d( dis)
    e2 \tuplet 3/2 { g8( fis e) }
    d4 r r
    \barNumberCheck 5
    \tuplet 3/2 { c8( \p d c) } a'4 r
    \tuplet 3/2 { h,8( c h) } d4 r
    \app h8 a4 g fis \tr
  }
  \alternative {
    { g4 r r }
    { g4 r r }
  }
  \repeat volta 2 {
    \barNumberCheck 10
    h'2 \f \tuplet 3/2 { d8( cis h) }
    a4 fis' a,
    a4( g) g8( fis)
    \app fis4 e2 r4
    a2.~ \p
    \barNumberCheck 15
    a2.~
    a2.~
    a2.~
    a4 fis, e \tr
    d2 r4
    \barNumberCheck 20
    g'2 \f \tuplet 3/2 { a8( g f) }
    f4 e8( d c h)
    a8( h c d dis e)
    \app g,4 fis2 r4
    g'2 \tuplet 3/2 { a8( g fis) }
    \barNumberCheck 25
    g4 d( dis)
    e2 \tuplet 3/2 { g8( fis e) }
    d4 r r
    \tuplet 3/2 { c8( \p d c) } a'4 r
    \tuplet 3/2 { h,8( c h) } d4 r
    \barNumberCheck 30
    \app h8 a4 \f g fis \tr
  }
  \alternative {
    { g2 r4 }
    { g2 r4 }
  } \breakVoice
  \repeat volta 2 {
    \key g \minor
    \tempoTrio
    R2.
    r4 \dto #'( 0.4 . 0 ) <d c' a'> \f <d a' fis'>
    \barNumberCheck 35
    <d b' g'>4 r r
    r4 <d c' a'> <d a' fis'>
    <d b' g'>4 r r
    R2.
    b''2. \pp
    \barNumberCheck 40
    a2 c8( es,)
    d4 b'2
    a2 c8( es,)
    d8( d,) es( c') f,( a)
    b,4 r r
  }
  \repeat volta 2 {
    \barNumberCheck 45
    b''2.
    b4 \tr a2
    a4 \tr g2
    g4 \tr fis r
    R2.
    \barNumberCheck 50
    r4 \dto #'( 0.4 . 0 ) <d, c' a'> \f <d a' fis'>
    <d b' g'>4 r r
    r4 <d c' a'> <d a' fis'>
    <d b' g'>4 r r
    R2.
    \barNumberCheck 55
    fis'2. \p
    g8( d) d2
    fis2.
    g8( d) d2
    es8( c) b( g) d( fis)
    \barNumberCheck 60
    g,4 r r \mdc
  }
}