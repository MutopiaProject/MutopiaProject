#(ly:set-option 'old-relative)
\version "2.12.3"

VioloncelloSpringThree =  {
\clef bass
\key e \major
\time 12/8

\mark "G"
\relative e {
e1._"Allegro"^"Danza Pastorale" ~ |
e1. |
e2. b2. |
e1._"Piano" ~ |
% 5
e1. |
e2. b2. ~ |
b1. ~ |
b1. ~ |
b1. |
% 10
b2. e2. |
e1. ~ |
e1. ~ |
e1. ~ |
e1. |
% 15
gis4. e a r4 r8 |
ais4. fis b r4 r8 |
bis4. gis cis cis |  % solo part had written a b instead of bis
bis b ais a |
gis gis fis fis |
% 20
cis cis cis cis |
cis fis gis gis, |
cis1. ~ |
cis1. ~ |
cis2. gis'2. |
cis,2. dis4. bis4. |
cis4. fis4. gis4 fis8 e4 dis8 |
cis2._"Piano" dis4. bis4. |
cis4. fis4. gis4 fis8 e4 dis8 |
cis2._"Forte" fis8 ( gis  a) a ( gis  fis) |
b,2. e8 ( fis  gis) gis ( fis  e) |
b ( cis  dis) dis ( cis  b)	e ( fis  gis) gis ( fis  e) |
b ( cis  dis) dis ( cis  b)	e ( fis  gis) gis ( fis  e) |
e2. dis8 ( cis  b) b ( cis  dis) |
e4. fis b, r4 r8 |
b4. r4 r8 	b4. r4 r8 |
b4. r4 r8 	dis4. b |
e, r4 r8 	gis'4. e |
a, r4 r8 	cis'4. a |
d, r4 r8 	dis4. b |
e2. b2. ~ |
b1. ~ |
b1. |
e1. ~ |
e1. ~ |
e1. ~ |
e1. ~ |
e1. ~ |
e2. r2. |
R1.*9 |
r2. e2. ~ |
e1. ~ |
e1. |
b2.	\key e \minor	e4. ~ e4 a8 |
b8. a16 b8  b8. a16 b8	d,4. ~ d4 g8 |
a8. g16 a8  a8. g16 a8	a4. ~ a4 a8 |
b4 b,8 b4 b'8	e8( d  e)  gis, ( fis  e) |
a( gis  a)  c,( b  a) 	d' ( c  d)  fis, ( e  d) |
g( fis  g)  b,( a  g) 	c'( b  c)  e, ( d  c) |
a'( gis  a)  b( a  b) 	c ( b  c)  b( a  b) |
e,4. e' dis d |
cis c b2. |
e,4. e' dis d |
cis c b,2. ~ |
b1. ~ |
b1. ~ |
b1. ~ |
b1. ~ |
b1. ~ |
b1. ~ |
b1. |
e4. b4. 	\key e \major 	e2. ~ |
e1. ~ |
e1. |
b1. ~ |
b1. |
e1. ~ |
e1. ~ |
e4 e,8_"Tutti" b''4 b,8 e2. ~ |
e1. ~ |
e2. ~ e4 e,8_"Tutti" b''4 b,8 |
e,1.^\fermata |
}
\bar "|."
}


%\score {
%\VioloncelloSpringThree
%}

