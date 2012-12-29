\version "2.16.0"

%Note: This work has 3 different sources, Gimo 15, Gimo 16 and Gimo 17.
%I will call these [15], [16] and [17], respectively.

IIMandI =  \relative c'' {
  \clef "treble"
  \key a\major
  \time 3/4

  \repeat "volta" 2 {
  %1 page 4
  <a e cis>2 b8.^\trill a32(  b) |
  <cis e, a,>2 d8.^\trill cis32(  d) |
  e4 a8-.( gis-. fis-.  e)-. |
  \slashedGrace e8 d2 cis4 |
  <<{\times 2/3 {b8 cis d} d2} \\ e,2.>> |
  <<{\times 2/3 {cis'8 d e} e2} \\ e,2.>> |
  %7
  a'8-. gis-. fis-. e-. d-. cis-. |
  <<{e4. d16(  cis) b8 r} \\ e,2>> | 
  <<{e'4 e e} \\ {e e e}>>
  \times 2/3 {dis8( cis  b)} b2^\trill |
  fis'8-. b,-. gis'-. b,-. a'-. b,-. |
  gis'-. b,-. a'-. b,-. b'-. b,-.  |
  gis'-. b,-. a'-. b,-. gis'-. b,-. |
  %14
  <<{gis'8(  fis) fis2} \\ b,2.>> |
  <<a2. \\ a>> |
  gis4( b  e) |
  cis8(  fis) \slashedGrace e dis2^\trill |
  <<{e4 gis8(  a) b b} \\ b,4>> |
  <<{b'4(  a8) fis16 gis a8 a} \\ {b,4. ~ b}>> |
  <<{a'4(  gis8) gis16 a b8 b} \\ {b,4. ~ b}>> |
  cis8 a' gis fis e dis |
  e2 e,4
  }

  \repeat "volta" 2 {
  %23
  <e' b e,>2 fis8.^\trill e32( fis) |
  %24 page 5  
  <gis b, e,>2 a8.^\trill gis32(  a) |
  b4 a8 gis fis e |
  e4 d! b8._\trill a32(  b) |
  cis8(  e) a( e d  cis) |
  cis-.(  b)-. b2 |
  d2. |
  %30
  cis4( d  e) |
  \times 2/3 {fis8( e  d)} cis4 b |
  a2 a,4 |
  b'16 e, e e cis' e, e e d' e, e e |
  cis' e, e e d' e, e e e' e, e e |
  e' e, e e d' e, e e cis' e, e e |
  <<{cis'8(  b) b2} \\ e,2.>> |
  <<{a'8( gis a g fis  eis)} \\ a,2>>
  %38
  fis'8(  eis) fis( d cis  b) |
  cis32 b a8. b2^\trill |
  a4. <<{cis16 d e8 e} \\ e,4>> |
  <<{e'4(  d8) b16( cis d8  d)} \\ e,2.>> |
  d'4 cis8 a'16(  gis) a8-.(  a)-. |
  fis d cis b a gis |
  a4. <<{cis16(  d) e8 e} \\ e,4.>> |
  <<{e'4(  d8) b16( cis d8  d)} \\ e,2.>> |
  <<{d'4 cis8} \\ e,4.>> a'16 gis a8-.(  a)-. |
  fis d cis b a gis |
  %48
  a4 a,2
  }
}
