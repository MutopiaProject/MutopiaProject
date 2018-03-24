\version "2.18.2"

Viola_d = \relative d' {
  \global_d
  \clef alto
  \repeat volta 2 {
    d4 \f e fis
    g4 g, fis'
    g4 e a
    fis4 d r
    \barNumberCheck 5
    r4 g( fis)
    r4 e( d)
    g4 e a
    d,4 a d,
  } \breakVoice
  \repeat volta 2 {
    r4 f' \p g
    \barNumberCheck 10
    f4 e d
    r4 a' g
    f4 e d
    r4 b'( a)
    r4 g( f)
    \barNumberCheck 15
    e4 e d
    a4 a' a,
    d4 \f e fis!
    g4 g, fis'
    g4 e a
    \barNumberCheck 20
    fis4 d r
    r4 g( fis)
    r4 e( d)
    g4 e a
    fis4 e d
    \barNumberCheck 25
    g4 r e
    a4 g fis
    g4 e a
    d,4 a d,
  }
  \break
  \repeat volta 2 {
    \key d \minor
    \tempoTrio
    d'2.( \pp
    \barNumberCheck 30
    e2.
    f2.
    g2.
    a2.
    b2.
    \barNumberCheck 35
    a4) a, g
    f2 r4
  }
  \repeat volta 2 {
    f'2.(
    es2.
    d2.
    \barNumberCheck 40
    c2.
    b2.
    a2.
    g2 e4)
    f4 r r
    \barNumberCheck 45
    fis2.(
    g2.
    gis2.
    a2.
    b2) b'4-.
    \barNumberCheck 50
    a4-. cis,( d)
    b4( a) cis,-.
    d4 r r \mdc
  }
}