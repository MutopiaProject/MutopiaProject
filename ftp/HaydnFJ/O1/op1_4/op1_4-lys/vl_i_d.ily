\version "2.18.2"

ViolinI_d = \relative g' {
  \global_d
  \repeat volta 2 {
    g4. \f a8 h4
    \acc h8 c4 a a
    \acc a8 h4 h cis8.( \tr h32 cis)
    d2 r4
    \barNumberCheck 5
    e4 e fis8.( \tr e32 fis)
    g4.. a16 h8. c16
    d4 c h8.( \tr a32 h) \noBreak
    a4 r r
  }
  \repeat volta 2 {
    a4.( \p h8 c4)
    \barNumberCheck 10
    h8.( \tr a32 h) d4 r
    fis,4.( g8 a4)
    \app a16 g8( fis16 e) d4 r
    a4.( h8 c4)
    h8.( \tr a32 h) d4 r
    \barNumberCheck 15
    d4. c8 h4
    h4 \tr a r
    g4. \f a8 h4
    \acc h8 c4 a a
    \acc a8 h4 h cis8.( \tr h32 cis)
    \barNumberCheck 20
    d2 r4
    e4 e fis8.( \tr e32 fis)
    g4.. a16 h8. c16
    d4 d d
    c4. a8 h4
    \barNumberCheck 25
    \acc h8 a4 g fis
    g2 r4
  }\break
  \repeat volta 2 {
    \key g \minor
    \tempoTrio
    g,4 \p d'8( c b a)
    b4. a8( g fis)
    g4 d'8( c b a)
    \barNumberCheck 30
    b4. a8( g fis)
    g4 b d
    g4 d c
    \app c8 b2 a4
    g4 es' d
    \barNumberCheck 35
    c4.( \> a8) b4 \!
    c4.( \> a8) b4 \!
    \tuplet 3/2 { g'8( -\omit\p f es) } d4 c \tr
    b2 r4
  } \break
  \repeat volta 2 {
    b4 f'8( es d c)
    \barNumberCheck 40
    d4. c8( b a)
    b4 h2 \rfz
    c4 g'8( f es d)
    es4. d8( c h)
    c4 cis2 \rfz
    \barNumberCheck 45
    d4 r es~
    es4 d2~
    d4 c2~
    c4 b8( a g f)
    es8( d c b a g)
    \barNumberCheck 50
    d'4 r r
    g4 d'8( c b a)
    b4. a8( g fis)
    g4 d'8( c b a)
    b4 g'8( f es d)
    \barNumberCheck 55
    es4 c'8( b a g)
    \app g4 fis2 g4
    \tuplet 3/2 { es8( d c) } b4 a \tr
    g2 r4 \mdc
  }
}
