\version "2.18.2"

Cello_a = \relative b, {
  \global_a
  \clef bass
  \repeat volta 2 {
    b8 \f
    b4 d8 d4 f8
    f4 b8 b4 r8
    r4 r8 r4 f8 \p
    f8 f f b,4 b8 \f
    \barNumberCheck 5
    b4 d8 d4 f8
    f4 b8 b4 r8
    r4 r8 r4 f8 \p
    f8 f f b,4 r8
    r4 c'8-. \f a( f) r
    \barNumberCheck 10
    r4 c8-. f( a) r
    b4. a
    g4 c,8 f4 r8
    c8 c' b a g f
    e8 c e f4 r8
    \barNumberCheck 15
    R2.
    R2.
    c8 c c c c c
    c8 c c c c c
    c8 c c c c c
    \barNumberCheck 20
    c8 c c f4 a,8
    b8-. b( c) d( f) a,-.
    b4 c8 f r c( \p
    f8) r c( f4) c8(
    f4) r8 r4
  }
  \break
  \repeat volta 2 {
    r8
    \barNumberCheck 25
    r4 r8 r4 g8 \f
    g8 g g c,4 r8
    r4 r8 r4 f8
    f8 f f b,4 d8
    es4. f
    \barNumberCheck 30
    g4. a
    b4 r8 r4 f8 \p
    f8 f f b4 r8
    r4 r8 r4 f8
    f8 f f f4 r8
    \barNumberCheck 35
    r4 f8-. \pp e( f) r
    r4 f8-. e( f) f-. \ff
    b4 f8 des4 b8
    ges'8( f) e-. f4 r8
    f,4 \p r8 f4 r8
    \barNumberCheck 40
    f4 r8 r4 b8 \f
    b4 d8 d4 f8
    f4 b8 b4 r8
    r4 r8 r4 f8 \p
    f8 f f b,4 b8 \f
    \barNumberCheck 45
    b4 es8 es4 g8
    g4 b8 b4 r8
    r4 r8 r4 f8 \p
    f8 f f b4 r8
    c4. \f f,
    \barNumberCheck 50
    b4. es,
    es'4. d
    c4 f,8 b4 r8
    R2.
    R2.
    \barNumberCheck 55
    f8 f f f f f
    f8 f f f f f
    f8 f f f f f
    f8 f f b4 f8
    g8-. g( a) b( d) d,-.
    \barNumberCheck 60
    es4 f8 b, r f( \p
    b8) r f( b4) f8(
    b4) r8 r4
  }
}