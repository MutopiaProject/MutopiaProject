\version "2.18.2"

ViolinI_a = \relative es' {
  \global_a
  \repeat volta 2 {
    <es es'>4 \f g'16( f)
    f8 r r
    <b, f'>4 as'16( g)
    g8 r r
    \barNumberCheck 5
    b4.~
    b16( c b as g f)
    es16( d f es g es)
    b4 as8 \tr
    g8 r r
    \barNumberCheck 10
    R4.
    r8 b \p b
    b4.~
    b8 b b
    b4.~
    \barNumberCheck 15
    b16( es d c) b8
    b4.~
    b16( es d c) b8
    c16( d es c) b8
    as16( b c as) g8
    \barNumberCheck 20
    f16( g as g f es)
    b'8 r r
    r8 f'( \f fis)
    g4.~
    g8 b g
    \barNumberCheck 25
    f4.~
    f8 d'16( b) g( f)
    es16( d es d) es8
    c'16( a) es'( c) a( es)
    d8 b'16( a b a)
    \barNumberCheck 30
    b8 d,,-. b'-.
    es,8-. g'16( fis g fis)
    \stemDown g8 \stemUp es,-. c-. \stemNeutral
    a8-. f'16( a) c-. es-.
    \tuplet 3/2 { d16( c b) } c4 \tr
    \barNumberCheck 35
    b4 r8
    r8 r a'( \p
    b8) f r
    r8 r a(
    b8) b,16( a) c( b)
    \barNumberCheck 40
    d16( \< c) es( d) g( f) \!
    f4 g16( \f f)
    es8 d c
    b4 r8
    R4.
    \barNumberCheck 45
    r8 r \tuplet 3/2 { es'16( \f c a) }
    b8 d, c \tr
    b4 r8
  }
  \break
  \repeat volta 2 {
    <d, b'>4 d'16( c)
    c4.
    \barNumberCheck 50
    d8 d d
    es16( \tr d) es8 r
    f4 as16( g)
    g4 b16( g)
    es8 b g16( es)
    \barNumberCheck 55
    b'8 r r
    <es, es'>4 g'16( f)
    f8 r r
    <b, f'>4 as'16( g)
    g8 r r
    \barNumberCheck 60
    b4.~
    b16( c b as g f)
    es16( d f es g es)
    b4 as8 \tr
    g8 r r
    \barNumberCheck 65
    des''4.~
    des16( c b as g f)
    g4 as16( b)
    b16( as g f e f)
    c'4.~
    \barNumberCheck 70
    c16( b as g f es)
    f4 g16( as)
    as16( g f es d es)
    es,8 r r
    h'16( c d es f g)
    \barNumberCheck 75
    es8 r r
    h16( c d es f g)
    es8 r r
    c'16( b as g f es)
    d8 r r
    \barNumberCheck 80
    b'16( as g f es d)
    c4 c8
    b8-. b16( a b a)
    b8-. d,-. f-.
    b,4 r8
    \barNumberCheck 85
    R4.
    r8 b' \p b
    b4.~
    b8 b b
    b4.~
    \barNumberCheck 90
    b16( es d c) b8
    b4.~
    b16( es d c) b8
    c16( d es c) b8
    as16( b c as) g8
    \barNumberCheck 95
    f'16( \f g as f b g)
    f16( g as f b g)
    d16[( es]) g,8 f
    es4 r8
    r8 b'( \p h)
    \barNumberCheck 100
    c4.~
    c8 as' c
    b4.~
    b16( g f es d es)
    as,16( g as g) as8
    \barNumberCheck 105
    f'16( d) as'( f) d( as)
    g8 es'16( d es d)
    \stemDown es8 \stemUp g,,-. \f es'-. \stemNeutral
    as,8-. c'16( \p h c h)
    c8 as-. \f f-.
    \barNumberCheck 110
    d8-. b16( d) f-. as-.
    \tuplet 3/2 { g16( f es) } f4 \tr
    es4 r8
    r8 r d'( \p
    es8) b r
    \barNumberCheck 115
    r8 r d(
    es8) es,16( d) f( es)
    g16( \< f) as( g) c( b) \!
    b4 as'16( \f g)
    \acciaccatura g8 f es d
    \barNumberCheck 120
    es4 r8
    R4.
    r8 r d16( \f b)
    es8 g, f
    es4 r8
    \barNumberCheck 125
    R4.
    r8 r b''16( \f d,)
    \acciaccatura d8 es g, f
    es4 r8
  }
}