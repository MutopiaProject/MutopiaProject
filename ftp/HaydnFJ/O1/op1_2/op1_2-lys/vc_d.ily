\version "2.18.2"

Cello_d = \relative es {
  \global_d
  \clef bass
  \repeat volta 2 {
    es4 \f g b
    es,4 r b
    es4 r g
    f4 b, es
    \barNumberCheck 5
    r4 g g
    r4 as as
    r4 b b,
    es4 b es,
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
    es4 r b' \pp
    es,4 r b
    es4 r b
    \barNumberCheck 20
    es4 r b'
    es,4 r g
    f4 b, es
    r4 g \f g
    r as as
    \barNumberCheck 25
    r4 b b,
    es4 b es,
  }
  \break
  \repeat volta 2 {
    \tempoTrio
    c''4 \p c c
    c4 c c
    h4 h h
    \barNumberCheck 30
    c4 c, r
    R2.
    f2( \f \> es4) \!
    R2.
    f2( \f \> es4) \!
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
    b4 \p r r
    b4 r r
    b4 r r
    b4 r r
    \barNumberCheck 45
    r4 b b
    es4 g8 f es d
    c4 \p c' c
    c4 c c
    h4 h h
    \barNumberCheck 50
    c4 c, r
    R2.
    f2( \f \> es4) \!
    R2.
    f2( \f \> es4) \!
    \barNumberCheck 55
    r4 g \f g,
    c4 g c, \mdc
  }
}