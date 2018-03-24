\version "2.18.2"

Viola_b = \relative d' {
  \global_b
  \clef alto
  \compressFullBarRests
  \repeat volta 2 {
    d2 \f a4
    d4 r r
    R2.
    a'4 \p a, d
    \barNumberCheck 5
    d'4 \f h g
    fis4 d' fis,
    e2 d4
    a4 a' a,
  }
  \repeat volta 2 {
    R2.
    \barNumberCheck 10
    d2 \p \tuplet 3/2 { fis8( e d) }
    e2 a,4
    a2 d4
    g,2 g4
    a4 a'8 \< g fis e
    \barNumberCheck 15
    d2 \f a4
    d4 r r
    g4 d' g,
    fis4 d' fis,
    fis8 g a4 a,
    \barNumberCheck 20
    d4 a d,
  }
  \break
  \repeat volta 2 {
    \key g \major
    \tempoTrio
    R2. * 4
    \barNumberCheck 25
    fis'2. \f
    g4 r r
    h8 c d4 d,
    g4 d g,
  }
  \repeat volta 2 {
    b'2. \p
    \barNumberCheck 30
    a2.
    g2.
    fis2.
    g4 r r
    c2 b4
    \barNumberCheck 35
    a2 g4
    d4 d, r
    R2. * 4
    fis'2. \f
    g4 r r
    h8 c d4 d,
    g4 d g, \mdc
  }
}