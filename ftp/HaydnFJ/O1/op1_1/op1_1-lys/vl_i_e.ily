\version "2.18.2"

ViolinI_e = \relative f'' {
  \global_e
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \repeat volta 2{
    f4. \p \tuplet 3/2 { g16( f es) }
    d4. \tuplet 3/2 { es16( d c) }
    b8-. a-. b-. c-.
    d8-. es-. d-. c-.
    \barNumberCheck 5
    b8-. a-. g-. f-.
    es8 \prall d-. r4
    R2
    b'16( \f d) f( b) d( b) a( b)
    c4 r
    \barNumberCheck 10
    a,16( c) f( a) c( a) g( a)
    b4 r
    g,16( b) e( g) b( g) f( g)
    a16-. f( e f) b-. f( e f)
    c'16-. f,( e f) d-. f( e f)
    \barNumberCheck 15
    c16-. f( e f) d-. f( e f)
    c16( b' a g) g4 \tr
    f4 r
    R2
    r8 f \p f f
    \barNumberCheck 20
    \tuplet 3/2 { e16( f g) } f8 g a
    \tuplet 3/2 { g16( a b) } a8 r4
    R2
    r8 c, \f c c
    \tuplet 3/2 { d16[( e f]) } a,8 \tuplet 3/2 { b16[( c d]) } g,8
    \barNumberCheck 25
    \tuplet 3/2 { a16[( b c]) } f,8 g4 \tr
    f16( c) a( c) f( c) a( c)
    f4 r
  }
  \repeat volta 2 {
    R2
    R2
    \barNumberCheck 30
    a'2
    a16( b) a( b) c( a) f( es)
    d4 r
    R2
    b'2
    \barNumberCheck 35
    b16( a) b( c) d-. f,( es d)
    es4 r
    f,16-. es'( d es) c'-. es,( d c)
    d4 r
    f,16-. d'( c d) b'-. d,( c b)
    \barNumberCheck 40
    a16( b c d) es( c) d( b)
    c4 r
    f4. \p \tuplet 3/2 { g16( f es) }
    d4. \tuplet 3/2 { es16( d c) }
    b8-. a-. b-. c-.
    \barNumberCheck 45
    d8-. es-. d-. c
    b8-. a-. g-. f-.
    es8-. \prall d-. r4
    R2
    es16-. \f g( b es) g-. es( d es)
    \barNumberCheck 50
    f4 r
    b,16( d f b) d( b f d)
    es4 r
    a,,16( c) f( a) c-. es( d c)
    d-. b( a b) es-. b( a b)
    \barNumberCheck 55
    f'16-. b,( a b) g'-. b,( a b)
    f'16-. b,( a b) g'-. b,( a b)
    f'16( d c b) c4 \tr
    b4 r
    R2
    \barNumberCheck 60
    r8 b \p b b
    \tuplet 3/2 { a16( b c) } b8 c d
    \tuplet 3/2 { c16( d es) } d8 r4
    R2
    r8 f \f f f
    \barNumberCheck 65
    \tuplet 3/2 { g16[( a b]) } d,8 \tuplet 3/2 { es16[( f g]) } c,8
    \tuplet 3/2 { d16[( es f]) } b,8 c4 \tr
    b16( f) d( f) b( f) d( f)
    b4 r \fine
  }
}