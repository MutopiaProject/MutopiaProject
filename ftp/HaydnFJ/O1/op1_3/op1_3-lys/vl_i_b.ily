\version "2.18.2"

ViolinI_b = \relative fis' {
  \global_b
  \compressFullBarRests
  \repeat volta 2 {
    <fis d'>2 \f \tuplet 3/2 { e'8( fis g) }
    fis8( \> e d cis h a) \!
    \app h8 a4 \p \app a8 g4 \app g8 fis4
    e4.( fis16 g) fis4
    \barNumberCheck 5
    <fis d'>2 \f \tuplet 3/2 { g'8( a h) }
    h8( a) g( fis) e( d)
    \tuplet 3/2 { cis8( d e) } g,4 fis \tr
    \app fis4 e2 r4
  }
  \repeat volta 2 {
    R2.
    \barNumberCheck 10
    R2.
    g'2 \p \tuplet 3/2 { h8( a g) }
    \app g4 fis2 \tuplet 3/2 { a8( g fis) }
    e8 h'( a g fis e)
    \app d4 cis2 r4
    \barNumberCheck 15
    <fis, d'>2 \f \tuplet 3/2 { e'8( fis g) }
    g8( fis) e( d) cis( d)
    h'2 \tuplet 3/2 { d8( cis h) }
    h8( a) g( fis) e( d)
    a4 fis' e \tr
    \barNumberCheck 20
    d2 r4
  }
  \break
  \repeat volta 2 {
    \key g \major
    \tempoTrio
    g,,4-. \p d''( h)
    d,4-. c'( a)
    e4-. g'8( e) d( c)
    \app h4 a2.
    \barNumberCheck 25
    c'2. \f
    h8( g) d( h) g( h)
    d,4 h' a \tr
    g2 r4
  }
  \repeat volta 2 {
    d''4( \p d,) d-.
    \barNumberCheck 30
    c'4( d,) d-.
    b'4( d,) d-.
    a'4( d,) d-.
    g8( d c) b-. a-. g-.
    es'( d c) es-. d-. b
    \barNumberCheck 35
    \stemDown c8( b a) c-. b-. g \stemNeutral
    d4 r r
    g,4-. d''( h)
    d,4-. c'( a)
    e4-. g'8( e) d( c)
    \barNumberCheck 40
    \app h4 a2.
    c'2. \f
    h8( g) d( h) g( h)
    d,4 h' a \tr
    g2 r4 \mdc
  }
}