\version "2.18.2"

Viola_d = \relative es' {
  \global_d
  \clef alto
  \repeat volta 2 {
    es4 \f g b
    es,4 g, f
    es4 r g'
    f4 b, es
    \barNumberCheck 5
    r4 g g
    r4 as as
    r4  g, f
    es2 r4
  }
  \repeat volta 2 {
    r4 b'' b
    \barNumberCheck 10
    as4 r8 as g f
    e4 r e
    f4 as c
    f,4 r r
    R2.
    \barNumberCheck 15
    R2.
    r4 b8 as g f
    es4 r r
    b2.~ \pp
    b2.~
    \barNumberCheck 20
    b2.~
    b4 r g'
    f4 b, es
    r4 g \f g
    r4 as as
    \barNumberCheck 25
    r4 g, f
    es2 r4
  }
  \break
  \repeat volta 2 {
    \tempoTrio
    c''4 \p c c
    c4 c c
    h4 h h
    \barNumberCheck 30
    c4 c, r
    f4-. \p f-. f-.
    d2( \f \> es4) \!
    f4-. \p f-. f-.
    d2( \f \> es4) \!
    \barNumberCheck 35
    r4 g \f g,
    c4 g c
  }
  \repeat volta 2 {
    r4 r g( \f
    as4) r r
    r4 r a( \f
    \barNumberCheck 40
    b4) r r
    d'2.( \p
    es2.
    as,!2.
    g2.)
    \barNumberCheck 45
    f8.( as16) es4 d
    es2 r4
    c4 \p c' c
    c4 c c
    h4 h h
    \barNumberCheck 50
    c4 c, r
    f4-. \p f-. f-.
    d2( \f \> es4) \!
    f4-. \p f-. f-.
    d2( \f \> es4) \!
    \barNumberCheck 55
    r4 g \f g,
    c4 g c,
  }
}