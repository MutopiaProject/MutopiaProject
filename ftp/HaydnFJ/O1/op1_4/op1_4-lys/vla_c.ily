\version "2.18.2"
\language "deutsch"

Viola_c = \relative e'' {
  \global_c
  \clef alto
  \repeat volta 2 {
    r8
    r8 e \p d h r c c, h'
    c8 c4 h8 c8 c,4 h8
    c4 r8 g'4 g g8~
    g8 g4 g8 r c, c c
    \barNumberCheck 5
    r8 c h h c4 r8 c'
    c8 \tr h r c, c \tr h16. \dto #'( 0.4 . 0) g'32 \f d16. \> c32 h16. a32
    g8 \p g' h g a, fis' a c
    h,8 g' h h, c c' a a
    fis8 fis g g e e fis fis
    \barNumberCheck 10
    g4 r r2
    r2 r16 c( h e) d( c h a)
    g8 g4 fis8 g8 r g fis
    g8 h d d, g4 r8
  }
  \repeat volta 2 {
    r8
    r8 h a fis r g g, fis'
    \barNumberCheck 15
    g8 g4 fis8 g g4 fis8
    g8 h4 h8 c c c c
    f,4 r r g32( f g a) b8
    a32( g a b) c8 e,32( d e f) g8 f f4 e8
    f8 f,4 e8 f4 r
    \barNumberCheck 20
    r4 c''32( b a g) fis8 r4 a32( g fis e) d8
    a'16( c) c4( b16 a) g4. fis8
    g4 r r8. es16 \f d16. \> c32 b16. a32
    g4 \p b'32( a g f) e!8 r4 g32( f e d) c8
    g'16( b) b4( a16 g) f4. e8
    \barNumberCheck 25
    f4 r4 r8. d16 \f c16. \> b32 a16. g32
    f8 \p c'' c c c c c c
    c8 c h h c4 r8 c
    c8 \tr h r c, c \tr h r4
    e4 r e r
    \barNumberCheck 30
    e4 r e r8 g
    c8 c4 h8 c c,4 h8
    c4 r8 g'4 g g8~
    g8 g4 g8 r c, c c
    r8 c h h c4 r8 c'
    \barNumberCheck 35
    c8 \tr h r c, c \tr h16. \dto #'( 0.3 . -0.2) a'32 \f g16. \> f32 e16. d32
    c8 \p c' e c d, h' d f,
    e8 c' e e, f f d d'
    h8 h c c a a h h
    c4 r r2
    \barNumberCheck 40
    r2 r16 a( g f) e( a g f)
    e8 c'4 h8 c r c h
    c8 e, g g, c[ g c,]
  }
}
