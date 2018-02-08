\version "2.18.2"

ViolinII_a = \relative b {
  \global_a
  \repeat volta 2 {
    b8 \f
    b4 d8 d4 f8
    f4 b8 b4 d8 \p
    d4 es8 d4 d8
    c8( d es) d4 b,8 \f
    \barNumberCheck 5
    b4 d8 d4 f8
    f4 b8 b4 b8 \p
    a4 b8 a4 c8
    c8( d es) d4 r8
    d8( \f b) g-. f( a) r
    \barNumberCheck 10
    b8( g) e-. f4 r8
    d8( g) b-. c,( f) a-.
    b,8( e) e-. f4 r8
    r4 r8 c( e) f-.
    c8( g') g-. f( a) a-.
    \barNumberCheck 15
    b8-. b( c) d-. d( e)
    f8-. f( g) a4 r8
    e,8-. e-.e-. f-. c'16( a) g( f)
    e8-. e-.e-. f-. c'16( a) g( f)
    e8 e e f f f
    \barNumberCheck 20
    e8 e e f4 a,8
    b8-. b( c) d( f) a,-.
    b8( g') e-. f r e \prall \p
    f8 r e \prall f-. f-. e \prall
    f4 r8 r4
  }
  \break
  \repeat volta 2{
    r8
    \barNumberCheck 25
    r4 r8 r4 d8 \f
    d8( es f) es4 r8
    r4 r8 r4 c8
    c8( d es) d4 r8
    r4 c'8-. a( f)  r
    \barNumberCheck 30
    r4 es'8-. c( a) r
    r4 r8 r4 d8 \p
    c8( d es) \appoggiatura es8 d4 r8
    r4 r8 r4 f8
    f8( es d) c4 r8
    \barNumberCheck 35
    r4 c8-. \pp des( c) r
    r4 c8-. des( c) f,-. \ff
    b4 f8 des4 b8
    ges'8( f) e-. f4 e8 \p
    f4 e8 f4 e8
    \barNumberCheck 40
    f4 r8 r4 b,8 \f
    b4 d8 d4 f8
    f4 b8 b4 d8 \p
    d4 es8 d4 d8
    c8( d es) d4 b,8 \f
    \barNumberCheck 45
    b4 es8 es4 g8
    g4 b8 b4 es8 \p
    es8( g) es-. d4 d8
    c8( d es) d4 r8
    b4. \f a
    \barNumberCheck 50
    as4. g
    g8( c) es-. f,( b) d-.
    es,8( a) a-. b4 d,8
    es8-. es8( f) g-. g( a)
    b8-. b( c) d4 r8
    \barNumberCheck 55
    a,8-. a-. a-. b-. f'16( d) c( b)
    a8-. a-. a-. b-. f'16( d) c( b)
    a8 a a b b b
    a8 a a b4 f'8
    g8-. g( a) b( d) f,-.
    \barNumberCheck 60
    g8( c) a-. b r a, \prall \p
    b8 r a \prall b-. b-. a \prall
    b4 r8 r4
  }
}