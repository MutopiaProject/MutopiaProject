\version "2.18.2"

ViolinII_d = \relative d' {
  \global_d
  \repeat volta 2 {
    d2( \f cis4)
    h2( a4)
    h4. e8 cis4
    d8( e fis g a ais)
    \barNumberCheck 5
    h2( a!4)
    g2( fis4)
    e4. fis8 cis4
    d2 r4
  } \breakVoice
  \repeat volta 2 {
    a2 \p b4
    \barNumberCheck 10
    a4( cis) d-.
    a2 cis4
    d4( e) f-.
    g4. a8 f4
    e4. f8 d4
    \barNumberCheck 15
    cis4 cis \app e16 d8( cis16 d)
    e4 r r
    d2( \f cis4)
    h2( a4)
    h4. e8 cis4
    \barNumberCheck 20
    d8( e fis g a ais)
    h2( a!4)
    g2( fis4)
    h2( cis4)
    d2 fis,4
    \barNumberCheck 25
    e8( fis g a ais h)
    \app d,4 cis2 d4
    e4. fis8 cis4
    d4 r r
  }
  \break
  \repeat volta 2 {
    \key d \minor
    \tempoTrio
    r8 a'-. \p g-. f-. e-. d-.
    \barNumberCheck 30
    cis4 r r
    r8 a'-. g-. f-. e-. d-.
    b'4 r r
    r8 c-. b-. a-. g-. f-.
    d'4 r g
    \barNumberCheck 35
    f4 f, e \tr
    f2 r4
  }
  \repeat volta 2 {
    r8 f-. a-. g-. a-. b-.
    c4 r r
    r8 b,-. d-. c-. d-. e-.
    \barNumberCheck 40
    fis4 r r
    r8 g,-. g'-. c,-. d-. e-.
    f2.~
    f2( e4)
    f4 r r
    \barNumberCheck 45
    R2.
    r8 d'-. d-. c-. b-. a-.
    gis4 r r
    r8 e'-. d-. cis-. h-. a
    g'4 r b!-.
    \barNumberCheck 50
    a4-. cis,( d)
    b4( a) cis,-.
    d4 r r \mdc
  }
}