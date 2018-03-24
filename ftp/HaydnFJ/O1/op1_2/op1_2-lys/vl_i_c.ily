\version "2.18.2"

ViolinI_c = \relative b'' {
  \global_c
  \override Beam.auto-knee-gap = #4.5
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \repeat volta 2 {
    b4 \p b,8( d) f8.( \tuplet 3/2 { g32 f es) } d8 r
    g8( g,4) es'16( c) \app b16 a8.( \tuplet 3/2 { c32 b a) } b4
    d'4 \acc c8 b( \acc a g) \acc f e8.( f16) g8 r
    c4 \acc b8 a( \acc g f) \acc es! d8.( es16) f8 r
    \barNumberCheck 5
    e16( g) r g32( e) b'16( g) r g32( e) f16( c) c c c c c c
    c16( f) r a32( f) c'16( a) r a32( f) g16( c,) c c c c c c
    c16( g') r g32( e) b'16( g) r g32( e) f2~
    f4~ f16( a c f) d8.( ^\markup { \raise #0.7 \tiny \natural \tiny \musicglyph #"scripts.trill" } c32 b) a8( g) \tr
    f8 r r16 e, r b' a( f) f-. f-. r e r b''
    \barNumberCheck 10
    r16 a r f r g r e f4 r
  }
  \repeat volta 2 {
    b,8. \f f16 b16. f32 d'16. a32 b8. f16 b8 r
    as'2 \p g8.( as16) b8( es16 b)
    c8.( b32 as) g8( \tuplet 3/2 { as16 f d) } es8( \f b16) b, es16. b32 g'16. d32
    es8. g16 as16. b32 c16. d32 \acc es8 g2 \p
    \barNumberCheck 15
    fis8.( g16) a8.( b32 c) b( a g a) g4 f8
    \app f8 e8. des'16 des8( c16 b as g f16.) c'32 c8( b16. as32)
    g16( ^\markup { \raise #0.7 \tiny \flat \tiny \musicglyph #"scripts.trill" } f) es8 <es, b' g'>8 \f r16 g'32( \p b) b16( f) r b32( d,) f16( es) r c'32( es,)
    es16( d) r b'32( f) g16 es c b f4 r
    b'4 b,8( d) f8.( \tuplet 3/2 { g32 f es) } d4
    \barNumberCheck 20
    g8( g,4) es'16( c) \app b16 a8.( \tuplet 3/2 { c32 b a) } b4
    a16( c) r c32( a) es'16( c) r c32( a) b16( f) f f f f f f
    f16( b) r d32( b) f'16( d) r d32( b) c16( f,) f f f f f f
    f16( c') r c32( a) es'16( c) r c'32( a) b2~
    b4~ b32[ a( b c] d[ b a b]) g8.( \tr f32 es) d8( c) \tr
    \barNumberCheck 25
    b8 r r16 c r es, d( b) b-. b-. r a' r es'
    r16 d r b r c r a b4 r
  }
}