\version "2.18.2"

Cello_b = \relative d {
  \global_b
  \clef bass
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
    a4 \p a' g
    \barNumberCheck 10
    fis4 d r
    r4 r a'
    d,2 d4
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
    d'2. \f
    g4 r r
    h8 c d4 d,
    g4 d g,
  }
  \repeat volta 2 {
    g8( \p b d) g-. b-. d
    \barNumberCheck 30
    d,4 r r
    g,8( b d) g-. b-. d
    d,4 r r
    b'2.
    c2 b4
    \barNumberCheck 35
    a2 g4
    d4 d' r
    R2. * 4
    d,2. \f
    g4 r r
    h8 c d4 d,
    g4 d g, \mdc
  }
}