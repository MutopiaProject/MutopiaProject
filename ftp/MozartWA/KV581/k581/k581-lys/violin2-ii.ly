#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

violinIISecondMov =  \relative a {
    \key d \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 8)

    \once \override TextScript
      #'extra-offset = #'(0 . -3.5)
     d8[(_\markup { \dynamic p \italic { con sordino } } 
    a d a d  a)]
    |  d[( b d b d  b)]
    |  e[( b  e) e( d  cis)]
    |  d[( a d fis g  a)]
    |  g[( d g d g  d)]
    |  g[( d fis d fis  d)]
    |  g[( e g e fis  d)]
    |  e[( cis d fis e  g)]
    |  d[( fis cis e cis  e)]

%%% 10
    |  e[( cis e cis e  cis)]
    |  fis[( d fis  d) d(  a)]
    |  d[( b d b e  b)]
    |  e[( b e cis e  d)]
    |  d[( fis d fis d  fis)]
    |  d[( g e a d,  a')]
    |  g[( e d fis e  cis)]
    |  d[( f d f d  e)]
    |  cis[( e cis e d  fis!)]
    |  g[( e d fis a,  cis)]

%%% 20
    |  d[ d d d d d]
    | r  cis[ cis cis cis cis]
    | r  cis[ cis cis cis cis]
    | r  d[ d d d d]
    | fis4( e  d)
    | cis( a  b)
    | g(  a2)
    | a'4( g  fis)
    | e2(  cis8[  d)]
    | e4( d  cis8.[  e16)]

%%% 30
    |  d8[ d( b d ais  cis)]
    |  b[( fis' d fis d  fis)]
    |  d[( b' gis b  e,) e]
    |  e[( a e  a,)] e''4 ~
    | e d2 ~
    | d4 cis2 ~
    | cis4b2 ~
    | b4 a2 ~
    |  a8[( fis a fis a  fis)]
    | a4  gis8[( fis e  d)]

%%% 40
    |  cis[( e cis e d  b)]
    |  fis'[( d fis d fis  d)]
    | fis4(  e8[ d cis  b)]
    |  a[-. cis-.] r  cis[(  c) c-.]
    | r  fis[ e e d d]
    | cis!4 a''2 ~
    | a4 g2 ~
    | g4 fis2 ~
    | fis8 \< fis,4 e  d8\!
    | cis2\f r4

%%% 50
    | R2.
    |  d8[(\p a d a d  a)]
    |  d[( b d b d  b)]
    |  e[( b  e) e( d  cis)]
    |  d[( a d fis g  a)]
    |  g[( d g d g  d)]
    |  g[( d fis d fis  d)]
    |  g[( e g e fis  d)]
    |  e[( cis d fis e  g)]
    |  d[( fis cis e cis  e)]

%%% 60
    |  e[( cis e cis e  cis)]
    |  fis[( d fis  d) d(  a)]
    |  d[( b d b e  b)]
    |  e[( b e cis e  d)]
    |  d[( fis d fis d  fis)]
    |  d[( g e a d,  a')]
    |  g[( e d fis e  cis)]
    |  d[( f d f d  e)]
    |  cis[( e cis e d  fis!)]
    |  g[( e d fis a,  cis)]

%%% 70
    |  d[ d d d d d]
    | r  cis[ cis cis cis cis]
    | r  cis[ cis cis cis cis]
    | r  d[ d d d d]
    | fis4( e  d)
    | cis( a  b)
    | g(  a2)
    | a'4( g  fis)
    | e ~ e8 g4(  fis8)
    | e r d r cis r

%%% 80
    | d2 fis4 ~
    |  fis8[(  d)] d'2
    | b,4( cis  d)
    | <bes g'>(-. <bes g'>-. <bes g'>)-.
    | <a fis'>8 r fis' r fis r
    | fis2 r4\fermata
}
