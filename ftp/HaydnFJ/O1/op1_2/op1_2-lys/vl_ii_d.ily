\version "2.18.2"

ViolinII_d = \relative es' {
  \global_d
  \repeat volta 2 {
    es2 \f \tuplet 3/2 { as8( f d) }
    es4 r r
    r4 r b
    c4( d es)
    \barNumberCheck 5
    r4 es es
    r4 es es
    r4 es d
    es2 r4
  }
  \repeat volta 2 {
    r4 des' des
    \barNumberCheck 10
    c4 r8 c b as
    g4 r c,
    f4 r r
    r4 f a
    b4 b, d
    \barNumberCheck 15
    es4 as, a
    b4 b'8 as! g f
    es4 \pp g \tuplet 3/2 { as8( f d) }
    es4 b as
    g4 g' \tuplet 3/2 { as8( f d) }
    \barNumberCheck 20
    es4 b as
    g4 r b
    c4( d es)
    r4 es \f es
    r4 es es
    \barNumberCheck 25
    r4 es d
    es2 r4
  }
  \break
  \repeat volta 2 {
    \tempoTrio
    es4 \p es es
    d4 d d
    d4 d d
    \barNumberCheck 30
    c4 r r
    d'4-. \p d-. d-.
    h2( \f \> g4) \!
    d'4-. \p d-. d-.
    h2( \f \> g4) \!
    \barNumberCheck 35
    r4 es \f d
    c2 r4
  }
  \repeat volta 2 {
    es8.( \f g16) es4 g,(
    as4) c'-.( \p c-.)
    f,8.( \f a16) f4 a,(
    \barNumberCheck 40
    b4) d'-.( \p d-.)
    r4 as!-.( as-.)
    r4 g-.( g-.)
    r4 d-.( d-.)
    r4 es-.( es-.)
    \barNumberCheck 45
    r4 es d
    es2 r4
    es4 \p es es
    d4 d d
    d4 d d
    \barNumberCheck 50
    c4 r r
    d'4-. \p d-. d-.
    h2( \f \> g4) \!
    d'4-. \p d-. d-.
    h2( \f \> g4) \!
    \barNumberCheck 55
    r4 es \f d
    c2 r4
  }
}