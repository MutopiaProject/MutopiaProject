\version "2.18.2"

ViolinI_b = \relative b' {
  \global_b
  \compressFullBarRests
  \repeat volta 2 {
    b4( \p es) g-.
    g4( as8.[) g16 f8. es16]
    d4( f ) b-.
    as4( g8.[) f16 es8. d16]
    \barNumberCheck 5
    c4( c') c-.
    \appoggiatura es,4 d2 \acciaccatura f8 \tuplet 3/2 { es( d c) }
    b4 \f \tuplet 3/2 { as'8( f as) } g4
    b,4 \tuplet 3/2 { as'8( f as) } g4
    b4 as8.[ g16 f8. es16]
    \barNumberCheck 10
    \appoggiatura es4 d2 r4
  }
  \breakVoice
  \repeat volta 2 {
    R2.
    R2.
    c'4 c c
    c4( d8.[) c16 b8. a16]
    \barNumberCheck 15
    g4 g \tuplet 3/2 { b8( a g) }
    g8( f) f4. b8
    \acciaccatura a8 \tuplet 3/2 { g8( f es) } d4 c \tr
    b2 r4
    R2. * 4
    as'4 \p as as8( b)
    as( g) g4 \tuplet 3/2 { c8( \f b as) }
    \barNumberCheck 25
    b4 es \tuplet 3/2 { f,8( g as) }
    as8( g) f( es) d( c)
    b4 g f \tr
    es2 r4
  }
  \break
  \repeat volta 2 {
    \key b \major
    \tempoTrio
    <d b'>2 \f b''4 \p
    \barNumberCheck 30
    \acciaccatura a8 g4( f es)
    \appoggiatura es4 d4. es8 es8.( \tr d32 es)
    f4 a16[( b8.) a16( b8.])
    <d,, b'>2 \f b''4 \p
    \acciaccatura a8 g4( f es)
    \barNumberCheck 35
    \appoggiatura es4 d4. es8 es8.( \tr d32 es)
    f4 r b
    fis8( g) g4.( a8)
    b8( \< f) d'( a) b( \f f)
    \acciaccatura f8 es4 d c \tr
    \barNumberCheck 40
  }
  \alternative {
    { b2 r4 }
    { b2 r4 }
  }
  \repeat volta 2 {
    <a, f'>2 \f f''4 \p
    \acciaccatura e8 d4( c b)
    \appoggiatura b4 a4. b8 b8.( \tr a32 b)
    \barNumberCheck 45
    c4 e16[( f8.) e16( f8.])
    f,2 \f \tuplet 3/2 { \once \override DynamicText.extra-offset = #'(-0.5 . -0.2) c'8( \p d es) }
    d,2 \f \tuplet 3/2 { \once \override DynamicText.extra-offset = #'(-0.5 . -0.2) d'8( \p es f) }
    f4 \tuplet 3/2 { b8( a g) } \tuplet 3/2 { f( es d) }
    c4 r r
    \barNumberCheck 50
    <d, b'>2 \f b''4 \p
    \acciaccatura a8 g4( f es)
    \appoggiatura es4 d4. es8 es8.( \tr d32 es)
    f4 a16[( b8.) a16( b8.])
    <d,, b'>4 \fp as''2
    \barNumberCheck 55
    as8( g) g2
    fis8( g) g4.( a8)
    b8( \< f) d'( a) b( \f f)
    \acciaccatura f8 es4 d c \tr
  }
  \alternative {
    { b2 r4 }
    { b2 r4 \mdc }
  } \bar "|."
}