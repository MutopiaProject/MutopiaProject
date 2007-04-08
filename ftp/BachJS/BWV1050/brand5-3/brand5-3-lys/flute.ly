#(ly:set-point-and-click 'line-column )

\include "header.ly"
\version "2.4.0"

flute =  \relative c'' {
 \clef treble
 \key d \major
 \time 2/4

 \commonSettings

 % --Bar 1-- %
 R2|
 R2|
 r8 r16 d a'8. e16 |
 \times 2/3 { fis8 e d } \times 2/3 { cis d e } |

 %--Bar 5-- %
 a, r fis r | 
 g r a r |
 \times 2/3 { 
  b d fis  \tripletsHide fis e fis |
  d g fis   e a g |
  fis( a) g   fis( a) g |
  }
 
%--Bar 10--%
 fis8. b16 a8. g16 |
 fis 8. a,16 e'8. a,16 |
 fis'8 r gis r |
 a2 ~ |
 a ~ |
 a8 r gis r |
 a r b r |

%--Bar 17--%
e,8. e16 a8. e16 |  \tripletsShowOnce
 \times 2/3 { fis8 e d   cis d e |
  a, ( cis) b   a ( cis) b |  }
a2 ~|
 \times 2/3 { a8 cis b  a( cis) b } |
a2~ |
a~ |
a |

%--Bar 25--%
 \tripletsShowOnce \times 2/3 { gis8 a b } cis4~ |
\times 2/3 { cis8 fis e } d4~ |
d8. b'16 cis,8. fis16 |
\times 2/3 { e8 d cis  b cis d } |
\times 2/3 { cis b a } d4~|
\times 2/3 { d8 cis b } a8. g16|
 \tripletsShowOnce \times 2/3 { fis8 e d } a' r|
R2|

%--Bar 33--%
r8 r16 a' d8. a16 |
\times 2/3 { b8 a g   fis g a } |
d, r cis r |
d r e r |
\times 2/3 { d fis a   a g a } |
\times 2/3 { fis b a   gis cis b } |
a4 ~ \times 2/3 { a8 b cis } |
\times 2/3 { d cis b   a b g } |

%--Bar 41--%
fis r g r |
a r c, r |
b r cis! r |
d r \times 2/3 { a( cis  e) } |
\times 2/3 {  a,( d  fis) cis( e  g) } |
a r b r |

%--Bar 47--%
a r g r |
g r \times 2/3 { fis g a } |
d,4 ~  \tripletsShowOnce \times 2/3 { d8 e cis } |
\autoBeamOff d8. \autoBeamOn a'16 d8. a16 | % check beaming []
\times 2/3 { b8 a g  fis g a |
d, fis e d fis e | }
d2~ |


%--Bar 54--%
\times 2/3 { d8 \noBeam a' g fis a g } |
fis2 |
e ~|
e ~|
e4 ~  \tripletsShow \times 2/3 { e8 fis e } |
d4 ~   \times 2/3 { d8 e d } |
cis4   \times 2/3 { c8 d c } |

%--Bar 61--%
b4 g'~|
\times 2/3 { g8 cis, e fis g a } |  \tripletsHide
d,8. e16 cis8. d16 |
d4 c |
b a |
\times 2/3 { g8 a b a b cis^\fbna} | 
fis,4 d' ~ |

%--Bar 68--%
\times 2/3 { d8 \noBeam fis e d fis e } |
d2~ |
\times 2/3 { d8 \noBeam b cis d b cis } |
d4~ d8. e16 |
cis2 |
d |
e |
fis8. \noBeam a16 d8. a16 |

%--Bar 76-%
 \tripletsShowOnce \times 2/3 { b8( a) g fis(g) a } |
d,8. e16 cis8. d16 |
d2 |
r8 r16 fis -\cantabileB b8. fis16 | % \markup {  }
g2 ~ |
g8. g16 \times 2/3 { a8( fis) g } |
fis2~ |
fis8. fis16 b8. g16|
e2~ |

%--Bar 85-%
 \times 2/3 { e8 fis g fis g e |
  d b cis d fis e |
  fis e d cis d b |
  ais cis fis e d cis | \tripletsShowOnce
  b ^\piano (d fis) fis -\cantabileB ( e fis) | 
  b,( d fis) fis( e fis) |
  b,( dis e)  e( dis e) |
  ais,( cis e)  e( d! e) |
 }

%--Bar 93-%
\times 2/3 { b (d fis) fis( e fis) |
	cis( e g) g(fis g) |
	ais,( fis) e' d(e) cis | }
	b r b r |
	cis r \times 2/3{ b( a) b }|
\times 2/3{cis(b) a gis(fis)eis|
	fis( cis' fis) fis( e fis) | %99
	a,( cis fis)  fis (eis fis) |% 100
	}

%101
\times 2/3 { b,( cis d) b( cis a) |
gis( b eis)  eis( dis eis) |
a,( cis fis)  fis( eis fis) |
d!( b gis )  eis( gis fis) |
eis ( gis) fis  eis( fis) gis | }
a r r4 |
\times 2/3 { r8 a-\forte b cis e d } |
e r r4 |
\times 2/3 { r8 gis, a b d cis | }

%110
d2-\trill |
cis-\trill |
b ~ |
\times 2/3 { b8 \noBeam gis a  b( gis) a }
b2 |
a4 a' ~ |
a gis~ |
gis cis ~ |
cis b8. a16 |

%119
gis2 ~| 
gis4 fis8. e16 |
d2 ~ |
d4 cis 8. b16|
ais4 r |
r8 r16 fis' cis'8. gis16 |
\times 2/3 { a8( gis) fis  eis( fis) gis }|
cis,4 fis4~ |
%127
fis8. gis16 eis8. fis16 |
fis2 ~ |
fis |
r8 r16 fis b8. fis16 |
\times 2/3 { g!8( fis) e  dis( e) fis|
b,( e) g  b( a) b |
e,(d) a } d4 ~ |
\times 2/3 { d8 cis e } a8. e16 |

%135
\times 2/3 { fis8 e d cis d e } |
a,8. gis16 \times 2/3 { fis8 a d } |
d8. \times 2/3 { cis32 b a gis8 b e } |
e8. \times 2/3 { d32 cis b a8 cis fis } |
fis8. \times 2/3 { e32 d cis b8 d gis } |
gis8. \times 2/3 { fis32 e d cis8 e a } |
a8. \times 2/3 { gis32 fis e d8 fis b } |
\times 2/3 { e, fis gis } a4~ |

%143
a2 ~ |
a ~ |
\times 2/3 { a8 gis fis b cis a |
gis( fis e)} a8. d,16 |
cis8 r b-\trill r |
\times 2/3 { a-\piano( cis e) e( d e)|
a,( cis e) e( d e) |
a,( cis d) d( cis d) |

%151
gis,( b d) d( cis d) |
a( cis e) e( d e) |
b( d fis) fis( e fis) |
gis,( e) d'  cis( d) b |}
a r r4 |
R2 |
r8 r16 b16-\pianoB e8. b16 |
\times 2/3 { c8 b a g a b } |

%159
e, r r4 | 
R2 |
r8 r16 fis16 b8. fis16 |
\times 2/3 { g8( fis) e d( e) fis | }
b r r4 |
R2*13 |


%177
r8 r16 cis fis8. cis16 |
dis4 r |
r8 r16 b e8. b16 |
cis4 r |
r8 r16 a d8. a16 |
\times 2/3 { b8( a) g fis( g) a } |
d,4 r |
R2 * 5 |

%189
\times 2/3 { e'8-\piano ( cis) d  e( cis) d } |
e2 ~ |
\times 2/3 { e8 \noBeam g fis e( g) fis } |
e r r4 |

%193
r8 r16 fis b4 ~ |
b8. e,16 a4 ~ |
a8. b16 gis4 ~ |
gis8. a16 fis8. gis16 |
eis8. fis16 fis8.-\trill eis32 fis |
gis4 ~ gis8. cis,16 |
a'2 ~ |
\times 2/3 { a8 gis fis gis a b } |
cis2 ~ |
%202 

\times 2/3 { cis8 b a b cis d } |
eis,4  e~ |
\times 2/3 { e8 d cis d e fis } |
cis4 c ~ |
\times 2/3 { c8 b a g fis e  } |
fis2 ~ |
\times 2/3 { fis8 e fis g a b } |
c2~ |
\times 2/3 { c8 b c d e fis } |

%211
g4 ~ \times 2/3 { g8 a g } |
fis4 g ~ |
\times 2/3 { g8 fis e fis g e } |
dis4 e ~ |
\times 2/3 { e8 d! cis d e cis } |
b4 ~ \times 2/3 { b8 cis b } |
\times 2/3 { ais( gis) ais b cis d |
e ( fis e) d( cis b) |

%219
%on triplets?
ais( gis ais) b( cis d) | }
cis4 ~ \times 2/3 { cis8( d e ) } |
\times 2/3 { d( e fis) } e4 ~ |
e8. d16 cis4 ~ |
\times 2/3 { cis8 ais b } fis'8. cis16 |
\times 2/3 { d8( cis)b ais(b) cis  } |
fis,4 b ~ |
b cis ~ |
cis d ~ |
d e ~ |
e8. g16 fis8. e16 |
fis8. e16 fis8. g16 |
d8 r cis-\trill r |
b4 r |

%233
R2|
 R2|
 r8 r16 d a'8. e16 | \tripletsShowOnce
 \times 2/3 { fis8 e d } \times 2/3 { cis d e } |

 %--Bar 5-- %
 a, r fis r | 
 g r a r |
 \times 2/3 { \tripletsShowOnce
  b d fis   fis e fis |
  d g fis   e a g |
  fis( a) g   fis( a) g |
  }
 
%--Bar 10--%
 fis8. b16 a8. g16 |
 fis 8. a,16 e'8. a,16 |
 fis'8 r gis r |
 a2 ~ |
 a ~ |
 a8 r gis r |
 a r b r |

%--Bar 17--%
e,8. e16 a8. e16|
 \tripletsShowOnce \times 2/3 { fis8 e d   cis d e |
  a, ( cis) b   a ( cis) b |  }
a2 ~|
 \times 2/3 { a8 cis b  a( cis) b } |
a2~ |
a~ |
a |

%--Bar 25--%
\tripletsShowOnce \times 2/3 { gis8 a b } cis4~ |
\times 2/3 { cis8 fis e } d4~ |
d8. b'16 cis,8. fis16 |
\times 2/3 { e8 d cis  b cis d } |
\times 2/3 { cis b a } d4~|
\times 2/3 { d8 cis b } a8. g16|
\times 2/3 { fis8 e d } a' r|
R2|

%--Bar 265 --%
r8 r16 a' d8. a16 |
\times 2/3 { b8 a g   fis g a } |
d, r cis r |
d r e r |
\times 2/3 { d fis a   a g a } |
\times 2/3 { fis b a   gis cis b } |
a4 ~ \times 2/3 { a8 b cis } |
\times 2/3 { d cis b   a b g } |

%--Bar 273--%
fis r g r |
a r c, r |
b r cis! r |
d r \times 2/3 { a( cis  e) } |
\times 2/3 {  a,( d  fis) cis( e  g) } |
a r b r |

%--Bar 279--%
a r g r |
g r \times 2/3 { fis g a } |
d,4 ~ \tripletsShowOnce \times 2/3 { d8 \noBeam e cis } |
\autoBeamOff d8. \autoBeamOn a'16 d8. a16 | % check beaming []
\times 2/3 { b8 a g  fis g a |
d, fis e d fis e | }
d2~ |


%--Bar 286--%
\times 2/3 { d8 \noBeam a' g fis a g } |
fis2 |
e ~|
e ~|
e4 ~ \tripletsShow \times 2/3 { e8 \noBeam fis e } |
d4 ~ \times 2/3 { d8 e d } |
cis4 \times 2/3 { c8 d c } |

%--Bar 293--%
b4 g'~|
\times 2/3 { g8 cis, e fis g a } | \tripletsHide
d,8. e16 cis8. d16 |
d4 c |
b a |
\times 2/3 { g8 a b a b cis^\fbna} |
fis,4 d' ~ |

%--Bar 300--%
\times 2/3 { d8 \noBeam fis e d fis e } |
d2~ |
\times 2/3 { d8 \noBeam b cis d b cis } |
d4~ d8. e16 |
cis2 |
d |
e |
fis8. \noBeam a16 d8. a16 |

%--Bar 308-%
\tripletsShowOnce \times 2/3 { b8( a) g fis(g) a } |
d,8. e16 cis8. d16 |
d2-\fermata \bar "|." |




} %end flute notes

