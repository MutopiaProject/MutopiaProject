\version "2.18.2"

ViolinII_c = \relative f' {
  \global_c
  \repeat volta 2 {
    r16 f- \p f-. f-. r f-. f-. f-. r a-. a-. a-. r b-. b-. b-.
    r16 g g g r g g g r es es es r d d d
    r16 b' b b r b b b r b b b r b b b
    r16 a a a r c c c r b b b r b b b
    \barNumberCheck 5
    r16 b b b r b b b r a( b a b a b a)
    r16 a a a r a a a r g( a g a g a g)
    r16 b b b r b b b r a( d c d c b a)
    r16 a a a r a a a r g g g r f r e
    f8 r r16 g, r e' f( a,) a-. a-. r g r e''
    \barNumberCheck 10
    r16 f r a, r b r g f4 r
  }
  \breakVoice
  \repeat volta 2 {
    b8. \f f16 b16. f32 d'16. a32 b8. f16 b16. f32 d16. b32
    as16 f' \p f f r f f f r es es es r es' es es
    r16 es es es r es r d es8 \f r16 b, es16. b32 g'16. d32
    es8. g16 as16. b32 c16. d32 es16 c \p c c r c c c
    \barNumberCheck 15
    r16 d d d r d d d r b b b r b b b
    r16 b b b r b b g r as as as r as as f
    r16 g g g r b \fp b b r b b b r b r a
    r16 b b b r b b b a f f f f es d c
    b16 f' f f r f f f r a a a r b b b
    \barNumberCheck 20
    r16 g g g r g g g r es es es r d d d
    r16 es es es r es es es r d( es d es d es d)
    r16 d d d r d d d r c( d c d c d c)
    r16 es es es r es' es es r d( g f g f es d)
    r16 d d d r d d d r c c c r b r a
    \barNumberCheck 25
    b8 r r16 es, r a, b b b b r c r a'
    r16 b r d, r es r c b4 r
  }
}