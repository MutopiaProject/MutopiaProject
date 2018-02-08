\version "2.18.2"

Viola_a = \relative b {
  \global_a
  \clef alto
  \repeat volta 2 {
    b8 \f
    b4 d8 d4 f8
    f4 b8 b4 r8
    r4 r8 r4 b8 \p
    a8( b c) b4 b,8 \f
    \barNumberCheck 5
    b4 d8 d4 f8
    f4 b8 b4 r8
    r4 r8 r4 a8 \p
    a8( b c) b4 r8
    r4 b8-. \f a( f) r
    \barNumberCheck 10
    r4 g8-. f( a) r
    b4. a
    g4 c,8 f4 r8
    g4. a8 g f
    e8 c e f4 r8
    \barNumberCheck 15
    R2.
    R2.
    g8 g g a a a
    g8 g g a a a
    g8 g g a a a
    \barNumberCheck 20
    g8 g c, f4 a,8
    b8-. b( c) d( f) a,-.
    b4 g8 a r c( \p
    f8) r c( f4) c8(
    f4) r8 r4
  }
  \break
  \repeat volta 2 {
    r8
    \barNumberCheck 25
    r4 r8 r4 h,8 \f
    h8( c d) c4 r8
    r4 r8 r4 a8
    a8( b c) b4 b8
    b8( c) c-. c( d) d-.
    \barNumberCheck 30
    d8( es8) es-. es( f) c-.
    d4 r8 r4 b'8 \p
    a8( b c) \appoggiatura c8 b4 r8
    r4 r8 r4 d8
    d( c b) a4 r8
    \barNumberCheck 35
    r4 a8-. \pp b( a) r
    r4 a8-. b( a) f-. \ff
    b4 f8 des4 b8
    ges'8( f) e-. f4 des8 \p
    c4 des8 c4 des8
    \barNumberCheck 40
    c4 r8 r4 b8 \f
    b4 d8 d4 f8
    f4 b8 b4 r8
    r4 r8 r4 b8 \p
    a8( b c) b4 b,8 \f
    \barNumberCheck 45
    b4 es8 es4 g8
    g4 b8 b4 r8
    r4 r8 r4 b8 \p
    a8( b c) b4 r8
    g4. \f f
    \barNumberCheck 50
    f4. es
    es'4. d
    c4 c8 b4 r8
    R2.
    R2.
    \barNumberCheck 55
    c,8 c c d d d
    c8 c c d d d
    c8 c c d d d
    c8 c f, b4 f'8
    g8-. g( a) b( d) d,-.
    \barNumberCheck 60
    es4 c8 d r f,( \p
    b8) r f( b4) f8(
    b4) r8 r4
  }
}