\version "2.18.2"

Viola_e = \relative b' {
  \global_e
  \clef alto
  \repeat volta 2 {
    b8 \p b b b
    b8 b b b
    b4 r
    b4 r
    \barNumberCheck 5
    b4 r
    f8-. b-. r4
    f4. \f \tuplet 3/2 { g16( f es) }
    d4 r
    a'4. \tuplet 3/2 { b16( a g) }
    \barNumberCheck 10
    f4 r
    g4. \tuplet 3/2 { a16( g f) }
    e4 r
    f8 a g b
    a8 c b d
    \barNumberCheck 15
    a8 c b d
    a8 b c c,
    f4 r
    a4. \p \tuplet 3/2 { d16( c b) }
    a4 r
    \barNumberCheck 20
    R2
    R2
    a4. \tuplet 3/2 { d16( c b) }
    a4 r
    b8-. \f f-. g-. c,-.
    \barNumberCheck 25
    c8-. d-. b-. c-.
    f4 f,
    f4 r
  }
  \repeat volta 2 {
    a'4. \tuplet 3/2 { b16( a g)) }
    f8-. g-. a-. b-.
    \barNumberCheck 30
    c8( a) c( a)
    c8( a) r4
    b4. \tuplet 3/2 { c16( b a) }
    b8-. a-. b-. c-.
    d8( b) d( b)
    \barNumberCheck 35
    d8( b) r4
    c4. \tuplet 3/2 { d16( c b) }
    a4 r
    f4. \tuplet 3/2 { g16( f es) }
    d4 r
    \barNumberCheck 40
    f8 f f f
    f,4 r
    b'8 \p b b b
    b8 b b b
    b4 r
    \barNumberCheck 45
    b4 r
    b4 r
    f8-. b-. r4
    es4. \f \tuplet 3/2 { f16( es d) }
    es4 r
    \barNumberCheck 50
    d4. \tuplet 3/2 { es16( d c) }
    b4 r
    c4. \tuplet 3/2 { d16( c b) }
    a4 r
    b,8 d c es
    \barNumberCheck 55
    d8 f es g
    d8 f es g
    d8 es f f,
    b4 r
    d4. \p \tuplet 3/2 { g16( f es) }
    \barNumberCheck 60
    d4 r
    R2
    r2
    d4. \tuplet 3/2 { g16( f es) }
    d4 r
    \barNumberCheck 65
    es'8-. \f b-. c-. f,-.
    f8-. g-. es-. f-.
    b,4 b
    b4 r \fine
  }
}