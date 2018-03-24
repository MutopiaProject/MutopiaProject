\version "2.18.2"

ViolinII_d = \relative g {
  \global_d
  \repeat volta 2 {
    g4. \f a8 h4
    \acc h8 c4 a a
    \acc a8 h4 h cis8.( \tr h32 cis)
    d2 r4 \breakVoice
    \barNumberCheck 5
    e4 e fis8.( \tr e32 fis)
    g4.. a16 h8. c16
    d4 c h8.( \tr a32 h)
    a4 r r
  } \breakVoice
  \repeat volta 2 {
    fis'2. \p
    \barNumberCheck 10
    g2.
    c,2.
    h2.
    fis2.
    g2.
    \barNumberCheck 15
    h4. a8 g4
    g4 \tr fis r \breakVoice
    g,4. \f a8 h4
    \acc h8 c4 a a
    \acc a8 h4 h cis8.( \tr h32 cis)
    \barNumberCheck 20
    d2 r4
    e4 e fis8.( \tr e32 fis) \breakVoice
    g4.. a16 h8. c16
    d4 d d
    c4. a8 h4
    \barNumberCheck 25
    \acc h8 a4 g fis
    g2 r4
  }\break
  \repeat volta 2 {
    \key g \minor
    \tempoTrio
    R2.
    g4 \p d'8( c b a)
    b4. a8( g fis)
    \barNumberCheck 30
    g4 d'8( c b a)
    b4. a8( g fis)
    g4 b d
    g4 d c
    b4 b a
    \barNumberCheck 35
    g2( \> f!4) \!
    g2( \> f4) \!
    \tuplet 3/2 { es'8( -\omit\p  d c) } b4 a \tr
    b2 r4
  } \breakVoice
  \repeat volta 2 {
    R2.
    \barNumberCheck 40
    b,4 f'8( es d c)
    d4 d2 \rfz
    es4 r r
    c4 g'8( f es d)
    es4 e2 \rfz
    \barNumberCheck 45
    fis4 es'!8( d c b)
    a4 d8( c b a)
    g4 c8( b a g)
    fis4 g g8( f)
    es8( d c b a g)
    \barNumberCheck 50
    d'4 r r
    R2. \breakVoice
    g4 d'8( c b a)
    b4. a8( g fis)
    g4 r g
    \barNumberCheck 55
    g4 es'8( d c b)
    \app b4 a2 b4
    \tuplet 3/2 { c8( b a) } g4 fis \tr
    g2 r4 \mdc
  }
}