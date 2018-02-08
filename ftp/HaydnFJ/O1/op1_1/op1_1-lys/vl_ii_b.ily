\version "2.18.2"

ViolinII_b = \relative d' {
  \global_b
  \repeat volta 2 {
    d2 \f g4
    g8( f) f( es) es( d)
    d4-.( d-. -.d)
    es4-.( es-. g-.)
    \barNumberCheck 5
    f4-.( f-.) \tuplet 3/2 { g8( es c) }
    d4 r r
    d2( c4)
    b4 r r
    d2( c4)
    \barNumberCheck 10
    b4 r r
  }
  \repeat volta 2 {
    a'4-.( a-. a-.)
    b4 r r
    g4-.( g-. g-.)
    f4 r r
    \barNumberCheck 15
    f4 a f
    c'4 b a
    b4 c c,
    f4 r r
    f'4-. f-. f-.
    \barNumberCheck 20
    fis8( g f es d c)
    es4-. es-. es-.
    e8( f es d c b)
    a4 c b
    \appoggiatura b4 a2 r4
    \barNumberCheck 25
    d,2 g4
    g8( f) f( es) es( d)
    d4-.( d-. -.d)
    es4-.( es-. g-.)
    f4-.( f-.) \tuplet 3/2 { g8( es c) }
    \barNumberCheck 30
    d4 r r
    d2( c4)
    b4 r r
    d2( c4)
    b4 r r
  }
  \break
  \repeat volta 2 {
    \key es \major
    \barNumberCheck 35
    \tempoTrio
    R2.
    r4 r g''( \p
    es4-.) b-. g-.
    b,4-. r r
    r4 r f''(
    \barNumberCheck 40
    d4-.) as-. f-.
    es4-. r r
    r4 r b'(
    as4-.) f-. r
    r4 r g(
    \barNumberCheck 45
    f-.) d-. r
    r4 r b'-.
    b,4-. f'( es)
    d4 r r
  }
  \repeat volta 2 {
    R2.
    \barNumberCheck 50
    r4 r b'(
    g4-.) e-. r
    r4 r as(
    f4-.) d-. r
    r4 r g(
    \barNumberCheck 55
    as4-.) f-. r
    r4 r d'(
    es4-.) c-. r
    r4 r g'(
    es4-.) b-. g-.
    \barNumberCheck 60
    es4-. r r
    R2.
    R2. \mdc
  }
}