\version "2.18.2"
\language "deutsch"

ViolinII_c = \relative c' {
  \global_c
  \repeat volta 2 {
    r8
    R1
    r2 c16. \p e32 g16. c32 \app g8 f4 \tr
    e4 r r h16.( c64 d c8) \breakVoice
    r4 d16.( e64 f e8) r2
    \barNumberCheck 5
    R1
    r4 c'32( g e' c g'16. f64 e) e8 \tr d r4 \breakVoice
    r4 g,32( \p fis g a) h8 r4 c32( h a h) a8
    r4 d32( h d h) d8 r4 c16( e,) e8
    d16 a'32( gis a gis a c) h16( d,) d8 c16 g'32( fis g fis g h) a16( c,) c( a)
    \barNumberCheck 10
    g8.( g'16) fis16( e d c) h( a g c) h( e d fis) \breakVoice
    g16( c h e) d h'8 h16 g,8 r r4
    R1
    h32( d g d g d h g) a4 \tr g r8
  } \breakVoice
  \repeat volta 2 {
    r8 \noBreak
    R1
    \barNumberCheck 15
    r2 \tuplet 3/2 { g,16[ h d] } \tuplet 3/2 { g16[ h d] } d8 c \tr
    h4 r r2
    r4 g32( f g a) b8 a32( g a b) c8 e,32( d e f) g8
    f32( e f g) a8 g32( f g a) b8 a r r4
    \tuplet 3/2 { c16[ f e] } \tuplet 3/2 { d c b } a8 g \tr f4 r
    \barNumberCheck 20
    r4 a32( g a b) c8 r4 a32( g a b) c8
    R1
    r2 <g, d' b' g'>4 \f r
    r4 g'32( \p fis g a) b8 r4 g32( fis g a) b8
    R1
    \barNumberCheck 25
    r2 <f c' a'>4 \f r
    R1
    R1
    r4 \tuplet 3/2 { \stemUp c'16[ \p h a] } \stemNeutral \tuplet 3/2 { g[ f e] } e8 \tr d r4
    r4 r8 c''16( g) g8 g4 \app h32 a16( g32 f)
    \barNumberCheck 30
    e8 e4 \app g32 f16( e32 d) c8 c4 \app e32 d16( c32 h)
    c4 r c,16. e32 g16. c32 \app g8 f4 \tr
    e4 r r h16.( c64 d c8)
    r4 d16.( e64 f e8) r2
    R1
    \barNumberCheck 35
    r4 c'32( g e' c g'16. f64 e) e8 \tr d r4
    r4 c,32( \p h c d) e8 r4 f32( e d e) d8 r4
    g32( e g e) g8 r4 f'16( a,) a8
    g16 d'32( cis d cis d f) e16( g,) g8 f16 c'32( h c h c e) d16( f,) f( d)
    c8. ( c'16) h( a g f) e( d c f) e( a g h)
    \barNumberCheck 40
    c16( f e a) g e8 e16 c,8 r r4
    R1
    e32( g c g c g e c) d4 \tr c r8
  }
}
