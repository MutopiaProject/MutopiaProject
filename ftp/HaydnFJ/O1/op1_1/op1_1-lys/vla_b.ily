\version "2.18.2"

Viola_b = \relative b {
  \global_b
  \clef alto
  \repeat volta 2 {
    b4-.( \f b-. b-.)
    b4-.( b-. b-.)
    b4-.( b-. b-.)
    b4-.( b-. b-.)
    \barNumberCheck 5
    b4-.( b-. b-.)
    b4 r r
    f'4-.( f-. f-.)
    b,4 r r
    f4-.( f-. f-.)
    \barNumberCheck 10
    b4 r r
  }
  \repeat volta 2 {
    f'4-.( f-. f-.)
    g4 r r
    <c, e>4-.( <c e>-. <c e>-.)
    <c f>4 r r
    \barNumberCheck 15
    R2.
    R2.
    R2.
    r4 f( es)
    d4 r r
    \barNumberCheck 20
    es'4-. es-. es-.
    c8( b) a( g) f( es)
    d4 r r
    r4 f f
    f4~ f8 es-. d-. c-.
    \barNumberCheck 25
    b4-.( b-. b-.)
    b4-.( b-. b-.)
    b4-.( b-. b-.)
    b4-.( b-. b-.)
    b4-.( b-. b-.)
    \barNumberCheck 30
    b4 r r
    f'4-.( f-. f-.)
    b,4 r r
    f4-.( f-. f-.)
    b4 r r
  }
  \break
  \repeat volta 2 {
    \key es \major
    \barNumberCheck 35
    \tempoTrio
    es2( \p f4)
    g4 r r
    R2.
    f2( g4)
    as4 r r
    \barNumberCheck 40
    R2.
    g2( as4)
    b4 r r
    r4 r c(
    b4-.) g-. r
    \barNumberCheck 45
    r4 r as(
    g4-.) es-. b'-.
    b,4-. b-.( b-.)
    b4-. r r
  }
  \repeat volta 2 {
    b'2( c4)
    \barNumberCheck 50
    des4 r r
    r4 r e,(
    f4-.) as-. r
    r4 r d,(
    es4-.) g-. r
    \barNumberCheck 55
    r4 r d(
    es4-.) c-. r
    r4 r as'(
    b4-.) g-. r
    R2.
    \barNumberCheck 60
    r4 r b(
    c,4) as'8( f) es-. d-.
    es4 r r \mdc
  }
}