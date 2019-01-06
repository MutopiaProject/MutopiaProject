\version "2.18.2"
\language "deutsch"

ViolinII_b = \relative h' {
  \global_b
  \repeat volta 2 {
    h2 \f \tuplet 3/2 { c8( h a) }
    h2.
    c2 \tuplet 3/2 { e8( d c) }
    h4 r r
    \barNumberCheck 5
    \tuplet 3/2 { a8( \p h a) } c4 r
    \tuplet 3/2 { g8( a g) } h4 r
    c,4 h a \tr
  }
  \alternative {
    { g4 r r }
    { g4 r r }
  }
  \repeat volta 2 {
    \barNumberCheck 10
    d'2.~ \f
    d2 a4
    h4( cis) d
    cis2 r4
    \tuplet 3/2 { a'8( \p h a) } d4 r
    \barNumberCheck 15
    \tuplet 3/2 { cis8( d e) } g,4 r
    \tuplet 3/2 { fis8( g fis) } d'4 r
    \tuplet 3/2 { cis8( d e) } g,4 r
    \tuplet 3/2 { fis8( g a) } d,4 cis \tr
    d2 r4
    \barNumberCheck 20
    g'2 \f \tuplet 3/2 { a8( g f) }
    f4 e8( d c h)
    a8( h c d dis e)
    \app g,4 fis2 r4
    h2 \tuplet 3/2 { c8( h a) }
    \barNumberCheck 25
    h2.
    c2 \tuplet 3/2 { e8( d c) }
    h4 r r
    \tuplet 3/2 { a8( \p h a) } c4 r
    \tuplet 3/2 { g8( a g) } h4 r
    \barNumberCheck 30
    c,4 \f h a \tr
  }
  \alternative {
    { h2 r4 }
    { h2 r4 }
  }
  \break
  \repeat volta 2 {
    \key g \minor
    \tempoTrio
    g'8( \f fis g a b c)
    d4 r r
    \barNumberCheck 35
    g,8( fis g a b c)
    d4 r r
    g,8( fis g a b c)
    d4-. d,-. r
    R2.
    \barNumberCheck 40
    a'8( \pp c es ) c-. a-. c-.
    b4 r r
    a8( \pp c es ) c-. a-. c-.
    b4 es, f
    b,4 r r
  }
  \repeat volta 2 {
    \barNumberCheck 45
    d'2. \p
    c2.
    b2.
    b4 \tr a r
    g8( \f fis g a b c)
    \barNumberCheck 50
    d4 r r
    g,8( fis g a b c)
    d4 r r
    g,8( fis g a b c)
    d4-. d,-. r
    \barNumberCheck 55
    es'4 \p d8( c b a)
    g8( d' c b a b)
    es4 d8( c b a)
    g8( d' c b a b)
    g4 g fis
    \barNumberCheck 60
    g r r \mdc
  }
}