\version "2.18.2"
\language "deutsch"

ViolinII_a = \relative a' {
  \global_a
  R2. * 7
  \barNumberCheck 8
  a2.~ _\markup { \italic "dolce" }
  a2.~
  \barNumberCheck 10
  a4. g16( fis) e( d cis d)
  h4 \tr a r8 r16 d'
  h4 \tr a8 d16( cis) fis( d cis d)
  g,4 \tr fis r8 d'
  \app fis,8 e4. h''8 \acc a g \acc fis e
  \barNumberCheck 15
  \acc d8 cis8.( \tr h16) a4 r
  a4~ a16( d cis e) d( fis fis, a)
  gis8.( \tr fis16) gis2~
  gis4~ gis16( cis) cis( e) e( cis a gis)
  fis8.( \tr e16) fis2
  \barNumberCheck 20
  e16 h''-.\( h( gis)\) gis\(( e) e( h)\) h\(( gis) gis( e)\)
  a16\(( a') a( e)\) \pso #'(0 . 0.2) e\(( cis) cis( a)\) \pso #'(0 . 0.2) e'\(( cis) cis( a)\)
  e16 h''-.\( h( gis)\) gis\(( e) e( h)\) h\(( gis) gis( e)\)
  a4 r gis16( h) h-. h-.
  a4 r gis16( h) h-. h-.
  \barNumberCheck 25
  a4 r r
  d,8.( h'16) a4( gis) \tr
  a4. fis'16( e) \pso #'(0 . 0.4) e\(( d) d( cis)\)
  \pso #'(0 . 0.2) cis16\(( h) h( a)\) a\(( d) d( cis)\) \pso #'(0 . 0.2) cis\(( h) h( a)\)
  a4-. \f a-. r
  \barNumberCheck 30
  a4( \p gis8) gis gis gis
  a16-. e( d cis) d2
  cis16-. e( d cis) d2
  cis4 a r
  a''16-. \mf e( d cis) e-. cis( h a) cis-. a( gis a)
  \barNumberCheck 35
  a,4 r r
  a''16-. fis( e dis) fis-. dis( cis h) dis-. h( ais h)
  h,4 r r
  g''!16-. e( dis e) e-. h( a g) h-. g( fis e)
  a4 r r
  \barNumberCheck 40
  r8 a16( g) g( fis) fis8 r4
  r8 e'16( \decresc d) d( cis) cis8 r4
  r8 d16( cis) cis( h) h8 r4
  r8 ais ais16\(( \< h) h( cis)\) cis8 ais8
  h8 h h16\(( cis) cis( d)\) d8 h
  \barNumberCheck 45
  cis8 cis cis16\(( d) d( e)\) e8 cis
  d8 \> d, d d d d
  h'4-. \f cis-. r
  h8 \p h h h h h
  e8.( \tr d32 cis) h4 ais \tr
  \barNumberCheck 50
  h4 d2~ _\markup { \italic "dolce" }
  d16 h'-.\( h( a)\) \pso #'(0 . 0.3) a\(( gis) gis( f)\) \pso #'(0 . 0.3) f\(( e) e( d)\)
  cis4 c2~
  c16 a'-.\( a( g)\) \pso #'(0 . 0.3) g\(( fis) fis( e)\) \pso #'(0 . 0.1) e\(( d) d( c)\)
  h2.~
  \barNumberCheck 55
  h16 e-.\( e( g)\) \pso #'(0 . 0.2) g\(( fis) fis( e)\) e( d cis! d)
  d4 \tr cis r
  R2. * 7
  a2.~ _\markup { \italic "dolce" }
  \barNumberCheck 65
  a16( g fis g) g2~
  g16( fis e fis) fis2~
  fis16( e d e) e2~
  e16( d cis d) d4~ d16( fis e d)
  d4 \tr cis r
  \barNumberCheck 70
  R2.
  d'4~ d16( g fis a) g( h h, d)
  cis8.( \tr h16) cis2~
  cis4~ cis16( fis) fis( a) a( fis d cis)
  h8.( \tr a16) h2
  \barNumberCheck 75
  a16\(( e') e( cis)\) cis\(( a) a( e)\) e\(( cis) cis( a)\)
  d16\(( d') d( a)\) a\(( fis) fis( d)\) a'\(( fis) fis( d)\)
  a16 e''-.\( e( cis)\) cis\(( a) a( e)\) e\(( cis) cis( a)\)
  d4 r a'16( cis) cis-. cis-.
  d4 r a16( cis) cis-. cis-.
  \barNumberCheck 80
  d4 r r
  d8( h'16 g) \acc g8 fis( \prall e16 d) cis4 \tr
  d4. d16( cis) cis\(( h) h( a)\)
  a16\(( g) g( fis)\) fis g'-.\( g( fis)\) \pso #'(0 . 0.2) fis\(( e) e( d)\)
  d4-. \f d-. r
  \barNumberCheck 85
  d4( \p cis8) cis cis cis
  d16-. a( g fis) g2
  fis16-. \pp a( g fis) \acc a8 g2
  \app g4 fis2 r4 \bar "|."
}