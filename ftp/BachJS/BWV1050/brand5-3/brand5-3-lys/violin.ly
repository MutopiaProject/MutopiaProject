\include "header.ly"


\version "2.4.0"


violin =  \relative c'' {
 \clef violin
 \key d \major
 \time 2/4

  \commonSettings


 % --Bar 1-- %
R2 |
R2 |
R2 |
R2 |
R2 |
R2 |
R2 |
R2 |

% --Bar 9-- %
R2 |
R2 |
R2 |
R2 |
R2 |
R2 |
R2 |
R2 |

% --Bar 17-- %
R2 |
R2 |
R2 |
R2 |
R2 |
R2 |
R2 |
R2 |
R2 |

% --Bar 26-- %
R2 |
R2 |
R2 |
R2 |
R2 |
r8 r16 d16 a'8. e16 |
\times 2/3 { fis8( e) d  cis( d) e } |
\tripletsHide

% --Bar 33-- %
\times 2/3 { a,( b) cis  d( e) fis } |
d r e r |
\times 2/3 { b( d) fis  fis( e) fis } |
\times 2/3 { d( g) fis  e( a) g } |
fis r e r |
e r d r |
\times 2/3 { cis( d) e  fis( g) a } |
d,4 ~ d8. a16 |

% --Bar 41-- %
d8 r cis r |
d r a r |
g r fis r |
b r \times 2/3 { cis, (e a) } |
\times 2/3 { d, (fis  a)   a, (cis  e) } |
d r d' r |

% --Bar 47-- %
cis r b r |
e r d8. cis16 |
b8. d,16 fis8. e16 |
d8 r a' r |
g r cis, r |
\times 2/3 { fis (d)  e   fis (d)  e } |
fis2~ |

% --Bar 54-- %
\times 2/3 { fis8 \noBeam d e  fis( d) e | } 
fis8.  a16 \times 2/3 {d8(cis) d } 
b2 ~|
b |
cis8 r cis r |
b r b r |
a r a r |

% --Bar 61-- %
b4 r |
r8 r16 cis d8. cis16 |
b8. b16 a8. a16 |
a8 r r4 |
r8 r16 g d'8. a16 |
\times 2/3 { b8 (a) g  fis( g) a } |
d, r a' r |

% --Bar 68-- %
e2 ~|
\times 2/3 { e8 \noBeam gis a  b ( gis) a } |
b2 ~ |
\times 2/3 { b8 \noBeam gis a } b8. b16 |
cis8 r r r16 fis |
d8 r r r16 g |
e8 r r r16 a |
fis8 r a r |
d, r cis r |
b8. b16 a8. a16 |
a2 |
R2*6 |

% --Bar 85-- %
R2*2 |
r8 r16 b fis'8. cis16 |
  \times 2/3 { d8 (cis) b ais( b) cis |
    fis,-\pianoissimo^"Solo" (b d ) d( cis d ) |%\italics
    fis, (b d ) d( cis d ) | 
    g,! (ais b)  cis( ais b) |
    e,( ais cis) cis( b cis) |
  } 


% \times 2/3 {  } |

% --Bar 93 -- %
% Bar 93
  \times 2/3 { fis,8( b  d) d( cis  d) }  |
  \times 2/3 { e,8( g  cis) cis(  ais) b }  |
  \times 2/3 { cis8(  ais) b fis(  b) ais }  |
 b8 r r4 |
 r8 r16 fis-\forte cis'8. gis16 |
  \times 2/3 { a8(  gis) fis eis(  fis) gis }  |
  \times 2/3 { cis,8-\pianoissimo^"Solo"( fis  a) a( gis  a) }  |
  \times 2/3 { cis,8( fis  a) a(  gis) a }  |
  \times 2/3 { d,!8( eis  fis) gis( eis  fis) }  |
  \times 2/3 { b,8( eis  gis) gis( fis  gis) }  |
  \times 2/3 { cis,8( fis  a) a( gis  a) }  |
  \times 2/3 { b,8( d  gis) gis( eis  fis) }  |
  \times 2/3 { gis8( eis  fis) cis( fis ) eis }  |
 fis8 r r4 |
 r a8-\forte r |
 gis8 r r4 |
 r gis8 r |
 fis8 r r4 |
 R2 |
 R2 |
 R2 |
 r4 cis'8 r |
 r4 d8 r |
 r4 e8 r |
 r4 fis8 r |
 R2 *10 |
 r8 r16 cis fis8. cis16 |
  \times 2/3 { d8(  cis) b ais( b) cis }  |
  \times 2/3 { fis,8(  b) d fis(  e) fis }  |
  \times 2/3 { b,8(  a) g }  a4~ |
  \times 2/3 { a8 g b }  e8. b16 |
  \times 2/3 { cis8(  b) a gis( a) b }  |
  \times 2/3 { e,8(  a) cis e(  d) e }  |
  \times 2/3 { a,8(  gis) fis }  gis4~ |
  \times 2/3 { gis8 fis a }  d8. a16 |
  \times 2/3 { b8(  gis) b }  e8. b16 |
  \times 2/3 { cis8(  a) cis }  fis8. cis16 |
  \times 2/3 { d8(  b) d }  gis8. d16 |
  \times 2/3 { e8(  cis) e }  a8. e16 |
  \times 2/3 { fis8 d fis }  b8. fis16 |
  \times 2/3 { gis8 fis e }  a8. e16 |
  \times 2/3 { fis8( e) d cis( d) e }  |
 a,8 r cis r |
 b r r dis |
 e8. b16
  \times 2/3 { e8(  cis) a }  |
 a8 r gis r |
 a8. \noBeam e16_\cantabile  a8. e16 |  \appoggiatura 
   e
  
  fis2~ |
 fis8. fis16
  \times 2/3 { g!8(  e) fis }  |
 \appoggiatura
  
   fis16
  
  e2~ |
 e8. e16 a8. fis16 |
 \appoggiatura
  
   e
  
  d2~ |
  \times 2/3 { d8 e fis e(  fis) d }  |
 cis8 r r4 |
 R2 |
 r8 r16 b'_\piano e8. b16 |
  \times 2/3 { c8( b) a g( a) b }  |
 e,8 r r4 |
 R2 |
 r8 r16 fis b8. fis16 |
  \times 2/3 { g8(  fis) e d(  e) fis }  |
 b,8 r r4 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 r8 r16 fis' a8. fis16 |
 b,4 r |
 r8 r16 e g8. e16 |
 a,4 r |
 r8 r16 a' d8. a16 |
  \times 2/3 { b8(  a) g fis(  g) a }  |
 d,4 r |
 R2 |
 r8 r16 e a8. e16 |
  \times 2/3 { fis8(  e) d cis(  d) e }  |
 a,4 r |
 R2 |
 r8 r16 e' a8. e16 |
 cis2~ |
  \times 2/3 { cis8 \noBeam cis d e(  cis) d }  |
 a8 r r4 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 b'8 r r4 |
 a8 r r4 |
 eis'8 r r4 |
 fis8 r r4 |
 fis8 r r4 |
 gis8 r r4 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 r8 r16 cis, fis8. cis16 |
  \times 2/3 { d8(  cis) b ais( b) cis }  |
 fis,4~ fis8. e16 |
 d8. d'16
  \times 2/3 { cis8(  d) b }  |
 ais8. b16
  \times 2/3 { cis8(  d) e }  |
 fis8 r r4 |
 R2 |
 R2 |
 R2 |
 R2 |
 r8 r16 b, b8. b16 |
 b8 r ais r |
 fis4 r |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 R2 |
 r8 r16 d' a'8. d,16 | \tripletsShow
  \times 2/3 { fis8(  e) d cis(  d) e }  | \tripletsHide
  \times 2/3 { a,8(  b) cis d(  e) fis }  |
 b,8 r cis r |
  \times 2/3 { b8(  d) fis fis(  e) fis }  |
  \times 2/3 { d8(  g) fis e(  a) g }  |
 fis8 r e r |
 e8 r d r |
  \times 2/3 { cis8(  d) e fis(  g) a }  |
 d,4~ d8. cis16 |
 d8 r cis r |
 d8 r a r |
 g8 r fis r |
 b8 r
  \times 2/3 { cis,( e  a) }  |
  \times 2/3 { d,8( fis  a) a,( cis  e) }  |
 d8 r d' r |
 cis8 r b r |
 e8 r d8. cis16 |
 d8. d,16 fis8. e16 |
 d8 r a' r |
 g8 r cis, r |
  \times 2/3 { fis8(  d) e fis(  d) e }  |
 fis2~ |
  \times 2/3 { fis8 \noBeam d e fis(  d) e }  |
 fis8. a16
  \times 2/3 { d8(  cis) d }  |
 b2~ |
 b |
 cis8 r cis r |
 b8 r b r |
 a8 r a r |
 b4 r |
 r8 r16 cis d8. cis16 |
 b8. b16 a8. a16 |
 a8 r r4 |
 r8 r16 g d'8. a16 |
  \times 2/3 { b8(  a) g fis(  g) a }  |
 d,8 r a' r |
 e2~ |
  \times 2/3 { e8 \noBeam gis a b(  gis) a }  |
 b2~ |
  \times 2/3 { b8 \noBeam gis a }  b8. b16 |
 cis8 r r8 r16 fis |
 d8 r r8 r16 g |
 e8 r r8 r16 a |
 fis8 r a r |
 d,8 r cis r |
 b8. b16 a8. a16 |
 a2-\fermata \bar "|."
}