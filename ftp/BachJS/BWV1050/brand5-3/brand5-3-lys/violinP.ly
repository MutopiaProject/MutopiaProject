\version "2.4.0"
\include "header.ly"

#(ly:set-point-and-click 'line-column)

violinP =  \relative c'' {
 \clef violin
 \key d \major
 \time 2/4
 
 \commonSettings

 % --Bar 1-- %
r8 r16 a16 d8. a16 |
\times 2/3 { b8( a) g  fis( g) a } |
d, r cis r |
d r e r |
\times 2/3 { fis( a) d  d( cis) d  |
b( e) d cis(  fis) e| }
d r a r |
b r cis r |

% --Bar 9-- %
\times 2/3 { d( fis) e  d( fis) e } |
d4( d8.) cis 16 |
\tripletsHide \times 2/3 { d8( e) fis  e( fis) g |
fis( g) fis  e( fis) d |
cis( e) d  cis( d) e| }
b r cis r |
d2~|
d~|

% --Bar 17-- %
\times 2/3 { d8 e d  cis( d) e | }
a,8. fis'16 e8. d16 |
\times 2/3 { cis8( e) d  cis( e) d | }
cis2 ~ |
\times 2/3 {cis8 e, d  cis( e) d |}
cis2 |
b |
fis'' ~ |
fis4 \tripletsShowOnce \times 2/3{ e8 fis gis } |

% --Bar 26-- %
a4 ~ \times 2/3 { a8 b a } |
 \times 2/3 { gis( fis) e } a4 ~ |
a gis |
a ~ \times 2/3 {a8 g! fis } | % remind natural
e4 ~ \times 2/3 { e8 d cis } |
\times 2/3 { d( cis) b  a( e') g} |
fis r gis r |

% --Bar 33-- %
a8. a16 d8. a16 |
\times 2/3 { b8 ( a) g   fis ( g) a } |
d, r cis r |
d r e r |
\times 2/3 { d ( fis) a   a( g) a } |
\times 2/3 { fis( b) a   gis( cis) b } |
a4 ~ \times 2/3 { a8 b cis } |
\times 2/3 { d cis b   a b g } |

%--Bar 41--%
fis r g r |
a r c, r |
b r cis! r |
d r \times 2/3 { e,( a  cis) } |
\times 2/3 { fis, ( a) d   e,( a) cis } |
d r g r |

%--Bar 47--%
fis r d r |
a r a8. g16 |
fis8. g16 a4~|
\times 2/3 { a8 a g  fis( g) a } |
d,8. b'16 a8. g16 |
\times 2/3 { fis8(a)g fis(a) g} |
fis2~ |

%--Bar 54--%
\times 2/3 { fis8  \noBeam fis' e  d(fis) e } |
d2~|
d~ |
d |
\times 2/3 { cis8 (b) a } a'4~ |
\times 2/3 { a8 b a } g4~ |
\times 2/3 { g8 a g } fis4~ |

%--Bar 61--%
\times 2/3 { fis8 b, d  e(fis) g } |
\times 2/3 { cis,( e) cis  a(b) cis } |
a8. g16 e8. d16 |
d2~ |
d~ |
d~|
d4 ~ \times 2/3 { d8 e fis } |

%--Bar 68--%
e2~ |
e ~ |
e ~|
e4 e' ~|
e fis~|
fis g~|
g a~|
a8. \noBeam a16 d8. a16|

%--Bar 76--%
\times 2/3 { b8( a) g fis(g) a } |
d,8. e16 cis8. d16 |
d2 |
 \times 2/3 { b8-\piano ( d fis) fis( e fis) |
   b,( d fis) fis( e fis) |
   b,( dis e) e( dis e) |
   ais,( cis e)  e( d! e) |
   b( d fis) fis( e fis) |
   cis( e g) g( fis g) |
 }

%--Bar 85--%
\times 2/3 { ais,(fis) e'  d(e)cis }|
b r fis r |
b r \times 2/3 { cis d e }|
\times 2/3 { fis(e) d  cis(b) ais }|
b8. fis'16-\forte  b8. fis16 |
g2~|
g8. g16  \times 2/3 {a8( fis) g } |
fis2~ |

%--Bar 93 --%
fis8. fis16 b8. g16 |

% \times 2/3 { } |
 \appoggiatura
   fis16( 
  e2)~ |
  \times 2/3 { e8 fis g fis(  g) e }  |
  \times 2/3 { d8( b  cis) d( fis  eis) }  |
  \times 2/3 { fis8(  gis) a gis(  a) fis }  |
  \times 2/3 { eis8(  gis) cis b(  a) gis }  |
 fis8. \noBeam cis16-\piano 
  \times 2/3 { cis8( b  cis) }  |
  \times 2/3 { fis,8( a  cis) cis( b  cis) }  |
  \times 2/3 { fis,8( ais  b) b( ais  b) }  |
  \times 2/3 { eis,8( gis  b) b( a  b) }  |
  \times 2/3 { fis8( a  cis) cis( b  cis) }  |
  \times 2/3 { gis8 b d d cis d }  |
  \times 2/3 { eis,8 cis b' a b gis }  |
 fis8 r r4 |
  \times 2/3 { r8 fis-\forte gis a cis b }  |
 cis4 r |
  \times 2/3 { r8 e, fis gis b a }  |
 b2\trill |
 a\trill |
 gis~ |
  \times 2/3 { gis8 eis fis gis(  eis) fis }  |
 gis4 gis'~ |
 gis4 fis~ |
 fis4 b~ |
 b4 a~ |
 a4 d~ |
 d4 cis8. b16 |
 a2~ |
 a4 gis8. fis16 |
 eis4 e~ |
 e8. \noBeam cis16 fis8. cis16 |
  \times 2/3 { d8(  cis) b a(  b) cis }  |
 fis,4 b~ |
  \times 2/3 { b8 a gis a(  b) cis }  |
  \times 2/3 { d8(  b) a }  gis8. fis16 |
 fis2~ |
 fis |
 r8 r16 fis' b8. fis16 |
  \times 2/3 { g!8(  fis) e dis(  e) fis }  |
  \times 2/3 { b,8(  e) g b(  a) b }  |
  \times 2/3 { e,8(  d) cis }  d4~ |
  \times 4/6 { d8 cis e }  a8. e16 |
  \times 2/3 { fis8(  e) d cis d e }  |
 a,8. gis16 
  \times 2/3 { fis8( a) d }  |
 d8. 
  \times 2/3 { cis32 b a gis8 b e }  |
 e8. 
  \times 2/3 { d32 cis b a8(  cis) fis }  |
 fis8. 
  \times 2/3 { e32 d cis b8(  d) gis }  |
  gis8.
  \times 2/3 { fis32 e d cis8(  e) a }  |
 a8. 
  \times 2/3 { g32 fis e d8 fis b }  |
  \times 2/3 { e,8(  fis ) gis }  a4~ |
 a2~ |
 a~ |
  \times 2/3 { a8 gis fis b(  cis) a }  |
  \times 2/3 { gis8(  fis) e }  a8. d,16 |
 cis8 r b\trill r |
 a8.-\piano cis16 
  \times 2/3 { cis8 b cis }  |
  \times 2/3 { e,8( a  cis) cis( b  cis) }  |
  \times 2/3 { fis,8( g!  a) b( cis  a) }  |
  \times 2/3 { d,8( gis  b) b( a  b) }  |
  \times 2/3 { e,8( a  cis) cis( b  cis) }  |
  \times 2/3 { d,8( fis  b) b( gis  a) }  |
  \times 2/3 { b8(  gis ) a e(  a) gis }  |
 a8 r r4 |
 R2 |
 r8 r16 b-\piano e8. b16 |
  \times 2/3 { c8(  b) a g a b }  |
 e,4 r |
 R2 |
 r8 r16 fis b8. fis16 |
  \times 2/3 { g8(  fis) e d(  e) fis }  |
 b,4 r |
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
 r8 r16 a' cis8. a16 |
 fis4 r |
 r8 r16 g b8. g16 |
 e4 r |
 r8 r16 a d8. a16 |
  \times 2/3 { b8(  a) g fis(  g) a }  |
 d,4 r |
 R2 |
 r8 r16 e a8. e16 |
  \times 2/3 { fis8(  e) d cis(  d) e }  |
 a,4 r |
 R2 |
  \times 2/3 { cis'8-\piano(  a) b cis(  a) b }  |
 cis2 ~ |
  \times 2/3 { cis8 \noBeam e d cis(  e) d }  |
 cis4 r |
 r4 r8 r16 b |
 e4~ e8. a,16 |
 d4~ d8. e16 |
 cis4~ cis8. cis16 |
  \times 2/3 { \tripletsShowOnce d8(  cis) b  \tripletsShowOnce a(  gis) fis }  |
 e8. cis'16 gis'4~ |
  \times 2/3 { gis8 fis eis fis(  gis) a }  |
 b2~ |
  \times 2/3 { b8 a gis a b cis }  |
 d2~ |
  \times 2/3 { d8 cis b cis(  d) e }  |
 ais,4 b~ |
  \times 2/3 { b8 a! gis a b c }  |
 dis,4 e~ |
  \times 2/3 { e8 fis e dis cis b }  |
 g'2~ |
  \times 2/3 { g8 fis, g a b c }  |
 d2~ |
  \times 2/3 { d8 c b }  c4~ |
  \times 2/3 { c8 b a b( c) a }  |
 a4 a'~ |
  \times 2/3 { a8 g fis g( a) g }  |
 fis2~ |
  \times 2/3 { fis8 e d }  e4~ |
  \times 2/3 { e8 fis e d(  cis) b }  |
  \times 2/3 { ais8( gis  ais) b( cis  d) }  |
  \times 2/3 { e8( fis  e) d( cis  b) }  |
 ais4~ 
  \times 2/3 { ais8 b cis }  |
  \times 2/3 { b8( cis  d) cis( d  e) }  |
 ais,8. b16 
  \tripletsShowOnce \times 2/3 { cis8( d e) }  |
  \tripletsShowOnce \times 2/3 { fis8( ais,) b }  fis'8. cis16 |
  \times 2/3 { d8(  cis) b ais(  b) cis }  |
 fis,2 |
 gis |
 ais |
 b |
 cis |
 d8. e16 fis8. g16 |
 d8 r d\trill r |
 b4 r |
 r8 r16 a d8. a16 |
  \tripletsShow \times 2/3 { b8(  a) g fis(  g) a }  |
 d,8 r cis r |
 d8 r e r |
  \times 2/3 { fis8(  a) d d(  cis) d }  |
  \times 2/3 { b8( e) d cis( fis) e }  |
 d8 r a r |
 b8 r cis r |
  \times 2/3 { d8(  fis) e d(  fis) e }  | \tripletsHide
 d4~ d8. cis16 |
  \times 2/3 { d8(  e) fis e(  fis) g }  |
  \times 2/3 { fis8(  g) fis e(  fis) d }  |
  \times 2/3 { cis8(  e) d cis(  d) e }  |
 b8 r cis r |
 d2~ |
 d~ |
  \times 2/3 { d8 e d cis( d) e }  |
 a,8. fis'16 e8. d16 |
  \times 2/3 { cis8( e) d cis( e) d }  |
 cis2~ |
  \times 2/3 { cis8 e, d cis(  e) d }  |
 cis2 |
 b |
 fis''~ |
 fis4 
  \tripletsShowOnce \times 2/3 { e8 fis gis }  |
 a4~ 
  \times 4/6 { a8 b a }  |
  \times 2/3 { gis8(  fis) e }  a4~ |
 a gis |
 a4~ 
  \times 4/6 { a8 g! fis }  |
 e4~ 
  \times 4/6 { e8 d cis }  |
  \times 2/3 { d8(  cis) b a(  e') g }  |
 fis8 r gis r |
 a8. \noBeam a16 d8. a16 |
  \times 2/3 { b8(  a) g fis(  g) a }  |
 d,8 r cis r |
 b8 r e r |
  \times 2/3 { d8(  fis) a a(  g) a }  |
  \times 2/3 { fis8(  b) a gis(  cis) b }  |
 a4~ 
  \times 2/3 { a8 b cis }  |
  \times 2/3 { d8(  cis) b a(  b) g }  |
 fis8 r g r |
 a8 r c, r |
 b8 r cis! r |
 d8 r 
  \times 2/3 { e,( a  cis) }  |
  \times 2/3 { fis,8( a  d) e,( a  cis) }  |
 d8 r g r |
 fis8 r d r |
 a8 r a8. g16 |
 fis8. g16 a4~ |
  \times 2/3 { a8 a g fis( g) a }  |
 d,8. b'16 a8. g16 |
  \times 2/3 { fis8(  a) g fis(  a) g }  |
 fis2~ |
  \times 2/3 { fis8 \noBeam fis' e d(  fis) e }  |
 d2~ |
 d~ |
 d |
  \times 2/3 { cis8(  b) a }  a'4~ |
  \times 2/3 { a8 b a }  g4~ |
  \times 2/3 { g8 a g }  fis4~ |
  \times 2/3 { fis8 b, d e(  fis) g }  |
  \times 2/3 { cis,8(  e) cis a b cis }  |
 fis,8. g16 e8. d16 |
 d2~ |
 d~ |
 d~ |
 d4~ 
  \times 2/3 { d8 e fis }  |
 e2~ |
 e~ |
 e~ |
 e4 e'~ |
 e fis~ |
 fis4 g~ |
 g4 a~ |
 a8. \noBeam a16 d8. a16 |
  \times 2/3 { b8(  a) g fis(  g) a }  |
 d,8. e16 cis8. d16 |
 d2-\fermata \bar "|." 
}