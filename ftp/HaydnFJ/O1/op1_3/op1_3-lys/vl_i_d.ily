\version "2.18.2"

ViolinI_d = \relative d'' {
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
    d2.( \pp
    \barNumberCheck 30
    e2.
    f2.
    g2.
    a2.
    b2.
    \barNumberCheck 35
    a4) a, g \tr
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