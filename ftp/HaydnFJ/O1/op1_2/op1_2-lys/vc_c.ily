\version "2.18.2"

Cello_c = \relative b {
  \global_c
  \clef bass
  \repeat volta 2 {
    b8 \p r b, r f' r b, r
    es8 r es r f r b, r
    b8 r b r c r c r
    f8 r f r b r b, r
    \barNumberCheck 5
    c8 r c r c r c r
    c8 r c r c r c r
    c8 r c r f r f r
    d8 r a r b r c c
    f4 c'8 c, f4 c'8 c,
    \barNumberCheck 10
    f8 d' b c f, c f,4
  }
  \repeat volta 2 {
    b'8. \f f16 b16. f32 d'16. a32 b8. f16 b16. f32 d16. b32
    d8 r d \p r es r es r
    as8 r b b, es \f r16 b es16. b32 g'16. d32
    es8. g16 as16. b32 c16. d32 es8 r es, \p r
    \barNumberCheck 15
    d8 r d r g r b r
    c8 r e, r f r d r
    es r es' \f r d \p r c f,
    b8 b, es e f4~ f16 es d c
    b8 r b r f' r b, r
    \barNumberCheck 20
    es8 r es r f r b, r
    f'8 r f r f r f r
    f8 r f r f r f r
    f8 r f r b r b r
    g8 r d r es r f f
    \barNumberCheck 25
    b,4 f8 f' b,4 f'8 f,
    b8 g' es f b, b' b,4
  }
}
