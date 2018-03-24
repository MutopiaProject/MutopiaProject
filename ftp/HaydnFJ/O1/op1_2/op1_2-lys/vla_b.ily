\version "2.18.2"

Viola_b = \relative b' {
  \global_b
  \clef alto
  \compressFullBarRests
  \repeat volta 2 {
    R2. * 6
    b2. \f
    b2.
    g4 as as
    \barNumberCheck 10
    b4 f b,
  }
  \repeat volta 2 {
    r4 d' b
    c4 c, r
    f4 f f
    b4 b, r
    \barNumberCheck 15
    b'4 b b
    b,2 d4
    es4 f f,
    b4 g' \> f
    es4 \p es es8( g)
    \barNumberCheck 20
    g8( f) f2
    d4 d d
    es4 es es
    d4 d b
    es2 as4 \f
    \barNumberCheck 25
    g2 d4
    es2 r4
    es4 b' b,
    es4 b es,
  }
  \break
  \repeat volta 2 {
    \key b \major
    \tempoTrio
    b'2 \f d'4 \p
    \barNumberCheck 30
    es4( d c)
    b4 b,( c)
    d4 r r
    b2 \f d'4 \p
    es4( d c)
    \barNumberCheck 35
    b4 b,( c)
    d4 r d
    es4 r es'
    d4 r d, \f
    es4 f f,
    \barNumberCheck 40
  }
  \alternative {
    { b4 d f }
    { b,4 d b }
  }
  \breakVoice
  \repeat volta 2 {
    f'8 \f f f f f \p f
    \rt 6 f8
    \rt 6 f8
    \barNumberCheck 45
    \rt 6 f8
    f8 \f f f f f \p f
    f8 \f f f f f \p f
    f8 f f f f f
    f8 \< f f es d c
    \barNumberCheck 50
    b4 \f r d' \p
    es4( d c)
    b4 b,( c)
    d4 r r
    b4( \fp c d)
    \barNumberCheck 55
    es4 r r
    es'4 es es
    d4 r d, \f
    es4 f f,
  }
  \alternative {
    { b4 d b }
    { b2 r4 \mdc }
  } \bar "|."
}