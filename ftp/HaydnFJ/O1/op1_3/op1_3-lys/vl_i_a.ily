\version "2.18.2"
\language "deutsch"

ViolinI_a = \relative a'' {
  \global_a
  a2.~ _\markup { \italic "dolce" }
  a2.~
  a4. g16( fis) e( d cis d)
  h4 \tr a r8 r16 d
  \barNumberCheck 5
  h4 \tr a8 d16( cis) fis( d cis d)
  g,4 \tr fis r8 d'
  \acc d8 e,4.( g16 fis) \acc a8 g( \prall fis16 e)
  fis8.( \tr e16) d4 r
  R2. * 6
  \barNumberCheck 15
  e'4~ e16( a gis h) a( cis cis, e)
  d8.( \tr cis16) d2~
  d4~ \so #'(0 . 0.4) d16( gis) gis( h) h( gis e d)
  cis8.( \tr h16) cis2~
  cis4~ cis16( h d cis) fis8( a,)
  \barNumberCheck 20
  gis4-. gis'~ gis8.( a32 h)
  a4-. a~ a8.( h32 cis)
  h4-. h~ h8.( cis32 d)
  cis8 e \pso #'(0 . 0.2) e16\(( cis) cis( a)\) e( d') d-. d-.
  cis8 e \pso #'(0 . 0.2) e16\(( cis) cis( a)\) e( d') d-. d-.
  \barNumberCheck 25
  cis16( e d cis) d( e fis gis) a4
  fis,,8.( d'16) cis4( h) \tr
  a4. a'16( gis) \pso #'(0 . 0.4) gis\(( fis) fis( e)\)
  \pso #'(0 . 0.2) e16\(( d) d( cis)\) cis\(( fis) fis( e)\) \pso #'(0 . 0.2) e\(( d) d( cis)\)
  cis4-. \tr \f h-. r
  \barNumberCheck 30
  h4.( \p d16 cis) \acc e8 d( \prall cis16 h)
  a4 r16 fis( d' cis) d-. h( a gis)
  a4 r16 fis( d' cis) d-. h( a gis)
  a4 a, r
  a''2.~ \mf
  \barNumberCheck 35
  a16( e) e( d) d( cis) cis( h) h( a gis a)
  a'2.~
  a16( g!) g( fis) fis( e) e( dis) dis( c!) c( h)
  g'2.~
  g16( fis) fis( e) e( d) d( cis) cis ( h) a( g')
  \barNumberCheck 40
  fis4 r8 a16( fis) d'-. a( g fis)
  e4 r8 e16( \decresc cis) cis'-. e,( d cis)
  d4 r8 fis16( d) h'-. fis( e d)
  cis4 \once \override TrillSpanner #'font-size = #-2 fis2~ \< \startTrillSpan
  fis2.~
  \barNumberCheck 45
  fis2.~
  fis16( \> \stopTrillSpan g) g( fis) fis( e) e( d) d( cis) cis( h)
  g'4-. \f ais-. r
  h4~ \p h16( ais h cis) d( h ais h)
  g8.( \tr fis32 e) d4 cis \tr
  \barNumberCheck 50
  h 4 r r
  r4 h'2( _\markup { \italic "dolce" }
  a4) r r
  r4 a2(
  g16) h-.\( h( a)\) \pso #'(0 . 0.3) a\(( g) g( fis)\) \pso #'(0 . 0.3) fis\(( e) e( dis)\)
  \barNumberCheck 55
  \pso #'(0 . 0.1) e16\(( g) g( h)\) \pso #'(0 . 0.2) h\(( a) a( g)\) g( fis e fis)
  fis4 \tr e r
  a2.~
  a2.~
  a4. g16( fis) e( d cis d)
  \barNumberCheck 60
  h4 \tr a r8 r16 d
  h4 \tr a8 d16( cis) fis( d cis d)
  g,4 \tr fis r8 d'
  \acc d8 e,4.( g16 fis) \acc a8 g( \prall fis16 e)
  fis8.( \tr e16) d4 r
  \barNumberCheck 65
  h'4~ h16( a g a) h4
  a4~ a16( g fis g) a4
  g4~ g16( fis e fis) g4
  fis4~ fis16( e d e) fis( a g fis)
  fis4 \tr e r
  \barNumberCheck 70
  a'4~ a16( d cis e) d( fis fis, a)
  g8.( \tr fis16) g2~
  g4~ \so #'(0 . 0.4) g16( cis) cis( e) e( cis a g)
  fis8.( \tr e16) fis2~
  fis4~ fis16( e g fis) h8( d,)
  \barNumberCheck 75
  cis4-. cis~ cis8.( d32 e)
  d4-. d~ d8.( e32 fis)
  e4-. e~ e8.( fis32 g)
  \pso #'(-0.1 . 0.1) fis16\(( d') d( a)\) \pso #'(0 . 0.2) a\(( fis) fis( d)\) a( g') g-.g-.
  \pso #'(-0.1 . 0.1) fis16\(( d') d( a)\) \pso #'(0 . 0.2) a\(( fis) fis( d)\) a( g') g-.g-.
  \barNumberCheck 80
  fis16( a g fis) g( a h cis) d4
  h8( g'16 e) d4 e \tr
  d4 r r
  r4 r16 h-.\( h( a)\) \pso #'(0 . 0.2) a\(( g) g( fis)\)
  fis4 \tr \f e -. r
  \barNumberCheck 85
  e4.( \p g16 fis) \acc a8 g( \prall fis16 e)
  d4 r16 h( g' fis) g-. e( d cis)
  d4 r16 h,( \pp g' fis) g-. e( d cis)
  \app cis4 d2 r4 \bar "|."
}