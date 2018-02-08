\version "2.18.2"

ViolinI_d = \relative f'' {
  \global_d
  \repeat volta 2 {
    f4( \f
    b4) b-. b-.
    b8( a) a4-. b-.
    c4.( b8) a4-.
    b4-. f-. f-. \p
    \barNumberCheck 5
    f8( es) es( d) d( c)
    f8( es) es( d) d( c)
    d8.( \tr c32 d) es4 es
    d4 r f( \f
    c'4) c-. c-.
    \barNumberCheck 10
    c8( b) b4-. a-.
    a8( g) b( g) f( e)
    f4 r
  } \break
  \repeat volta 2 {
    f,4( \p
    f'4-.) f( es)
    des4-. des( c)
    \barNumberCheck 15
    b4-. b( a)
    b4-. b( c)
    des4 \tr c f8.( c16)
    des4 \tr c r
    r4 r b( \f
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
    { \set Timing.measureLength = #(ly:make-moment 2/4) b2 }
    { \set Timing.measureLength = #(ly:make-moment 3/4) b2 r4 }
  } \bar "|."
  \break
  \repeat volta 2 {
    \tempoTrio
    f'4 \f es8( \p d c b)
    g'4 \f f8( \p es d c)
    \barNumberCheck 30
    es4 \f d8( \p c b a)
    b4 f r
    c'4-. c( cis)
    d2 \tuplet 3/2 { f8( d b) }
    a4 r g \tr
    \barNumberCheck 35
    f2 r4
  }
  \repeat volta 2 {
    f'4-. f( fis)
    g4-. b8( g) es( d)
    c4 g'8( es) c( b)
    \appoggiatura b4 a2 r4
    \barNumberCheck 40
    f'4 \f es8( \p d c b)
    g'4 \f f8( \p es d c)
    d4 b a\tr
  }
  \alternative {
    { b2 r4 }
    { b2 \mdc \bar "|." }
  }
}