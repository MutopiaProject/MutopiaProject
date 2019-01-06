\version "2.18.2"
\language "deutsch"

Viola_c = \relative d' {
  \global_c
  \clef alto
  \repeat volta 2 {
    r8
    d8-. \p fis-. cis-. a-.
    d8-. a-. d,-. r
    R2
    R2
    \barNumberCheck 5
    d'8-. fis-. h, -. dis-.
    e8-. h-. e,-. r
    R2
    r4 r8
  }
  \repeat volta 2 {
    r8
    h'-. \p fis'-. h-. a-.
    \barNumberCheck 10
    g8-. fis-. e-. r
    R2
    R2
    g8-. e-. g-. gis
    a8-. e-. a,-. r
    \barNumberCheck 15
    R2 * 3
    d,8-. \f fis-. a-. d-.
    a4 r
    \barNumberCheck 20
    d8-. fis-. a-. d-.
    h4 r
    d,8-. d'16( cis) d8-. a-.
    d8-. h-. g-. a-.
    d,8-.[ a-. d,-.] \fine
  }
  \repeat volta 2 {
    \key a \minor
    r8
    \barNumberCheck 25
    r8 f'-. \p f-. f-.
    e32( f g8.) r4
    r8 a-. a-. a-.
    g32( a b8.) r4
    r8 c-. c-. c-.
    \barNumberCheck 30
    h!32( c d8.) r4
    c8-. c,-. d-. e-.
    a,8-.[ a'-. a,-.]
  }
  \repeat volta 2 {
    r8
    a8 \p a a a
    a8 \cresc a a a
    \barNumberCheck 35
    a8 a a a
    d4 \f d'
    a4 r
    r8 f-. \p e-. d-.
    a'8-. cis-. h-. a-.
    \barNumberCheck 40
    d8-. fis,-. e-. d-.
    g8-. h-. a-. g-.
    c8-. e,-. d-. c-.
    f8-. d'-. \f b-. c-.
    f,8-. c-. f,4
    \barNumberCheck 45
    r4 a' \p
    g4 g,32( a b8.)
    r4 g'
    f4 r
    R2
    \barNumberCheck 50
    d4 g
    a8-. e-. a,4
    g'4. \pp e8
    d4 b'
    g4 a
    \barNumberCheck 55
    d,8-.[ a-. d,-.] \dcaf
  }
}
