#(ly:set-point-and-click 'line-column )

\include "header.ly"

\version "2.18.0"
harpsichordTreble =  \relative c'' {

\commonSettings
   \triplets \tripletsHide

% --Bar 1-- %
    \repeat unfold 10 R2| 

% --Bar 11-- %
    r8 r16 d a'8. e16 |
    \tuplet 3/2 { fis8 e d  cis d e } |
    \tuplet 3/2 { a, cis b  a b cis } |
    \tuplet 3/2 { fis, b a  gis cis b } |
    \tuplet 3/2 { a16 gis a b cis d   e fis e d cis b } |
    \tuplet 3/2 { a cis b a gis fis   e fis e d cis b } |

% --Bar 17-- %
\change Staff = harpsichordDown \stemUp  a8  \change Staff = harpsichordUp  r a' r |
   a r gis d'\rest | \tieUp
   a2 \trill ~ |
   \tuplet 3/2 { a8 \noBeam cis b  a gis! fis } |
   e2 \trill ~| 
   \tuplet 3/2 { e8 \noBeam cis d   e d e  |
        fis a gis  fis a gis |
        fis dis! e   fis e fis  | }
   gis r <e' cis b> r|
   \tieNeutral
% --Bar 26-- %
   <a, cis e > r < fis b d> r |
   <gis b d > r 
  << { cis8. d16 | e8. fis16 } 
	\\
	{  a,4~ |a } >> %\stemDown
\stemNeutral b8. a16 | 
a8 r  s ^"accomp." s
s2 s s
% --Bar 33-- %
s s s s s
R2| 
R |
r8 r16 d a'8. e16 |

% --Bar 41-- %
\tuplet 3/2 {fis8 e d cis d e  |
  a,16 fis g a b cis d e d cis b a |
  b d cis b a g fis e fis g a fis |
  d cis d e fis g a b a g fis e|
  fis a g fis e d cis b cis d e cis |
  a d e fis e d b e fis g fis e | }

% --Bar 47-- %
\tuplet 3/2 { cis16 fis g a g fis d g a b a g |
e g a b a g  fis g a b cis a |
d8 cis b a b g |
}
fis r d' r |
d r cis r |
d2-\trill ~ 
\tuplet 3/2 { d8 \noBeam fis e d cis b  }

% --Bar 54- %
a2-\trill ~ |
\tuplet 3/2 { a8 \noBeam fis g a g a |
b d cis b d cis |
b gis a b a b | }
\stemUp cis r \tuplet 3/2 { r16 g' fis e d cis } |
d8 r \tuplet 3/2 { r16 fis e d cis b} |
cis8 r \tuplet 3/2 { r16 e d c b a } |
\tuplet 3/2 { b c b a g fis } r8 r16 <e g b> | %<c e g>  or <g e c>?
<e g a cis>8 r <fis a d> r |
<fis b d>8. <e b' d>16 <e a cis>8. <e g cis>16 |
<d fis a d>8 r ^"accomp." r4 | \stemNeutral
s2 | s2| % 2 completely emtpy bars
r8 r16 g d'8. a16 |

% --Bar 68- %
b2-\trill ~ |
\tuplet 3/2 {b8 \noBeam d cis b d cis } |
b2^\trillB ~ | 
\tuplet 3/2 {b8 \noBeam d cis b a gis | 
cis e d cis b a |
d fis e d cis b |
e g fis e d cis |}
fis8 r s4 ^"accomp." |

% --Bar 76- %
s2*3|
\tuplet 3/2{
fis,8-\pianoB( b d) d( cis d)|
fis,( b d) d( cis d)|
g,! (ais b) cis(ais b)|
e,( ais cis)  cis(b cis)|
fis,(b d) d (cis d)|
e,(g cis) cis(ais b)

%85
cis( ais) b (fis b) ais |}
b8 r r4 |
s2*2|
\tuplet 3/2 { b8(-\pianoB fis' b) b( ais b) |
d,( fis b) b(ais b) |
e, (fis g)  e(fis d) |
cis ( e ais) ais(gis ais) |}

%93
\tuplet 3/2 { d,8( fis b) b( ais b) |
g!( e cis)  ais( cis b) |
ais( cis) b ais(b) cis | }
d r r4 |
s2 * 2 |

r8 r16 cis_\cantabileB fis8. cis16 |
d2 ~ |

%101
d8. d16 \tuplet 3/2 { e8( cis) d } |
cis2 ~ |
cis8. cis16 fis8. d16 |
b2-\trill ~ |
\tuplet 3/2 { b8 cis d cis d b |
a \noBeam fis_\forteI gis a cis b | } 
cis r r4 |
\tuplet 3/2 { r8 e, fis gis b a  } |
b r r4 |

%110
\tuplet 3/2 { r8 d, e fis a gis |
a cis, dis eis gis fis |
gis b a gis b a | }
gis2-\trill ~ |
\tuplet 3/2 { gis!8 \noBeam eis fis gis fis gis |
a fis gis a gis a |
b gis a b ais b |
cis a b cis b cis |
d b cis d cis d |

%119
gis, b a gis fis gis |
a a, b cis b cis |
d b cis d cis d |
gis, a b } cis4 ~ |
\tuplet 3/2 { cis8 d e } fis4 ~ |
fis8. fis16 \tuplet 3/2 { eis8 fis gis } |
cis,8. cis'16 \tuplet 3/2 { b8 cis d } |
eis,8.-\trill dis32 eis \tuplet 3/2 { fis8 gis a } |

%127
\tuplet 3/2 { b cis d cis d b |
a gis fis } r4^"accomp" |
s2 * 19 |

%148
\tuplet 3/2 { cis'8_\pianoB( e a) a( gis a) |
cis,( e a) a( gis a)  |
d,( e fis)  d( e cis) |

%151
b( d gis) gis( fis gis) |
cis,( e a) a( gis a) |
fis( d b) gis( b a) |
gis( b) a gis( a) b |
cis \noBeam a_\forteI b  cis e d |
e cis d e g fis | }
g2-\trill ~ |
g |

%159
\tuplet 3/2 { g8 \noBeam g, a b d cis |
d b cis d fis e | }
fis2-\trill ~ |
fis ~|
fis8. \noBeam fis16 b8. fis16 |
\stemUp \tuplet 3/2 { g8 fis e d e fis | }
b,8. fis16 \tuplet 3/2 { b8 d cis |
\stemNeutral d b cis d fis e |}
fis8. b,16 fis'8. cis16 |

%168
\tuplet 3/2 { d8 cis b ais b cis } |
fis,4 e' ~ |
\tuplet 3/2 { e8 d cis b cis ais |
g' fis e d e cis | }
b8. fis16 b8. fis16 |
\tuplet 3/2 { g8 fis e d e fis } |
b,8. fis16 \tuplet 3/2 { b8 d cis |
d b cis d fis e |
fis d e fis a gis | }

%177
a2-\trill ~ |
\tuplet 3/2 { a8 \noBeam c b a g fis } |
g2-\trill ~ |
\tuplet 3/2 { g8 \noBeam b a g fis e } |
fis2^\trillB ~ |
fis |
\tuplet 3/2 { fis8 \noBeam d e fis a g |
a fis g a cis b } |
cis2-\trill ~ |

%186
cis ~ |
\tuplet 3/2 { cis8 \noBeam a b cis e d |
e cis d e g fis } |
g2-\trill ~ |
\tuplet 3/2 { g8 \noBeam  e fis g e fis } |
g2-\trill ~ |
\tuplet 3/2 { g8 b a g fis e |
fis a g fis e d |
e g fis e d cis } |

%195
\tuplet 3/2 { d fis e d cis b |
cis e d cis d cis |
b a b cis d16 cis b a | }
gis8. fis16 \tuplet 3/2 { eis8 gis b } |
\tuplet 3/2 { a cis b a cis fis |
b, d cis b fis' eis |
fis a, b cis d e |
d fis e d fis b |

%203
gis eis fis } g4 ~ |
\tuplet 3/2 { g8 fis e! d cis b |
cis fis e dis e fis |
b, e fis g a b |
c! dis, e b e dis |
e b a g fis g |
e a g fis g a |
d, g a b c a |

%211
g a b } e,8. e'16 |
\tuplet 3/2 { a8 d, c b a g } |
a4 ~ \tuplet 3/2 { a16 g fis e dis e } |
\tuplet 3/2 { fis8 b a g fis e |
fis b ais b fis' ais, | }
b r r4 |
r8 r16 cis \tuplet 3/2 { fis8( ais,) b } |
cis8. fis,16 \tuplet 3/2 { b8 gis eis } |

%219
fis8. cis16 \tuplet 3/2 { d8 \change Staff = harpsichordDown \stemUp ais b } | 
\change Staff = harpsichordUp \stemNeutral 
s2 * 2 |
s2^"accomp." | 
s2 *2 |
\tuplet 3/2 { r8 d e fis gis a |
gis e fis gis ais b |

%227
ais fis gis ais b cis |
b gis a! b cis d |
cis ais b cis d e |
fis( d) b fis'( d) b |
fis'( d) b fis( b ais) } |
b4 r | 
<< \shiftOn \stemUp { < d, fis a > } \\ { \stemUp d' }   >>r | %
\stemNeutral \shiftOff
%repeat bar 1 to 76
% --Bar 1-- %
    R2 * 9 | 
    
% --Bar 11-- %
    r8 r16 d a'8. e16 |
    \tuplet 3/2 { fis8 e d  cis d e } |
    \tuplet 3/2 { a, cis b  a b cis } |
    \tuplet 3/2 { fis, b a  gis cis b } |
    \tuplet 3/2 { a16 gis a b cis d   e fis e d cis b } |
    \tuplet 3/2 { a cis b a gis fis   e fis e d cis b } |

% --Bar 17-- %
\change Staff = harpsichordDown \stemUp  a8  \change Staff = harpsichordUp  r a' r |
   a r gis r |
   \tieUp a2 \trill ~ |
   \tuplet 3/2 { a8 \noBeam cis b  a gis! fis } |
   e2 \trill ~| 
   \tuplet 3/2 { e8 \noBeam cis d   e d e  | \tieNeutral
        fis a gis  fis a gis |
        fis dis! e   fis e fis  | }
   gis r <e' cis b> r|

% --Bar 26-- %
   <a, cis e > r < fis b d> r |
   <gis b d > r 
  << { cis8. d16 | e8. fis16 } 
	\\
	{  a,4~ |a } >> %\stemDown
\stemNeutral b8. a16 | 
a8 r  s ^"accomp." s
s2 s s
% --Bar 33-- %
s s s s s
R2| 
R |
r8 r16 d a'8. e16 |

% --Bar 41-- %
\tuplet 3/2 {fis8 e d cis d e  |
  a,16 fis g a b cis d e d cis b a |
  b d cis b a g fis e fis g a fis |
  d cis d e fis g a b a g fis e|
  fis a g fis e d cis b cis d e cis |
  a d e fis e d b e fis g fis e | }

% --Bar 47-- %
\tuplet 3/2 { cis16 fis g a g fis d g a b a g |
e g a b a g  fis g a b cis a |
d8 cis b a b g |
}
fis r d' r |
d r cis r |
d2-\trill ~ 
\tuplet 3/2 { d8 \noBeam fis e d cis b  }

% --Bar 54- %
a2-\trill ~ |
\tuplet 3/2 { a8 \noBeam fis g a g a |
b d cis b d cis |
b gis a b a b | }
\stemUp cis r \tuplet 3/2 { r16 g' fis e d cis } |
d8 r \tuplet 3/2 { r16 fis e d cis b} |
cis8 r \tuplet 3/2 { r16 e d c b a } |
\tuplet 3/2 { b c b a g fis } r8 r16 <e g b> | %<c e g>  or <g e c>?
<e g a cis>8 r <fis a d> r |
<fis b d>8. <e b' d>16 <e a cis>8. <e g cis>16 |
<d fis a d>8 r ^"accomp." r4 | \stemNeutral
s2 | s2| % 2 completely emtpy bars
r8 r16 g d'8. a16 |

% --Bar 68- %
b2-\trill ~ |
\tuplet 3/2 {b8 \noBeam d cis b d cis } |
b2^\trillB ~ | %(tr)?
\tuplet 3/2 {b8 \noBeam d cis b a gis | 
cis e d cis b a |
d fis e d cis b |
e g fis e d cis |}
fis8 r s4 ^"accomp." |

% --Bar 76- %
s2*3|
	

}   %~~end harpsichordTreble~~%


harpsichordBass =  \relative c' {
 \set Score.skipTypesetting = ##t
 \set Score.skipTypesetting = ##f
 \commonSettings
 \triplets \tripletsHide
 
 

 % --Bar 1-- %
 R2|
 R2|
 R2|
 R2|
 R2|
 R2|
 R2|
 R2|

 % --Bar 9-- %
 r8 r16 a d8. a16_\fbRootVII |
 \tuplet 3/2 { b8_\fbRootV a g  fis_\fbIinv g a } |
 d, r cis r |
 d r e r |
 fis r cis r |
 d r e r |
 fis r e r |
fis r gis r |


 % --Bar 17-- %
\tuplet 3/2 { a cis b a b cis } |
d r \change Staff = harpsichordUp \stemDown e c\rest | \tieDown %\voiceTwo
fis2_\trill ~ | 
\tuplet 3/2 { fis8 \noBeam a gis  fis e d } |
cis2_\trill ~|
\tuplet 3/2 { cis8 \noBeam a b   cis b cis } | \tieNeutral
\tuplet 3/2 { dis fis e  dis fis e } |
\tuplet 3/2 { dis b cis  dis cis dis } |
\tuplet 3/2 { e16 d! e  fis e d   cis d cis \change Staff = harpsichordDown \stemUp  b a gis | }

\stemNeutral 
% --Bar 26-- %
\tuplet 3/2 { fis e fis  gis a fis   b cis b  a gis fis |
e d e  fis gis e   fis a gis fis e d |
cis8 b a } e'8. e,16 |
a8 r fis_\fbIinv r |
g_\fbIinvVII r 
<<	
	 { \voiceOne a d\rest } \\ 
{ 
\tuplet 3/2 { s_\fbIinvVII s_\fbIVMv s_\fbVnIII } 
}


>>
\oneVoice
 | 


b r cis_\fbIinv r |
d r e_\fbIinv r |

% --Bar 33-- %
fis_\fbRootV r fis_\fbIinv r |
g r a_\fbIinv r |
b r a_\fbIinv r |
b_\fbIinvVII r cis_\fbIinvVII r |
d r r4 |
R2 |
r8 r16 a d8. a16 |
 \tuplet 3/2 { b8 a g  fis g a } |

% --Bar 41-- %
d, r e r |
fis r fis, r |
g r a r |
b r cis r |
d r e r |
fis r g r |

% --Bar 47-- %
a8 r b r |
cis8. \noBeam a16 d8. a16 |
\tuplet 3/2 { b8 a g fis g  a } |
\tuplet 3/2 { d, fis e d e fis } |
g r a r |
b2-\trill ~ |
\tuplet 3/2 { b8 \noBeam d cis b a g} |
fis2-\trill ~ |
\tuplet 3/2 { fis8 \noBeam d e fis e fis} |
\tuplet 3/2 { gis b a gis b a } |
\tuplet 3/2 { gis e fis gis fis gis } |
\stemDown \tuplet 3/2 { a16 cis \change Staff = harpsichordUp d e fis g! } a8 r |
\change Staff = harpsichordDown \tuplet 3/2 { r16 b, cis d \change Staff = harpsichordUp e fis } g8 r |
\change Staff = harpsichordDown \tuplet 3/2 { r16 a, b cis d \change Staff = harpsichordUp e  }fis8 r |

% --Bar 61-- %
\change Staff = harpsichordDown g, r \change Staff = harpsichordUp \tuplet 3/2 { e'16 fis e d cis! \change Staff = harpsichordDown \stemNeutral b} |
\tuplet 3/2 { a b a g fis e d e d cis b a |
b8 a g } a8. a16 |
d,8 r fis r | % 6 3?
g r c r | % <2 4 6>
b8. \noBeam g'16 d'8. a16 |
\tuplet 3/2 {b8 a g fis gis a |}

% --Bar 68-- %
gis2-\trill ~ |
\tuplet 3/2 {gis8 \noBeam b a gis b a }|
gis2^\trillB ~ | 
\tuplet 3/2 {gis8 \noBeam b a gis fis e |
a cis b a g! fis |
b d cis b a g |
cis e d cis b a |}
d r fis, r |
g r a r |
\tuplet 3/2 {b a g} a8. a,16 |
\tuplet 3/2 {d8 fis e d e fis}|
b,8 r r4 |
%79
\repeat unfold 5{ b8 r r4 |}

%85
b8 r r4 |
b8. \noBeam fis'16 \tuplet 3/2 { b8 d cis |
d cis b ais b cis |}
fis,4 ~ \tuplet 3/2 { fis8 g e |
d cis b } r4 |
%90
\repeat unfold 6 { b8 r r4 | }
%96
b8. \noBeam fis'16 \tuplet 3/2 { b8 a gis |
a gis fis eis fis gis |}
cis,4 ~ \tuplet 3/2 { cis8 d b |
a gis fis } r4 |
%100
\repeat unfold 6 { fis8 r r4 | }
%106
fis8.\noBeam cis'16 \tuplet 3/2 { fis8 a gis } |
a8 r r4 |
%108
\tuplet 3/2 { r8 cis, d e gis fis } |
gis r r4 |
\tuplet 3/2 { r8 b, cis d fis eis | 
fis a, b cis eis dis |
eis gis fis eis gis fis |}
eis2-\trill ~ |
\tuplet 3/2 { eis!8 \noBeam cis dis eis! dis eis |
%115
fis d! e! fis e fis |
gis e fis  gis fis gis |
a fis gis a gis a |
b gis a b a b |
%119
eis, gis fis eis dis eis|
fis fis, gis a gis a |
b gis a b a b |}
cis4 ~ \tuplet 3/2 { cis8 d e } |
fis4 ~ \tuplet 3/2 { fis8 gis ais |
	b  cis d cis dis eis |
	fis, gis a gis a b |
a b cis } d, r |

%127
b r cis r |

% --Bar 128 -- %
fis, r a r |
b r cis r |
d r dis r |
e r fis r |
g r gis r |
a r b r |
cis r cis, r  |

% --Bar 135 -- %
d r e r |
fis r fis, r |
gis r gis' r |
a r a, r |
b r b' r |
cis r cis, r |
d r d' r |
d r cis r |

% --Bar 143 -- %
d r e r |
\tuplet 3/2 { fis e d cis dis e }
dis4 r8 b |
e8. d!16 cis8. fis,16 |
e8. d16 e8. e,16 |
a8 r a' r |
\repeat unfold 6 { a, r a ' r |}

% --Bar 155 -- %
\tuplet 3/2 { a, \noBeam cis e a cis b |
cis a b cis e dis | }
e2-\trill ~ |
e2 ~ |

% --Bar 159 -- %
\tuplet 3/2 { e8 \noBeam e, fis g b a |
b g a  b d cis |}
d2-\trill ~ |
d2 ~ |
d8 r r4 |
\change Staff = harpsichordUp
\stemDown
r8 r16 fis b8. fis16 |
\tuplet 3/2 { g8 fis e  d e fis |}
\stemNeutral \change Staff = harpsichordDown
b,8. fis16 \tuplet 3/2 { b8 d cis } |
\tuplet 3/2 { d b cis d fis e } |

%168
fis8. b,16 fis'8. cis16 |
\tuplet 3/2 { d8 cis b ais b cis } |
fis,4 e' ~ |
\tuplet 3/2 { e8 d cis b cis ais } |
\tuplet 3/2 { g' fis e d e cis  } |
b8. fis16 b8. fis16 |
\tuplet 3/2 { g8 fis e d e fis } |
b,8. fis16 \tuplet 3/2 { b8 d cis } |
\tuplet 3/2 { d b cis d fis eis } |

%177
fis2-\trill ~ |
\tuplet 3/2 { fis8 \noBeam a g fis e dis } |
e2-\trill ~ |
\tuplet 3/2 { e8 \noBeam g fis e d cis } |
d2-\trillB ~ |
d ~ |
\tuplet 3/2 { d8 \noBeam fis, a d fis e } |
\tuplet 3/2 { fis d e fis a gis } |
a2^\trillB ~ |
%186
a2 ~ |
\tuplet 3/2 { a8 \noBeam cis, e a cis b |
cis a b cis e d } |
e2-\trill ~
\tuplet 3/2 { e8 \noBeam cis d e cis d  } |
e2-\trill ~ |
\tuplet 3/2 { e8 g fis e d cis | 
d fis e d cis b |
cis e d cis b a | }

%195
\tuplet 3/2 { b d cis b a gis |
a cis b a b a | 
gis a gis fis eis fis |
cis eis dis cis dis eis |
fis a gis  fis eis fis |
gis b a  gis fis gis |
a cis b  a gis fis |
b d cis  b a gis |}

% --Bar 203 -- %
cis8 r cis, r |
fis8 r r4 |
fis8 r fis, r |
g8 r r4 |
a8 r b r |
e,8 r r4 |
a8 r d r |
b r g r |


% --Bar 211 -- %
\tuplet 3/2 { e fis g a b c } |
d, r g r |
d' r c r |
b2~ |
b8. \noBeam fis'16 b8. fis16 |
g8. fis16 g8. e16 |
<< { \tieDown fis,2 ~ | fis ~ | fis  } \\
	{ \tieUp \stemUp fis' ~ |  fis~ |  fis } >>  |

% --Bar 220 -- %
<< { \tieDown fis,^\markup {\bold "tasto solo"} ~ | fis ~ | fis8.  } \\
	{ \tieUp \stemUp fis'2 ~|  fis ~|  fis8. } >>  
\stemNeutral \tieNeutral
% --Bar 222 -- %
\voiceOne b,16 fis'8. a,16 |
%should beam down
\tuplet 3/2 {b8 a g  ais b cis }|
fis,4 ~ \tuplet 3/2 {fis8 fis' e } |
\tuplet 3/2 { d b cis d e fis |
e cis d e fis g | }

%227
\tuplet 3/2 { fis d e fis g a |
g e fis gis a b |
a fis gis ais b cis | }
b8. g!16 d8. e16 |
fis8. e16 fis8. fis,16 |
b4 r |
\oneVoice
%233
<< { \stemDown d } \\ { \stemUp a'} \\ { \stemUp fis } >> \oneVoice r |
\stemNeutral

%234
R2*7 |
%241

% --Bar 9-- %
 r8 r16 a d8. a16_\fbRootVII |
 \tuplet 3/2 { b8_\fbRootV a g  fis_\fbIinv g a } |
 d, r cis r |
 d r e r |
 fis r cis r |
 d r e r |
 fis r e r |
fis r gis r |


 % --Bar 17-- %
\tuplet 3/2 { a cis b a b cis } |
d r \change Staff = harpsichordUp \stemDown e r | \tieUp %\voiceTwo
fis2_\trill ~ | 
\tuplet 3/2 { fis8 \noBeam a gis  fis e d } |
cis2_\trill ~|
\tuplet 3/2 { cis8 \noBeam a b   cis b cis } | \tieNeutral
\tuplet 3/2 { dis fis e  dis fis e } |
\tuplet 3/2 { dis b cis  dis cis dis } |
\tuplet 3/2 { e16 d! e  fis e d   cis d cis \change Staff = harpsichordDown \stemUp  b a gis | }

\stemNeutral 
% --Bar 26-- %
\tuplet 3/2 { fis e fis  gis a fis   b cis b  a gis fis |
e d e  fis gis e   fis a gis fis e d |
cis8 b a } e'8. e,16 |
a8 r fis_\fbIinv r |
g_\fbIinvVII r 
<<	
{ 
\tuplet 3/2 { s_\fbIinvVII s_\fbIV s_\fbVnIII } 
}
	\\ { \stemUp a d\rest } 
>>
\oneVoice
 | 


b r cis_\fbIinv r |
d r e_\fbIinv r |

% --Bar 33-- %
fis_\fbRootV r fis_\fbIinv r |
g r a_\fbIinv r |
b r a_\fbIinv r |
b_\fbIinvVII r cis_\fbIinvVII r |
d r r4 |
R2 |
r8 r16 a d8. a16 |
 \tuplet 3/2 { b8 a g  fis g a } |

% --Bar 41-- %
d, r e r |
fis r fis, r |
g r a r |
b r cis r |
d r e r |
fis r g r |

% --Bar 47-- %
a8 r b r |
cis8. \noBeam a16 d8. a16 |
\tuplet 3/2 { b8 a g fis g  a } |
\tuplet 3/2 { d, fis e d e fis } |
g r a r |
b2-\trill ~ |
\tuplet 3/2 { b8 \noBeam d cis b a g} |
fis2-\trill ~ |
\tuplet 3/2 { fis8 \noBeam d e fis e fis} |
\tuplet 3/2 { gis b a gis b a } |
\tuplet 3/2 { gis e fis gis fis gis } |
\stemDown \tuplet 3/2 { a16 cis \change Staff = harpsichordUp d e fis g! } a8 r |
\change Staff = harpsichordDown \tuplet 3/2 { r16 b, cis d \change Staff = harpsichordUp e fis } g8 r |
\change Staff = harpsichordDown \tuplet 3/2 { r16 a, b cis d \change Staff = harpsichordUp e  }fis8 r |

% --Bar 61-- %
\change Staff = harpsichordDown g, r \change Staff = harpsichordUp \tuplet 3/2 { e'16 fis e d cis! \change Staff = harpsichordDown \stemNeutral b} |
\stemNeutral
\tuplet 3/2 { a b a g fis e d e d cis b a |
b8 a g } a8. a16 |
d,8 r fis r | % 6 3?
g r c r | % <2 4 6>
b8. \noBeam g'16 d'8. a16 |
\tuplet 3/2 {b8 a g fis gis a |}

% --Bar 68-- %
gis2-\trill ~ |
\tuplet 3/2 {gis8 \noBeam b a gis b a }|
gis2-\trill ~ | %(tr)
\tuplet 3/2 {gis8 b a gis fis e |
a cis b a g! fis |
b d cis b a g |
cis e d cis b a |}

d r fis, r |
g r a r |
\tuplet 3/2 {b a g} a8. a,16 |
d2-\fermata \bar "||"

} % end for Notes Bass


% end for notes

harpsichordTa = 

\context PianoStaff  <<
	
	\context Staff = harpsichordUp <<  \time 2/4 \clef treble \key d \major
		\set Staff.midiInstrument = "harpsichord" 
		\harpsichordTreble
	>>

	\context Staff = harpsichordDown <<   \time 2/4 \clef bass  \key d \major
		\set Staff.instrumentName = \markup \smaller { 
			\column {
				"Cembalo" 
				"concertato."
			 } }
		%"Harpischord solo"
		%\set Staff.shortInstrumentName = "Clavier"
		\set Staff.midiInstrument = "harpsichord" 	 	
		\harpsichordBass
	>>
>>
