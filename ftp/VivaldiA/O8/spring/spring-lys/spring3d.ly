\version "1.7.13"
\include "figured-accidentals.ly"

VioloncelloSpringThree = \notes {
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
e2. b2._"Tasto Solo" ~ |
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
gis4.^#'(lines "6") e a r4 r8 |
ais4.^#'(lines "6") fis ais r4 r8 |
bis4.^#'(lines "6") gis cis cis |  % solo part had written a b instead of bis
bis b ais a |
gis gis fis fis |
% 20
cis cis cis cis |
cis fis^#'(lines "7" "5") gis^#'(lines "6" "4") gis,^#`(lines "5" (columns ,figsharp)) |
cis1._"Tasto Solo" ~ |
cis1. ~ |
cis2. gis'2. |
cis,2.^#'(lines "6") dis4.^#'(lines "9") bis4.^#'(lines "6") |
cis4.^#'(lines "9") fis4.^#'(lines "6") gis4^#'(lines "5" "4") fis8 e4 dis8 |
cis2.^#'(lines "6")_"Piano" dis4.^#'(lines "9") bis4.^#'(lines "6") |
cis4.^#'(lines "9") fis4.^#'(lines "6") gis4^#'(lines "5" "4") fis8 e4 dis8 |
cis2._"Forte" fis8 ( gis ) a a^#'(lines "6") ( gis ) fis |
b,2. e8 ( fis ) gis gis^#'(lines "6") ( fis ) e |
b ( cis ) dis dis ( cis ) b	e ( fis ) gis gis^#'(lines "6") ( fis ) e |
b ( cis ) dis dis ( cis ) b	e ( fis ) gis gis^#'(lines "6") ( fis ) e |
e2.^#`(lines (columns "4" ,figsharp) "2") dis8^#'(lines "6") ( cis ) b b ( cis ) dis |
e4.^#'(lines "6" "5") fis^#`(columns ,figsharp) b, r4 r8 |
b4. r4 r8 	b4. r4 r8 |
b4. r4 r8 	dis4.^#'(lines "6" "5") b^#'(lines "7") |
e, r4 r8 	gis'4.^#`(lines "6" (columns "5" ,fignatural)) e^#`(columns ,figflat "7") |
a, r4 r8 	cis'4.^#`(lines "6" (columns "5" ,figflat)) a^#`(columns ,figflat "7") |
d, r4 r8 	dis4.^#'(lines "6" "5") b^#'(lines "7") |
e2. b2._"Tasto Solo" ~ |
b1. ~ |
b1. |
e1. ~ |
e1. ~ |
e1. ~ |
e1. ~ |
e1. ~ |
e2. r2. |
R1.*9 |
r2. e2._"Tasto Solo" ~ |
e1. ~ |
e1. |
b2.	\key e \minor	e4. ~ e4 a8 |
b8.^#'(lines "6" "4") a16 b8  b8.^#`(lines "5" (columns ,figsharp)) a16 b8	d,4. ~ d4 g8 |
a8.^#'(lines "6" "4") g16 a8  a8.^#`(lines "5" (columns ,figsharp)) g16 a8	a4. ~ a4 a8 |
b4^#'(lines "9" "4") b,8 b4^#`(lines "8" (columns ,figsharp)) b'8	e8^#`(columns ,figsharp) ( d ) e  gis, ( fis ) e |
a ( gis ) a  c, ( b ) a 	d'^#'(lines "7") ( c ) d  fis, ( e ) d |
g ( fis ) g  b, ( a ) g 	c' ( b ) c  e, ( d ) c |
a'^#`(columns "6" ,figflat) ( gis ) a  b^#`(columns "6" ,figsharp) ( a ) b 	c^#'(lines "6") ( b ) c  b^#`(lines "7" (columns ,figsharp)) ( a ) b |
e,4. e' dis^#'(lines "7") d^#'(lines "6") |
cis^#'(lines "7") c^#'(lines "6") b2. |
e,4. e' dis^#'(lines "7") d^#'(lines "6") |
cis^#'(lines "7") c^#'(lines "6") b,2._"Tasto Solo Sempre" ~ |
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
e4 e,8_"Tutti" b''4 b,8 e2._"Tasto Solo" ~ |
e1. ~ |
e2. ~ e4 e,8_"Tutti" b''4 b,8 |
e,1.^\fermata |
}
\bar "|."
}


%\score {
%\VioloncelloSpringThree
%}

