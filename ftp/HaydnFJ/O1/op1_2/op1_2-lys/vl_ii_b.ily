\version "2.18.2"
\language "deutsch"

ViolinII_b = \relative g' {
  \global_b
  \repeat volta 2 {
    r4 g \p es
    f2 as4
    b2 d,4
    es2 g4
    \barNumberCheck 5
    as4 g f
    b4 as g
    f2 \f g4
    f2 g4
    es4 c'8.[ b16 as8. g16]
    \barNumberCheck 10
    \appoggiatura g4 f2 r4
  }
  \repeat volta 2 {
    f4( b) d-.
    d4( es8.[) d16 c8. b16]
    a4 a a
    a4( b8.[) a16 g8. f16]
    \barNumberCheck 15
    es4 es \tuplet 3/2 { g8( f es) }
    es8( d) d4. b8
    \acciaccatura f'8 \tuplet 3/2 { es8( d c) } b4 a \tr
    b2 r4
    b4 \p b b
    \barNumberCheck 20
    c4 c c
    f4 f f8( as)
    as8( g) g2
    f'4 f f8( g)
    f8( es) es4 es, \f
    \barNumberCheck 25
    es2 b'4
    b2 r4
    g4 es d
    es2 r4
  }
  \break
  \repeat volta 2 {
    \key b \major
    \tempoTrio
    b'8 \f b b b b \p b
    \barNumberCheck 30
    \rt 6 b8
    \rt 6 b8
    \rt 6 b8
    b8 \f b b b b\p b
    \rt 6 b8
    \barNumberCheck 35
    \rt 6 b8
    \rt 6 b8
    \rt 6 b8
    b8 \< b b b b\f b
    b8 b b b a a
    \barNumberCheck 40
  }
  \alternative {
    { b2 r4 }
    { b2 r4 }
  }
  \breakVoice
  \repeat volta 2 {
    <a, f'>2 \f a'4 \p
    \acciaccatura c8 b4( a g)
    \appoggiatura g4 f4. g8 g8.( \tr f32 g)
    \barNumberCheck 45
    a4 r r
    a,2 \f \tuplet 3/2 { \once \override DynamicText.extra-offset = #'(-0.5 . -0.2) a'8( \p b c) }
    b,2 \f \tuplet 3/2 { \once \override DynamicText.extra-offset = #'(-0.5 . -0.2) b'8( \p c d) }
    d4 r \tuplet 3/2 { d8( c b) }
    a4 r r
    \barNumberCheck 50
    b8 \f b b b b\p b
    \rt 6 b8
    \rt 6 b8
    \rt 6 b8
    \rt 6 b8 \fp
    \barNumberCheck 55
    \rt 6 b8
    \rt 6 b8
    b8 \< b b b b\f b
    b8 b b b a a
  }
  \alternative {
    { b2 r4 }
    { b2 r4 \mdc }
  } \bar "|."
}