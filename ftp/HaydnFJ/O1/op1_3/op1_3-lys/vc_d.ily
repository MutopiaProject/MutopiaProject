\version "2.18.2"

Cello_d = \relative d {
  \global_d
  \clef bass
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
    d'4 \p r r
    \barNumberCheck 30
    r8 b'-. a-. g-. f-. e-.
    d4 r r
    r8 g-. f-. e-. d-. c
    f4 r r
    r8 b-. a-. g-. f-. e-.
    \barNumberCheck 35
    f8-. a-. c-. b-. c-. c,-.
    f8-. g-. a-. g-. f-. e-.
  }
  \repeat volta 2 {
    f4 r r
    r8 f-. g-. f-. g-. a
    b4 r r
    \barNumberCheck 40
    r8 a-. fis-. d-. e-. fis-.
    g4 r r
    r8 f-. a-. c-. d-. c-.
    b8-. a-. b-. g-. c-. c,-.
    f8-. g-. a-. g-. f-. e-.
    \barNumberCheck 45
    d8-. es-. d-. c-. b-. a-.
    g4 r r
    r8 f'-. e!-. d-. cis-. h-.
    a4 r r
    r8 g'-. f-. e-. d-. cis-.
    \barNumberCheck 50
    d8-. f-. e-. g-. f-. d-.
    g8-. e-. a-. g-. a-. a,-.
    d4 a d, \mdc
  }
}