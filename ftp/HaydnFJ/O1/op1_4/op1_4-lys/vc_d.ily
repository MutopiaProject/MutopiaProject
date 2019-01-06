\version "2.18.2"
\language "deutsch"

Cello_d = \relative g, {
  \global_d
  \clef bass
  \repeat volta 2 {
    g4 \f h' g
    a4 fis d
    g4 e a
    fis4 a8 fis d4
    \barNumberCheck 5
    c4 c' a
    h4 g, g'8. a16
    h4 fis g
    d'4 d, r
  } \breakVoice
  \repeat volta 2 {
    \startMeasureCount d4 \p d d
    \barNumberCheck 10
    d4 d d
    d4 d d
    d4 d d
    d4 d d
    d4 d d
    \barNumberCheck 15
    d4 d d \stopMeasureCount
    d4 d, r
    g4 \f h' g
    a4 fis d
    g4 e a
    \barNumberCheck 20
    fis4 a8 fis d4
    c4 c' a
    h4 g r
    g,4 h' g
    d4 fis g
    \barNumberCheck 25
    c4 d d,
    g4 d8 h g4
  } \break
  \repeat volta 2 {
    \key g \minor
    \tempoTrio
    g4 \p b d
    g4 r d'
    g,4 r d
    \barNumberCheck 30
    g4 r d'
    g,4 r d'
    b4 r fis
    g4 r fis
    g4 g f!
    \barNumberCheck 35
    es2( \> d4) \!
    es2( \> d4) \!
    es4 -\omit\p f f,
    b4 b' r
  }
  \repeat volta 2 {
    R2.
    \barNumberCheck 40
    R2.
    b,4 g'8( f es d)
    c4 r r
    R2.
    c4 a'8( g fis e)
    \barNumberCheck 45
    d4 r r
    d4 r r
    d4 r r
    d4 g, g'8( f)
    es8( d c b a g)
    \barNumberCheck 50
    d'4 r r
    g,4 b d
    g4 r d
    g4 r d
    g4 r h
    \barNumberCheck 55
    c4 r r
    d,4 d'8 c b4
    c4 d d,
    g4 d g, \mdc
  }
}