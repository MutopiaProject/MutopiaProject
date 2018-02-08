\version "2.18.2"

Viola_d = \relative b {
  \global_d
  \clef alto
  \repeat volta 2 {
    r4
    r4 r b( \f
    f') f-. g-.
    es2 f4
    b,4 r r
    \barNumberCheck 5
    R2.
    R2.
    r4 r f'( \f
    b4) b-. b-.
    a4 r f(
    \barNumberCheck 10
    d'4) d-. d-.
    b2 c4
    f,4 f,
  } \break
  \repeat volta 2 {
    r4
    R2.
    r4 r f( \p
    \barNumberCheck 15
    f'-.) f( es)
    des4-. des( a)
    b4 f r
    f4 r f'( \f
    b4) b-. b-.
    \barNumberCheck 20
    a4 r f(
    b4) b-. b-.
    es,4 r es'
    d2 es4
    d4 r r
    \barNumberCheck 25
    g,4 d c
  }
  \alternative {
    { \set Timing.measureLength = #(ly:make-moment 2/4) b4 r }
    { \set Timing.measureLength = #(ly:make-moment 3/4) b4 r r }
  } \bar "|."
  \break
  \repeat volta 2 {
    \tempoTrio
    b4 \f b\p b
    b4 \f b\p b
    \barNumberCheck 30
    b4 \f b\p b
    b4 r r
    a4 a a
    b4 b b
    c4 c c
    \barNumberCheck 35
    f4 c f,
  }
  \repeat volta 2 {
    d'4 d d
    es4 r r
    es4 es es
    f4. es8-. d-. c-.
    \barNumberCheck 40
    b4 \f r r
    es4 \f r r
    f4 \p f f
  }
  \alternative {
    { b4 b, r }
    { b'4 b, \mdc \bar "|." }
  }
}