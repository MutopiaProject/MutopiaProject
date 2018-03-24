\version "2.18.2"
\language "deutsch"

ViolinII_b = \relative d'' {
  \global_b
  \repeat volta 2 {
    d2 \f \tuplet 3/2 { cis8( d e) }
    d4 r r
    \app g,8 fis4 \p \app fis8 e4 \app e8 d4
    cis4.( d16 e) d4
    \barNumberCheck 5
    d'2. \f
    d,4 r r
    g8( e) cis4 d
    \app d4 cis2 r4
  }
  \repeat volta 2 {
    a'2 \p \tuplet 3/2 { cis8( h a) }
    \barNumberCheck 10
    d2.~
    d4 cis cis
    d2 \tuplet 3/2 { fis,8( e d) }
    h'2 a8( g)
    \app fis4 e2 r4
    \barNumberCheck 15
    d'2 \f \tuplet 3/2 { cis8( d e) }
    d4 r r
    d2.
    d,4 r r
    a'4 d cis \tr
    \barNumberCheck 20
    d2 r4
  }
  \break
  \repeat volta 2 {
    \key g \major
    \tempoTrio
    R2. * 4
    \barNumberCheck 25
    d,8( \f fis a) d-. fis-. a-.
    g4 r r
    d,4 g fis \tr
    g2 r4
  }
  \repeat volta 2 {
    R2.
    \barNumberCheck 30
    d8( \p fis a) d-. fis-. a-.
    g4 r r
    d,8( fis a) d-. fis-. a-.
    g4 g, g
    g2.~
    \barNumberCheck 35
    g4 fis g
    d4 r r
    R2. * 4
    d8( \f fis a) d-. fis-. a-.
    g4 r r
    d,4 g fis \tr
    g2 r4 \mdc
  }
}