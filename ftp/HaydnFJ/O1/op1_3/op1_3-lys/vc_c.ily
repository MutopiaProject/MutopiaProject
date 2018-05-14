\version "2.18.2"

Cello_c = \relative fis {
  \global_c
  \clef bass
  \repeat volta 2 {
    r8
    R2
    r4 r8 fis-. \p
    g8-. e-. a-. a,-.
    d8-. a-. d,-. r
    \barNumberCheck 5
    R2
    r4 r8 gis'-.
    a8-. fis-. d-. e-.
    a8-.[ e-. a,-.]
  }
  \repeat volta 2 {
    r8
    R2
    \barNumberCheck 10
    r4 r8 dis-. \p
    e8-. fis-. g-. a-.
    g8-. fis-. e-. r
    R2
    r4 r8 cis'-.
    \barNumberCheck 15
    d8-. fis,-. h-. gis-.
    a8-. e-. a,-. r
    a8-. \f cis-. e-. a-.
    d,4 r
    a8-. cis-. e-. a-.
    \barNumberCheck 20
    d,4 r
    g,4 r
    d'8-. d'16( cis) d8-. a-.
    d8-. h-. g-. a-.
    d,8-.[ a-. d,-.] \fine
  }
  \repeat volta 2 {
    \key a \minor
    a'8 \p
    \barNumberCheck 25
    d4 r
    r8 a'-. a-. g-.
    f32( e d8.) r4
    r8 c'-. c-. b-.
    a32( g f8.) r4
    \barNumberCheck 30
    r8 e'-. e-. d-.
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
    f,8-. c-. f-. d-. \p
    \barNumberCheck 45
    d'8-. d-. d-. c-.
    b32( c d8.) r8 g,-.
    c8-. c-. c-. b-.
    a32( b c8.) r4
    R2
    \barNumberCheck 50
    d,4 g
    a8-. e-. a,4
    a2 \pp
    d4 b'
    g4 a
    \barNumberCheck 55
    d,8-.[ a-. d,-.] \dcaf
  }
}
