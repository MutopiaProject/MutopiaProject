\version "2.18.2"

ViolinI_d = \relative es' {
  \global_d
  \repeat volta 2 {
    es2 \f \tuplet 3/2 { as8( f d) }
    es4 b as \tr
    g8( b es g b es)
    b4 as \tr g
    \barNumberCheck 5
    es'4.( f16 g) b,8 r
    c4.( d16 es) f,8 r
    g8.( as32 b) es,4 d \tr
    es2 r4
  }
  \repeat volta 2 {
    b''4.( c16 des) e,4
    \barNumberCheck 10
    f8( c) c2
    des8( c) g'( e) c( b)
    \tuplet 3/2 { as( g f) } f2
    as'4.( b16 c) es,4
    d4.( es16 f) as,4
    \barNumberCheck 15
    g8( b) \tuplet 3/2 { c( b as) } \tuplet 3/2 { g( f es) }
    \app es4 d2 r4
    R2.
    es'4 \pp g \tuplet 3/2 { as8( f d) }
    es4 b as
    \barNumberCheck 20
    g4 g' \tuplet 3/2 { as8( f d) }
    es8( g f es d c)
    b4 as \tr g
    es'4.( \f f16 g) b,4
    c4.( d16 es) f,4
    \barNumberCheck 25
    g8.( as32 b) es,4 d \tr
    es2 r4
  }
  \break
  \repeat volta 2 {
    \tempoTrio
    g'2 \p as8( g)
    g8( fis) fis2
    f!4 d'8( h) g( f)
    \barNumberCheck 30
    f8( es) es4 r
    R2.
    as4.( \f \> h,8) c4 \p
    R2.
    as'4.( \f \> h,8) c4 \p
    \barNumberCheck 35
    d8.( \f es16) c4 h
    c2 r4
  }
  \repeat volta 2 {
    r4 r g,( \f
    as4) as'-.( \p as-.)
    r4 r a,( \f
    \barNumberCheck 40
    b4) b'-.( \p b-.)
    r4 f'-.( f-.)
    r4 es-.( es-.)
    r4 f,-.( f-.)
    r4 g-.( g-.)
    \barNumberCheck 45
    f8.( as16) es4 d
    es2 r4
    g'2 \p as8( g)
    g8( fis) fis2
    f!4 d'8( h) g( f)
    \barNumberCheck 50
    f8( es) es4 r
    R2.
    as4.( \f \> h,8) c4 \p
    R2.
    as'4.( \f \> h,8) c4 \p
    \barNumberCheck 55
    d8.( \f es16) c4 h
    c2 r4
  }
}