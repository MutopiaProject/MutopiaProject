\version "2.18.2"

ViolinI_b = \relative b' {
  \global_b
  \repeat volta 2 {
    b2 \f b'4
    b8( a) a( g) g( f)
    f2( fis4)
    g4 r \tuplet 3/2 { b8( g es) }
    \barNumberCheck 5
    d4 r \tuplet 3/2 { es8( c a) }
    b4 r \tuplet 3/2 { d8( b g) }
    f2( es4) \tr
    d4 b' \tuplet 3/2 { d8( b g) }
    f2( es4) \tr
    \barNumberCheck 10
    d4 r r
  }
  \repeat volta 2 {
    c'2 f4
    f8( e) g( f) a( g)
    c,2 b'4
    b8( a ) c( b) d( c)
    \barNumberCheck 15
    c2 f4
    f8( e) e( d) d( c)
    \tuplet 3/2 { d8( c b) } a4 g \tr
    f2 r4
    f4-. f-. f-.
    \barNumberCheck 20
    fis8( g f es d c)
    es4-. es-. es-.
    e8( f es d c b)
    a8( c) es4 d
    \appoggiatura d4 c2 r4
    \barNumberCheck 25
    b2 b'4
    b8( a) a( g) g( f)
    f2( fis4)
    g4 r \tuplet 3/2 { b8( g es) }
    d4 r \tuplet 3/2 { es8( c a) }
    \barNumberCheck 30
    b4 r \tuplet 3/2 { d8( b g) }
    f2( es4) \tr
    d4 b' \tuplet 3/2 { d8( b g) }
    f2( es4) \tr
    d4 r r
  }
  \break
  \repeat volta 2 {
    \key es \major
    \barNumberCheck 35
    \tempoTrio
    R2.
    r4 r b''( \p
    g-.) es-. b-.
    f4-. r r
    r4 r as'(
    \barNumberCheck 40
    f4-.) d-. as-.
    g4-. r r
    r4 r des'(
    c4-.) as'-. r
    r4 r b,(
    \barNumberCheck 45
    as4-.) f'-. r
    r4 r b,-.
    b,4-. as'( g)
    f4 r r
  }
  \repeat volta 2 {
    R2.
    \barNumberCheck 50
    r4 r des'(
    b4-.) g-. r
    r4 r c(
    as4-.) f-. r
    r4 r b(
    \barNumberCheck 55
    c4-.) as-. r
    r4 r f'(
    g4-.) es-. r
    r4 r b'(
    g4-.) es-. b-.
    \barNumberCheck 60
    g4-. r r
    R2.
    R2. \mdc
  }
}