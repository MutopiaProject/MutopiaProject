#(ly:set-option 'old-relative)
\version "2.12.3"
ViolinoPrimoSpringOne =  {
\clef violin
\key e \major
\time 4/4

\mark "A"
\relative e'' {
\partial 8	e8_"Allegro" |
 gis8[ gis ]  gis[ fis16 e ]	b'4. b16 a |
 gis8[ gis ]  gis[ fis16 e ]	b'4. b16 a |
gis8 a16 b a8 gis 	fis dis b e_"Piano" |
 gis8[ gis ]  gis[ fis16 e ]	b'4. b16 a |
% 5
 gis8[ gis ]  gis[ fis16 e ]	b'4. b16 a |
gis8 a16 b a8 gis 	fis4 r8 e_"Forte" |
b'8 a16 gis a8 b	cis b4 e,8 |
b' a16 gis a8 b 	cis b4 e,8 |
cis' b4 a8 	gis fis16 e fis4\trill |
% 10
e4 r8 e_"Piano" 	b' a16 gis a8 b |
cis b4 e,8 	b' a16 gis a8 b |
cis b4 e,8	cis' b4 a8 |
gis fis16 e fis4\trill 	
\mark "B"
e4 r |
R1 |
% 15
r2	b'4-|_"Solo"^"Canto dè gl' Vcelli" \( b\)-| |
b-| \( b\)-| b-| \( b\)-| |
b8-. \( b-. b-. b-. 	b-. b-. b-.  b\)-. |
b8-. \( b-. b-. b-. 	b-. b-.  b\)-. cis16 dis |
e dis cis b a gis fis e 	r4 r8 e'8 (	% slur is different in solo and primo parts
% 20
e-. e-. e-.  e)-.	e,4.\trill e'8 (
e-. e-. e-.  e)-.	e,4\trill gis4\trill |
r4 gis\trill	r4 gis\trill |
r4 gis\trill	b4 ~ b16 ( e) b ( cis) |
b4 ~ b16 ( e) b ( cis)	b ( e) b ( cis) b ( e) b ( cis) |
% 25
b ( e) b ( cis) b ( e) b ( cis)	b8 e, r4 |
e'4-| ( e)-| 	e2\trill |
e4-| ( e)-| 	e4\trill r8 e,8_"Tutti" |
b'8 a16 gis a8 b 	cis b4 e,8 |
b' a16 gis a8 b 	cis b4 e,8 |
% 30
cis' b4 a8	gis fis16 e fis4\trill |
\mark "C"
e8 gis,16_"Piano"^"Scorrono i Fonti" ( a) b ( a) b ( a)	gis ( a) gis ( a) b ( a) b ( a) |
gis ( a) gis ( a) b ( a) b ( a) 	gis ( a) gis ( a) b ( cis) b ( cis) |
dis ( e) dis ( e) fis ( e) fis ( e) 	dis ( e) dis ( e) fis ( e) fis ( e) |
dis ( e) dis ( e) fis ( gis) fis ( gis)	a ( gis) a ( gis) fis ( a) gis ( fis) |
% 35
gis8 fis16 ( e) dis ( cis) b ( a) 	gis ( a) gis ( a) b ( a) b ( a) |
gis ( a) gis ( a) b ( a) b ( a) 	gis ( a) gis ( a) b ( a) b ( a) |
gis4 r8 gis'8	a2 |
gis fis |
gis a |
% 40
gis fis4 r8 b,_"Forte" |
fis'8 e16 dis e8 fis 	gis8 fis4 b,8 |
fis'8 e16 dis e8 fis	gis8 fis4 b,8 |
gis'8 fis4 e8	dis cis16 b cis4\trill |
\mark "D"
 b16[ b,32^"Tuoni" b b b b b ]	 b[ b b b b b b b ] 	 b[ b b b b b b b ] 	 b[ b b b b b b b ] |
% 45
 b'32[ ( cis dis e fis gis a  b) ] r4 	 b,32[ ( cis dis e fis gis a  b) ] r4 |
 b,,32[ b b b b b b b ] 	 b[ b b b b b b b ] 	 a[ a a a a a a a ] 	 a[ a a a a a a a ]  |
gis4 r r2 |
 a32[ a a a a a a a ]  a[ a a a a a a a ] 	ais4 r |
r2	 b32[ b b b b b b b ]  b[ b b b b b b b ] | 
% 50
bis4 r 	r2 |
 cis32[ cis cis cis cis cis cis cis ]  cis[ cis cis cis cis cis cis cis ] 	cis4 r |
 b32[ b b b b b b b ]  b[ b b b b b b b ] 	a4 r | 
 gis'32[ gis gis gis gis gis gis gis ]  gis[ gis gis gis gis gis gis gis ] 	fis4 r | 
 e32[ e e e e e e e ]  cis[ cis cis cis cis cis cis cis ]	 gis[ gis gis gis gis gis gis gis ]  gis[ gis gis gis gis gis gis gis ]
% 55
 gis[ gis gis gis gis gis gis gis ]  gis[ gis gis gis gis gis gis gis ] 	cis4 r8 cis' |
gis' fis16 e fis8 gis 	a gis4 cis,8 |
gis' fis16 e fis8 gis	a gis4 cis,8 |
a' gis4 fis8	e dis16 cis dis4\trill |
\mark "E"
cis4 r r2 |
% 60
R1 |
r8  cis-._"Solo"^"Canto d' Vcelli" ( cis -.  cis) -.	cis-. ( cis-. cis-.  dis)-. |
e-. ( e-. eis-.  eis)-. 	fis-. ( fis-. fisis?-.  fisis)-. |	% fisis was only marked with single sharp, but f is already sharp in this key
gis4 ~ gis16 ( a) gis ( a)	gis4 ~ gis16 ( a) gis ( a) |
gis2\trill ~	gis16 ( a) gis ( a) gis ( a) gis ( a) |
% 65
gis2\trill ~	gis32 ( a) gis ( a) gis ( a) gis ( a) gis ( a) gis ( a) gis ( a) gis ( a) |
 gis8[_"Tutti" gis ]  gis[ fis16 gis ] 	a4. a16 gis |
 fis8[ fis ]  fis[ e16 fis ] 	gis4. gis16 a |
 b8[ b ]  b[ b16 a ] 	 gis8[ gis ]  gis[ gis16 a ] |
 b8[ b ]  b[ b16 a ]	 gis8[ gis ]  gis[ gis16 a ] |
% 70
 b8[ b ]  b[ a16 gis ]	fis4 r4 |
R1*5 |
 b8[ a ]  gis[ a16 b ]	cis8 b4 e,8 |
b' a16 gis a8 b 	cis b4 e,8 |
cis' b4 a8 	gis fis16 e fis4\trill |
%%%e4 r8 e_"Piano" 	b' a16 gis < a s >8 b8  |  % lilypond 1.7 is freaking out about the last a in this measure
e4 r8 e_"Piano" 	b' a16 gis a8 b8  | 
% 80
cis8 b4 e,8 	b' a16 gis a8 b |
cis b4 e,8 	cis' b4 a8 |
gis fis16 e fis4\trill 	e2^\fermata |
}
\bar "||"
}


%\score {
%\ViolinoPrimoSpringOne
%}

