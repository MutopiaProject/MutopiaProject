\version "2.18.2"

Cello_b = \relative b, {
  \global_b
  \clef bass
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
    e4-.( e-. e-.)
    f4 r r
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
  \key es \major
  \repeat volta 2 {
    \barNumberCheck 35
    \tempoTrio
    es2( \p d4)
    es4 r r
    R2.
    d2( es4)
    f4 r r
    \barNumberCheck 40
    R2.
    es2( f4)
    g4 r r
    r4 r as(
    g4-.) es-. r
    \barNumberCheck 45
    r4 r f(
    es4-.) g-. r
    r4 d( es)
    b'4 b, r
  }
  \repeat volta 2 {
    g'2( f4)
    \barNumberCheck 50
    e4 r r
    r4 r b(
    as4-.) f-. r
    r4 r as(
    g4-.) es-. r
    \barNumberCheck 55
    r4 r b'(
    c4-.) as-. r
    r4 r f'(
    g4-.) es-. r
    R2.
    \barNumberCheck 60
    r4 r g,(
    as4) f b
    es4 es, r \mdc
  }
}