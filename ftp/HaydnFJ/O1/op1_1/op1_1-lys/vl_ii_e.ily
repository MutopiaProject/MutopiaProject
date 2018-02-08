\version "2.18.2"

ViolinII_e = \relative d'' {
  \global_e
  \repeat volta 2 {
    d4. \p \tuplet 3/2 { es16( d c) }
    b4. \tuplet 3/2 { g16( f es) }
    d8-. c-. d-. es-.
    f8-. g-. f-. es
    \barNumberCheck 5
    d8-. f-. es-. d-.
    c8-. b-. r4
    d'4. \f \tuplet 3/2 { es16( d c) }
    b4 r
    c4. \tuplet 3/2 { d16( c b) }
    \barNumberCheck 10
    a4 r
    b4. \tuplet 3/2 { c16( b a) }
    g4 r
    f8 r f r
    f8 r f r
    \barNumberCheck 15
    f8 r f r
    f8 f'4 e8
    f4 r
    c4. \p \tuplet 3/2 { f16( e d) }
    c4 r
    \barNumberCheck 20
    R2
    R2
    c4. \tuplet 3/2 { f16( e d) }
    c4 r
    d8-. \f a-. b-. g-.
    \barNumberCheck 25
    a8 f4 e8
    f4 <f a>
    <f a>4 r
  }
  \repeat volta 2 {
    c'4. \tuplet 3/2 { d16( c b)) }
    a8-. b-. c-. d-.
    \barNumberCheck 30
    es8( c) es( c)
    es8( c) r4
    d4. \tuplet 3/2 { es16( d c) }
    b8-. c-. d-. es-.
    f8( d) f( d)
    \barNumberCheck 35
    f8( d) r4
    es4. \tuplet 3/2 { f16( es d) }
    c4 r
    d4. \tuplet 3/2 { es16( d c) }
    b4 r
    \barNumberCheck 40
    f16( g a b) c8 b
    a4 r
    d4. \p \tuplet 3/2 { es16( d c) }
    b4. \tuplet 3/2 { g16( f es) }
    d8-. c-. d-. es-.
    \barNumberCheck 45
    f8-. g-. f-. es
    d8-. f-. es-. d-.
    c8-. b-. r4
    g''4. \f\tuplet 3/2 { as16( g f) }
    g4 r
    \barNumberCheck 50
    f4. \tuplet 3/2 { g16( f es) }
    d4 r
    es4. \tuplet 3/2 { f16( es d) }
    c4 r
    b,8 r b r
    \barNumberCheck 55
    b8 r b r
    b8 r b r
    b8 b'4 a8
    b4 r
    f4. \p \tuplet 3/2 { b16( a g) }
    \barNumberCheck 60
    f4 r
    R2
    R2
    f4. \tuplet 3/2 { b16( a g) }
    f4 r
    \barNumberCheck 65
    g'8-. \f d-. es-. c-.
    d8 b4 a8
    b4 <d, b'>
    <d b'>4 r \fine
  }
}