#(ly:set-option 'old-relative)
\version "2.12.3"
AltoViolaSpringOne =  {
\clef alto
\key e \major
\time 4/4

\mark "A"
\relative e' {
\partial 8	gis8_"Allegro" |
b8 b b b 	e,4. gis16 a |
b8 b b b 	e,4. gis16 a |
b8 b cis cis	fis,4 r8 gis_"Piano" |
b8 b b b 	e,4. gis16 a |
b8 b b b 	e,4. gis16 a |
b8 b cis cis	fis,4 r8 gis_"Forte" |
e4 e	a8 e4 e8 |
e4 e	a8 e4 e8 |
a e4 dis'8 	b4 b |
gis4 r8 b_"Piano" 	e,4 e |
a8 e4 b'8 	e,4 e |
a8 e4 e8	a e4 dis'8 |
b4 b 
\mark "B"
gis r |
R1*13
r2 r4 r8 b_"Tutti" |
e,4 e 	a8 e4 b'8 |
e,4 e 	a8 e4 b'8 |
e,4 gis8 dis'	b4 b |
\mark "C"
gis8 b,_"Piano"^"Scorrono i fonti" b b	b b b b |
b b b b 	b b b b |
b fis' fis fis 	fis fis fis fis |
fis fis fis fis	dis dis dis dis |
b b b b 	b b b b |
b b b b 	b b b b |
b1 ~ |
b1 ~ |
b1 |
b2 b4 r8 fis'_"Forte" |
b,4 b	e8 b4 fis'8 |
b,4 b	e8 b4 fis'8 |
e8 b dis ais'	fis4 fis |
\mark "D"
 dis16[ b32^"Tuoni" b b b b b ]	 b[ b b b b b b b ] 	 b[ b b b b b b b ] 	 b[ b b b b b b b ] |
b8 r b r	b r b r |
 b32[ b b b b b b b ] 	 b[ b b b b b b b ] 	 a[ a a a a a a a ] 	 a[ a a a a a a a ]  |
gis4 r r2 |
 a32[ a a a a a a a ]  a[ a a a a a a a ] 	ais4 r |
r2	 b32[ b b b b b b b ]  b[ b b b b b b b ] | 
bis4 r 	r2 |
 cis32[ cis cis cis cis cis cis cis ]  cis[ cis cis cis cis cis cis cis ] 	cis4 r |
 b32[ b b b b b b b ]  b[ b b b b b b b ] 	a4 r | 
 gis'32[ gis gis gis gis gis gis gis ]  gis[ gis gis gis gis gis gis gis ] 	fis4 r | 
 e32[ e e e e e e e ]  cis[ cis cis cis cis cis cis cis ]	 gis[ gis gis gis gis gis gis gis ]  gis[ gis gis gis gis gis gis gis ]
 gis[ gis gis gis gis gis gis gis ]  gis[ gis gis gis gis gis gis gis ] 	cis4 r8 gis' |
cis,4 cis	fis8 cis4 gis'8 |
cis,4 cis	fis8 cis4 gis'8 |
fis8 cis fis bis	gis4 gis |
\mark "E"
e4 r r2 |
R1*6 |
e8 e e e 	cis cis fis a |
a a fis dis 	b b b b |
b b b b 	b b b b |
b b b b 	b b b b |
b b b b 	b4 r |
R1*5 |
e4 e	a8 e4 b'8 
e,4 e	a8 e4 b'8 
a8 e gis dis'	b4 b 
gis r8 b_"Piano"	e,4 e |
a8 e4 b'8	e,4 e |
a8 e4 b'8	a e gis dis' |
b4 b 	gis2^\fermata
}
\bar "||"
}


%\score {
%\AltoViolaSpringOne
%}




