\version "2.18.2"
\language "deutsch"

ViolinI_c = \relative a'' {
  \global_c
  \repeat volta 2 {
    a8-. \p
    fis8-. d-. a-. g'-.
    g4( fis8) r
    R2
    r4 r8 d-.
    \barNumberCheck 5
    fis8-. a-. d-. h-.
    a4( gis8) r
    R2
    r4 r8
  }
  \repeat volta 2 {
    a8-. \p
    fis8-. dis-. h-. dis-.
    \barNumberCheck 10
    dis4( e8) r
    R2
    r4 r8 h-.
    e8-. g-. h-. d,-.
    d4( cis8) r
    \barNumberCheck 15
    R2
    r4 r8 a \f
    g'2
    fis4. a,8
    cis'2
    \barNumberCheck 20
    d4. d,8-.
    g8-. h-. d-. h-.
    h4( a8) g-.
    fis8-. d-. e,-. cis'-.
    d,4 r8 \fine
  }
  \repeat volta 2 {
    \key a \minor
    r8 \noBreak
    \barNumberCheck 25
    r8 d'-. \p d-. d-.
    cis32( d e8.) r4
    r8 f-. f-. f-.
    e32( f g8.) r4
    r8 a-. a-. a-.
    \barNumberCheck 30
    gis32( a h8.) r8 d16( h)
    a8-. e-.f-.gis,-.
    a4 r8
  }
  \repeat volta 2 {
    a8 \p \noBreak
    a'2(
    gis4 \cresc g
    \barNumberCheck 35
    f4 cis)
    d8 \f \tuplet 3/2 { f,16([ e d)] } d'8 \tuplet 3/2 { f,16([ e d)] }
    a'4 r
    r4 r8 d-. \p
    g8-. g-. g-. g-.
    \barNumberCheck 40
    fis32( e d8.) r8 d-.
    f!8-. f-. f-. f-.
    e32( d c8.) r8 \once \override DynamicText #'extra-offset = #'(-0.8 . 1.4) \tuplet 3/2 { b'16(  \f g e) }
    f8-. d-. b-. c-.
    f,4 r
    \barNumberCheck 45
    r8 fis'-. \p fis-. fis-.
    g32( a b8.) r4
    r8 e,-. e-. e-.
    f32( g a8.) d,32( e f8.)
    g32( a b8.) e,32( f g8.)
    \barNumberCheck 50
    f32( g a8.)
    g16( f e d)
    \app d8 cis4 r8 a,-. \pp
    e''-. e-. e-. g,-.
    f32( g a8.) d,32( e f8.)
    e32( f g8.)  f16( e d cis)
    \barNumberCheck 55
    d4 r8 \dcaf
  }
}
