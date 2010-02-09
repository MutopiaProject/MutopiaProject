#(ly:set-option 'old-relative)
\version "2.12.3"
ViolinoPrincipaleSpringThree =  {
\clef violin
\key e \major
\time 12/8

\mark "G"
\relative e'' {
gis8._"Allegro"^"Danza Pastorale" a16 gis8 gis4 a8	a4. ( b4) a8 |
gis8. a16 gis8 gis4 a8	a4. ( b4) a8 |
gis8. a16 b8 b8. a16 gis8	gis4. fis4. |
gis8._"Piano" a16 gis8 gis4 a8	a4. ( b4) a8 |
% 5
gis8. a16 gis8 gis4 a8	a4. ( b4) a8 |
gis8. a16 b8 b8. a16 gis8	fis4. b4_"Forte" fis8 |
dis8. cis16 b8 b'8. a16 gis8	gis4\trill fis8 b4 r8 |
b4 r8 b4 r8	b4 r8 dis,8. ( e16  fis8) |
fis8. ( gis16  a8) a8. ( gis16  fis8)	fis8. ( e16  dis8) dis8. ( e16  fis8) |
% 10
fis8. ( gis16  a8) a8. ( gis16  fis8)	gis8. a16 gis8 cis4. ( 
b4.  a4.)	gis8. a16 gis8 cis4. (
b4.  a4.)	gis8_"Solo" e fis gis fis e |
b'8 cis b e dis cis 	b gis fis e4. |
b'8 cis b e dis cis 	b gis fis e4. |
% 15
b'16 ( a gis fis  e8)  d' cis b 	cis e d  cis b a |
cis16 ( b ais gis  fis8)  e' dis cis 	dis fis e  dis cis b |
dis16 ( cis bis? a  gis8)  fis' e dis	e gis16 ( fis  e8)  gis fis e |  % cello part has bis(!)
dis fis16 ( e  dis8)  fis e dis 	cis e16 ( dis  cis8)  e dis cis |
b dis16 ( cis  b8)  dis cis b 	a cis16 ( b  a8)  cis b a |
% 20
gis16 ( bis) cis4 ~ cis4 a8	gis16 ( bis) cis4 ~ cis4 a8 |
gis ( cis b  a gis  fis)	e gis cis  dis, gis bis 
<< \context Voice = "soloup" { \stemUp cis4. }
\context Voice = "solodown" { \stemDown e,8._"Tutti" fis16 e8 } >> e,4 fis8
	fis4. ( gis4) fis8 |
e8. fis16 e8 e4 fis8	fis4. ( gis4) fis8 |
e8. fis16 gis8 gis8. fis16 e8	e4.\trill dis4. |
% 25
gis4. ( a) 	fis ( gis) |
e ( fis) 	dis2. |
gis4._"Piano" ( a) 	fis ( gis) |
e ( fis)	dis2. |
gis8_"Forte" ( a  b)  b ( a  gis) 	a2. |
% 30
fis8 ( gis  a) ~ a ( gis  fis) 	gis2. |		% was written with tie between a's
b4. ( a) 	gis8 ( fis  e) ~ e4 gis8 |
b4. ( a) 	gis8 ( fis e ~ e4  gis8) |
cis ( b  ais)  cis ( b  ais!) 	b2. ~ |
b4. ais 	b8_"Solo" dis16 ( cis  b8)  fis b fis |
% 35
dis dis'16 ( cis  b8)  fis b fis	dis fis16 ( e  dis8)  b dis fis |
b b,16 ( cis dis  e)  fis8 gis a  
<< \context Voice = "soloup" { \stemUp \slurUp
	a8 ( gis  fis)  a ( gis  fis) |
gis e,16 ( fis gis a b8 cis  d) 	d ( cis  b)  d ( cis  b) |
cis a16 ( b cis d e8 fis  g) 	g ( fis  e)  g ( fis  e) |
fis b,16 ( cis d e fis8 gis  a) 	a ( gis  fis)  a ( gis  fis) |
% 40
gis4. b( a gis |
fis) b( a gis |
fis) b( a fis |
gis8) fis e e'4.( dis cis |
b) e( dis cis |
% 45 
b) cis( b b |
b) e( dis cis | 
b) cis( b b |
b) b }
\context Voice = "solodown" { \stemDown \tieDown
b,2. |
b4 s s e,2. |
e4 s s a2. |
a4 s s b2. |
% 40
b4. b b2. ~ |
b1. |
b1. ~ |
b4 s s s s s |
s4. e4. ~ e2. ~ |
% 45
e4. a gis fis |
gis8 fis e e4. ~ e2. ~ |
e4. a gis fis  |
gis8 fis e  gis fis e } 
>>
b8 gis b  b16 ( cis  dis8) e-| |
b8 gis b  b16 ( cis  dis8) e-|	a, fis a  a16 ( b  cis8) dis-| |
% 50
a fis a  a16 ( b  cis8) dis-|	gis, e gis  gis16 ( a  b8) cis-| |
gis e gis  gis16 ( a  b8) cis-|	fis, dis fis  fis16 ( gis  a8) b-| |
fis dis fis  fis16 ( gis  a8) b-|	gis e b'  b16 ( cis  dis8) e-| |
b gis b  b16 ( cis  dis8) e-|	ais, e ais!  ais16 ( b  cis8) b |
ais e ais!  ais16 ( b  cis8) e,	dis b fis'  fis16 ( gis  ais!8) b |
% 55
fis dis fis  fis16 ( gis  ais8) b	fis cis fis  fis16 ( gis  ais!8) b |
fis cis fis  fis16 ( gis  ais8) b	fis cis fis  fis16 ( gis  ais!8) gis |
fis cis fis  fis16 ( gis  ais8) fis	b ais!16 ( gis fis  e)  dis8 fis dis |
b fis dis b4 r8 	gis''8._"Tutti" a16 gis8 gis4 a8 |
a4. ( b4) a8  	gis8. a16 gis8  gis4 a8 |
% 60
a4. ( b4) a8  	gis8. a16 b8  b8. a16 gis8 |
gis4.\trill fis 	\key e \minor	g8. a16 g8  g4 a8 |
g4. ( fis) 	fis8. g16 fis8  fis4 g8 |
fis4. ( e)	e8. fis16 e8  e4 fis8 |
e4. ( dis) 	gis2. |
% 65
a2. fis |
g e |
f4. gis	a2. | 	% f is flat in principale, but natural in primo
g8 ( fis  e)  b'4.	fis8 ( g  a)  b4. |
e,8 ( fis  g)  a4. 	dis,8 ( c  b)  a'4. |
% 70
g8 ( fis  e)  c'2. b4. ~ |
b4. a2. b,8_"Solo" ( c  cis) | 
d ( dis e  fis g  a)	b,4. b8 ( c  cis) |
d ( dis  e)  fis ( g  a)	b,4.  b'8 ( a  g) |
f4.  a8 ( g  f!) 	e4.  g8 f e |
% 75
dis'4.  e8 dis c 	b4. ( ais) |
b,8 ( b'  a)  b, ( a'  g) 	b, ( g'  fis)  b, ( fis'  e) |
b8 ( b'  a)  b, ( a'  g) 	b, ( g'  fis)  b, ( fis'  e) |
b16 ( a b8  c)  d16 ( c d8  e)	fis16 ( e fis8  g)  a16 ( g  a8) fis |
g fis e << \context Voice = "soloup" { \stemUp fis4.\trill }
\context Voice = "solodown" { \stemDown b,4. } >>
\key e \major
	gis8._"Tutti" a16 gis8  gis4 a8 |
% 80
a4. ( b4) a8	gis8. a16 gis8  gis4 a8 |
a4. ( b4) a8	gis8. a16 b8  b8. a16 gis8 |
fis8. e16 dis8  dis8. e16 fis8 	fis8. gis16 a8  a8. gis16 fis8 |
fis8. e16 dis8  dis8. e16 fis8 	fis8. gis16 a8  a8. gis16 fis8 |
gis4. cis ( b  a) |
% 85
gis8. a16 gis8 cis4. ( b  a) |
gis8. fis16 e8 fis4.\trill e cis'_"Piano" (
b  a) gis8. a16 gis8 cis4. (
b  a) gis8. fis16 e8 fis4.\trill |
e1.^\fermata |
}
\bar "||"
}


%\score {
%\ViolinoPrincipaleSpringThree
%}




