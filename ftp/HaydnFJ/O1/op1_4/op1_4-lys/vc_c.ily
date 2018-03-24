\version "2.18.2"

Cello_c = \relative c' {
  \global_c
  \clef bass
  \repeat volta 2 {
    r8
    r8 c \p h g r c c, f
    e8 e' d g, c[ e,] d g,
    c4 r8 e f( e) f( e)
    h8( c) h( c) r e e e
    \barNumberCheck 5
    r8 d g g c,4 r8 c
    g'8 g, r c g' g,16. g'32 \f d16. \> c32 h16. a32
    g8 \p g' h g a, fis' a c
    h,8 g' h h, c c' a a
    fis8 fis g g e e fis fis
    \barNumberCheck 10
    g4 r r2
    r2 r16 e( d c') h( e, d c)
    h8 c d d g r d d
    g8 h d d, g8[ d] g,
  }
  \repeat volta 2 {
    r8 \noBreak
    r8 g' fis d r g g, c
    \barNumberCheck 15
    h8 g a d g, g' a d,
    g4 f! e8 e e e
    f8 r e g f a c c,
    f8 f, r c' f b c c,
    a'8 b c c, f c f,4
    \barNumberCheck 20
    r4 c''32( b a g) fis8 r4 a32( g fis e) d8
    r8 fis fis fis g b, c d
    g4 r r8. es16 \f d16. \> c32 b16. a32
    g4 \p b'32( a g f) e!8 r4 g32( f e d) c8
    r8 e e e f a, b c
    \barNumberCheck 25
    f8 f, r4 r8. d'16 \f c16. \> b32 a16. g32
    f8 \p f' f f e e e e
    d8 d g g c,4 r8 c
    g' g, r c g' g, r4
    c4 r c r
    \barNumberCheck 30
    c4 r c r8 g'
    e8 e' d g, c[ e,] d g,
    c4 r8 e f( e) f( e)
    h8( c) h( c) r8 e e e
    r8 d g g c,4 r8 c
    \barNumberCheck 35
    g'8 g, r c g' g,16. \dto #'( 0.4 . 0) a'32 \f g16. \> f32 e16. d32
    c8 \p c' e c d, h' d f,
    e8 c' e e, f f d d'
    h8 h c c a a h h
    c4 r r2
    \barNumberCheck 40
    r2 r16 f,( e a) g( f e d)
    e8 f g g, c r g' g,
    c8 e g g, c[ g c,]
  }
}
