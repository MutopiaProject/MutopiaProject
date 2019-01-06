\version "2.18.2"

Viola_c = \relative d' {
  \global_c
  \clef alto
  \repeat volta 2 {
    r16 d-. \p d-. d-. r d-. d-. d r c-. c-. c -. r d-. d-.d-.
    r16 b b b r es es es r c c c r b b b
    r16 f' f f r g g g r g g g r e e e
    r16 f f f r es! es es r d d d r d d d
    \barNumberCheck 5
    r16 e e e r e e e r f( g f g f g f)
    r16 f f f r f f f r e( f e f e f e)
    r16 e e e r e e e r f( b a b a g f)
    r16 f f f r f f f r f f f r a, r b
    a4 c'8 c, f4 c'8 c,
    \barNumberCheck 10
    f8 d' b c f, c f,4
  }
  \repeat volta 2 {
    b'8. \f f16 b16. f32 d'16. a32 b8. f16 b16. f32 d16. b32
    as16 b \p b b r b b b r g g g r g' g g
    r16 f f f r g r f es8 \f r16 b es16. b32 g'16. d32
    es8. g16 as16. b32 c16. d32 es16 g, \p g g r g g g
    \barNumberCheck 15
    r16 a! a a r fis fis a r d, d d r des des des
    r16 c c c r c c c r c c c r b b b
    r16 b b b r g' \fp g g r f f f r es r es
    r16 d d d r c c c c a a a a es' d c
    b16 d d d r d d d r c c c r d d d
    \barNumberCheck 20
    r16 b b b r es es es r c c c r b b b
    r16 a a a r a a a r b( c b c b c b)
    r16 b b b r b b b r a( b a b a b a)
    r16 a a a r a' a a r b( es d es d c b)
    r16 b b b r b b b r b b b r d, r es
    \barNumberCheck 25
    d4 f,8 f' b,16( d,) d-. d-. f'8 f,
    b8 g' es f b, f b4
  }
}