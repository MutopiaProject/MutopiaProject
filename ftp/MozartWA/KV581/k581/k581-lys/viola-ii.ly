#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

violaSecondMov =  \relative a {
    \key d \major
    \clef alto

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 8)

     a8[(\p fis a fis a  fis)]
    |  b[( g b g b  g)]
    |  b[( g  b) b( a  g)]
    | fis4(   a8)[ d( e  fis)]
    |  g[( b, d b d  b)]
    |  d[( b d a d  a)]
    |  e'[( a, e' a, d  a)]
    |  cis[( a  d) d( b  e)]
    |  a,[( d a cis a  cis)]
    |  cis[( a cis a cis  a)]

%%% 10
    |  d[( a d  a) a(  f)]
    | e2  b'8[(  gis)]
    |  b[( gis cis a cis  b)]
    |  a[( d, a' d, a'  d,)]
    |  b'[( d, a' e a  d,)]
    |  g[( b]  a2)
    |  b8[( d, b' d, b'  e,)]
    |  a[( cis, g' e b'  d,)]
    |  e[( b' a fis a  g)]
    |  fis[ <fis a> <fis a> <fis a> <fis a> <fis a>]

%%% 20
    | r <g a>[ <g a> <g a> <g a> <g a>]
    | r <g a>[ <g a> <g a> <g a> <g a>]
    | r <fis a>[ <fis a> <fis a> <fis a> <fis a>]
    | R2.*3
    | fis'4( e  d)
    | cis2(  ais8[  b)]
    |  b8.[( g16] fis4  g)

%%% 30
    | fis2. ~
    |  fis8[( b fis d' b  d)]
    |  b[( d b gis' gis,  b)]
    |  cis8[( e  cis)] r a'4 ~
    | a b2 ~
    | b4 a2 ~
    | a4 gis2 ~
    | gis4 fis2 ~
    |  fis8[( b, fis' b, fis'  b,)]
    | fis'4  e8[( d cis  b)]

%%% 40
    |  a[( cis a cis b  gis)]
    |  b[( a b a b  a)]
    | b4 r8  d,[( e  fis)]
    |  e[-. a-.] r  a[ ~ a a-.]
    | r c b4(  e) ~
    | e r e(
    | fis  e) e' ~
    | e d2 ~
    | d8 r g,,4( \<  bes4)
    |  e,2\!\f r4

%%% 50
    | R2.
    |  a8[(\p fis a fis a  fis)]
    |  b[( g b g b  g)]
    |  b[( g  b) b( a  g)]
    | fis4(   a8)[ d( e  fis)]
    |  g[( b, d b d  b)]
    |  d[( b d a d  a)]
    |  e'[( a, e' a, d  a)]
    |  cis[( a  d) d( b  e)]
    |  a,[( d a cis a  cis)]
    |  cis[( a cis a cis  a)]
    |  d[( a d  a) a(  f)]
    | e2  b'8[(  gis)]
    |  b[( gis cis a cis  b)]
    |  a[( d, a' d, a'  d,)]
    |  b'[( d, a' e a  d,)]
    |  g[( b]  a2)
    |  b8[( d, b' d, b'  e,)]
    |  a[( cis, g' e a  d,)]
    |  e[( b' a fis a  g)]

%%% 70
    |  fis[ <fis a> <fis a> <fis a> <fis a> <fis a>]
    | r <g a>[ <g a> <g a> <g a> <g a>]
    | r <g a>[ <g a> <g a> <g a> <g a>]
    | r <fis a>[ <fis a> <fis a> <fis a> <fis a>]
    | R2.*3
    | fis'4( e  d)
    | cis ~ cis8 e4(  d8)
    | g, r fis r e r

%%% 80
    | fis4( d'  c)
    | b( bes  a)
    | gis( g  fis)
    | \times 2/3 {  e16[( g a]  bes[ a g] \noTupletNum
                    e[ g a]  bes[ a g]  e[ g a]  bes[ a  g)] }
    | d8 r a' r a r
    | a2 r4\fermata
}
