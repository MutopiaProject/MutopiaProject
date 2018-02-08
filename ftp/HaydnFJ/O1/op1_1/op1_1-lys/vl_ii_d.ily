\version "2.18.2"

ViolinII_d = \relative f' {
  \global_d
  \repeat volta 2 {
    f4( \f
    b4) b-. b-.
    b8( a) a4-. b-.
    c4.( b8) a4-.
    b4-. f-. d'-. \p
    \barNumberCheck 5
    d8( c) c( b) b( a)
    d8( c) c( b) b( a)
    b8.( \tr a32 b) c4 c
    b4 r f( \f
    c'4) c-. c-.
    \barNumberCheck 10
    c8( b) b4-. a-.
    a8( g) b( g) f( e)
    f4 r
  } \break
  \repeat volta 2 {
    r4
    r4 r f( \p
    f'4-.) f( es)
    \barNumberCheck 15
    des4-. des( c)
    b4-. f-. f-.
    b4 \tr a a
    b4 \tr a r
    r4 r b,( \f
    \barNumberCheck 20
    es4) es-. es-.
    d4 r b(
    g'4) g-. g-.
    f4 b8( f) g( es)
    f4 b8( f) es( d)
    \barNumberCheck 25
    c4 b a
  }
  \alternative {
    { \set Timing.measureLength = #(ly:make-moment 2/4) b4 r }
    { \set Timing.measureLength = #(ly:make-moment 3/4) b4 r r }
  } \bar "|."
  \break
  \repeat volta 2 {
    \tempoTrio
    d4 \f d\p d
    es4 \f es\p es
    \barNumberCheck 30
    c4 \f es\p es
    d4 r r
    f4 f f
    f4 f f
    f4 f e
    \barNumberCheck 35
    f4 r r
  }
  \repeat volta 2 {
    b4 b b
    b4 r r
    g4 g es8( d)
    \appoggiatura d4 c2 r4
    \barNumberCheck 40
    d4 \f r r
    b4 \f r r
    b'4 \p d, c
  }
  \alternative {
    { b4 r r }
    { b4 r \mdc \bar "|." }
  }
}