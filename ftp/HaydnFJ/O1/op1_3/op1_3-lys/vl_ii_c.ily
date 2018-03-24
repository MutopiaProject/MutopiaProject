\version "2.18.2"
\language "deutsch"

ViolinII_c = \relative a' {
  \global_c
  \repeat volta 2 {
    r8
    R2
    r4 r8 a-. \p
    h8-. g-. e-. cis'-.
    cis4( d8) r
    \barNumberCheck 5
    R2
    r4 r8 d-.
    cis8-. a'-. h,-. gis'-.
    a,4 r8
  }
  \repeat volta 2 {
    r8
    R2
    \barNumberCheck 10
    r4 r8 fis-. \p
    g8-. a-. h-. dis,-.
    dis4( e8) r
    R2
    r4 r8 g-.
    \barNumberCheck 15
    fis8-. a-. d-. fis,-.
    fis4( e8) r
    cis'2 \f
    d2
    g2
    \barNumberCheck 20
    fis4. d8-.
    g8-. g-. h-. g-.
    g4( fis8) cis-.
    d8-. d-. e,-. cis'-.
    d,4 r8 \fine
  } \breakVoice
  \repeat volta 2 {
    \key a \minor
    r8
    \barNumberCheck 25
    R2
    r8 e'-. \p e-. e-.
    d32( e f8.) r4
    r8 g-. g-. g-.
    f32( g a8.) r4
    \barNumberCheck 30
    r8 h-. h-. h-.
    a8-. e-. f-. gis,-.
    a4 r8
  }
  \repeat volta 2 {
    r8
    r8 a, \p a a
    h32( \cresc cis d8.) cis32( d e8.)
    \barNumberCheck 35
    d32( e f8.) e32( f g8.)
    f4 \f d
    a'4 r8 a-. \p
    d8-. d-. d-. d-.
    cis32( h a8.) r8 a-.
    \barNumberCheck 40
    c!8-. c-. c-. c-.
    h32( a g8.) r8 g-.
    b'-. b-. b-. b,-.
    a8-. d-. \f b-. c-.
    f,4 r
    \barNumberCheck 45
    r4 d' \p
    d4 b32( c d8.)
    r4 c
    c4 r
    e32( f g8.) cis,32( d e8.)
    \barNumberCheck 50
    d32( e f8.) b,16( a g f)
    \app f8 e4 r
    cis2 \pp
    d32( e f8.) d32( e f8.)
    e32( f g8.)  f16( e d cis)
    \barNumberCheck 55
    d4 r8 \dcaf
  }
}