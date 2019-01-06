\version "2.18.2"

Cello_b = \relative g, {
  \global_b
  \clef bass
  \repeat volta 2 {
    g4 h d
    g4 r r
    g4 g g
    g8 g, h d g4
    \barNumberCheck 5
    r4 d' \p d,
    r4 g g,
    c4 d d
  }
  \alternative {
    { g4 d g,}
    { g'2 r4 }
  }
  \repeat volta 2 {
    \barNumberCheck 10
    g4 \f g g
    fis4 fis fis
    e2 d4
    a'4 e a,
    fis'2 \p d4
    \barNumberCheck 15
    a'4 cis a
    d4 fis, d
    a'4 cis a
    d4 a a,
    d4 d' \< c!
    \barNumberCheck 20
    h4 \f g h
    c4 c, r
    c'4 a8( h c cis)
    d4 a d,
    g,4 h d
    \barNumberCheck 25
    g4 r r
    g4 g g
    g8 g, h d g4
    r4 d' \p d,
    r4 g g,
    \barNumberCheck 30
    c4 \f d d
  }
  \alternative {
    { g4 d g,}
    { g'2 r4 }
  }
  \break
  \repeat volta 2 {
    \key g \minor
    \tempoTrio
    g8( \f fis g a b c)
    d4 r r
    \barNumberCheck 35
    g,8( fis g a b c)
    d4 r r
    g,8( fis g a b c)
    d4-. d,-. r
    b8( \pp a b c d es!)
    \barNumberCheck 40
    f4 r r
    b,8( a b c d es)
    f4 r r
    b4 es, f
    b,4 d8( c b a)
  }
  \repeat volta 2 {
    \barNumberCheck 45
    b8( \p a b c d es)
    f8( e fis g a fis)
    g8( fis g a b c)
    d4 d, r
    g8( \f fis g a b c)
    \barNumberCheck 50
    d4 r r
    g,8( fis g a b c)
    d4 r r
    g,8( fis g a b c)
    d4-. d,-. r
    \barNumberCheck 55
    c'2. \p
    b4 r r
    c2.
    b4 r r
    c4 d d,
    \barNumberCheck 60
    g g, r \mdc
  }
}