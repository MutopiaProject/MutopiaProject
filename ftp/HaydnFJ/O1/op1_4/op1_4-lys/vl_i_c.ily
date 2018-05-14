\version "2.18.2"
\language "deutsch"

ViolinI_c = \relative c''' {
  \global_c
  \repeat volta 2 {
    c16( \p g)
    g8 g4 \app h32 a16( g32 f) f4( e8) \app g32 f16( e32 d)
    c16. e32 g16. c32 \app g8 f4 \tr e r4
    r8 c c c h16.( c64 d c8) r4
    d16.( e64 f e8) r4 g4 \tuplet 3/2 { c16([ h a] } \tuplet 3/2 { g[ f e)] }
    \barNumberCheck 5
    \tuplet 3/2 { d16( e f) } f4 e16( d) e( g c32 g e' c) g'8.( f32 e)
    e8 \tr d r4 r2
    g,32( \p fis g a) h8 r4 c32( h a h) a8 r4
    d32( h d h) d8 r4 d16( e,) e8~ e16 c'32( h c h c h)
    c16( d,) d8~ d16 h'32( ais h ais h ais) h16( c,) c8~ c16 a'32( gis a fis d c)
    \barNumberCheck 10
    h16( g' fis e) d( c h a) g( c h e) d( g fis c')
    h16( e d g) g g8 g16 g2~
    g16 d c32( h a g) a4 \tr h32( d g d g d h g) a4 \tr
    g8 r fis,4 g r8
  }
  \repeat volta 2 {
    g'16( \p d) \noBreak
    d8 d4 \app fis32 e16( d32 c) c4( h8) \app d32 c16( h32 a)
    \barNumberCheck 15
    \tuplet 3/2 { g16[ h d] } \tuplet 3/2 { g16[ h d] } d8 c \tr h4 r
    g4. \app a32 g16 ( f!32 e) \app d8 c4 \tuplet 3/2 { b'16([ a g] } \tuplet 3/2 { d'16[ c b)] }
    \app a16 c1~
    c2~ \tuplet 3/2 { c16[ f e] } \tuplet 3/2 { d c b } a8 g \tr
    f4 r r2
    \barNumberCheck 20
    a32( g a b) c8 r4a32( g a b) c8 r4
    c16( es,) es4( d16 c) b32( a b c) d16. g,32 a8.( b32 c)
    b32( a g a) g8 <g, d' b' g'>4 \f r2
    g''32( \p fis g a) b8 r4 g32( fis g a) b8 r4
    b16( d,) d4( c16 b) a32( g a b) c16. f,32 g8.( a32 b)
    \barNumberCheck 25
    a32( g f g) f8 <f c' a'>4 \f r2
    a'8 \p a4 h!16( c) c( g) g4 f32( e d c)
    f8 f4 \tuplet 3/2 { a16( g f) } \tuplet 3/2 { e([ f e)] } \tuplet 3/2 { g([ a g)] } \tuplet 3/2 { c[ h a] } \tuplet 3/2 { g[ f e] }
    e8 \tr d r4 r4 r8 c'16( g)
    g8 g4 \app h32 a16( g32 f) e8 e4 \app g32 f16( e32 d)
    \barNumberCheck 30
    c8 c4 \app h'32 a16( g32 f) e8 e4 \app g32 f16( e32 d)
    c16. e32 g16. c32 \app g8 f4 \tr e r4
    r8 c c c h16.( c64 d c8) r4
    d16.( e64 f e8) r4 g4 \tuplet 3/2 { c16([ h a] } \tuplet 3/2 { g[ f e)] }
    \tuplet 3/2 { d16( e f) } f4 e16( d) e( g c32 g e' c) g'8.( f32 e)
    \barNumberCheck 35
    e8 \tr d r4 r2
    c,32( \p h c d) e8 r4 f32( e d e) d8 r4
    g32( e g e) g8 r4 g16( a,) a8~ a16 f'32( e f e f e)
    f16( g,) g8~ g16 e'32( dis e dis e dis) e16( f,) f8~ f16 d'32( cis d h g f)
    e16( c' h a) g( f e d) c( f e a) g( c h f')
    \barNumberCheck 40
    e16( a g c) c c8 c16 c2~
    c16 g f32( e d c) d4 \tr e32( g c g c g e c) d4 \tr
    c8 r <g, d' h'> r <g e' c'> r r
  }
}