\version "2.16.0"

%Note: This work has 3 different sources, Gimo 15, Gimo 16 and Gimo 17.
%I will call these [15], [16] and [17], respectively.

IIMandII =  \relative c'' {
  \clef "treble"
  \key a\major
  \time 3/4

  \repeat "volta" 2 {
  %1 page 4
  R2. |
  <a e cis>2 b8.^\trill a32(  b) |
  cis4 fis8-. e-. d-. cis-. |
  \slashedGrace cis8 b2 a4 |
  \times 2/3 {gis8 a b} <<b2 \\ gis>> |
  \times 2/3 {a8 b cis} <<cis2 \\ a>> |
  fis'8-. e-. d-. cis-. b-. a-. |
  %8
  <cis e,>4. b16(  a) gis8 r |
  cis4( b  a) |
  b b,2 |
  dis'8-. b-. e-. b-. fis'-. b,-. |
  e-. b-. fis'-. b,-. gis'-. b,-. |
  gis'-. b,-. fis'-. b,-. e-. b-. |
  e dis dis2 |
  fis,4( e  dis) |
  e2 gis4 |
  a( b  a) |
  gis4. e'16(  fis) gis8-.(  gis)-. |
  gis4 fis8 dis16(  e) fis8-. fis-. |
  fis4 e8  e16[(  fis) gis8-. gis-.] |
  a,-. cis-. b-. a-. gis-. fis-. |
  gis2 e4 |
  }
  \repeat "volta" 2 {
  %23
  e8 fis gis4 <dis b> |
  %24 page 5
  <e' b e,>2 fis8.^\trill e32( fis) |
  gis4 fis8-.( e-. d-.  cis)-. |
  cis4 b  gis8. fis32 gis |
  a8(  cis) cis-.( cis-. b-.  a)-. |
  a8(  gis) gis2 |
  fis4( gis  e) |
  a( b  cis) |
  \times 2/3 {d8( cis  b)} a4 gis |
  a2 a,4 |
  gis'16 e e e a e e e b' e, e e |
  a e e e b' e, e e cis' e, e e |
  cis' e, e e b' e, e e a e e e |
  a8(  gis) gis2 |
  <<cis2. \\ a>> |
  d8(  cis) d( b a  gis) |
  a8. a16 a4 gis8.^\trill fis32(  gis) |
  a4. a16( b cis8-.  cis)-. |
  cis4 b8 gis16(  a) b8-. b-. |
  b4 a8 cis16(  b) cis8 cis |
  d-. fis,-. e-. d-. cis-. b-. |
  cis4. a'16(  b) cis8 cis |
  cis4 b8 gis16( a b8  b) |
  b4 a8 cis16(  b) cis8-. cis-. |
  d fis, e d cis b |
  a2.
  }
}
