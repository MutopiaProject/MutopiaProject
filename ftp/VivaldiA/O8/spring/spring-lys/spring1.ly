\version "2.12.3"
ViolinoPrincipaleSpringOne =  {
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
\mark "B" 	% half way thru measure
b4\mordent_"Solo"^"Canto dè gl' Vcelli" b\mordent |	% trill was over the e
b\mordent \( b\mordent b\mordent  b\)\mordent |
% 15
b8-. \( b-. b-. b-.	b-. b-. b-.  b\)-. 
b-. \( b-. b-. b-. 	b-. b-. b-. cis16  dis\) |
e ( dis cis b a gis fis  e) 	r2 |	% slur is different in solo and primo parts
R1 |
r4 r8 e'8-. \(	e-. e-. e-.  e\)-. |
% 20
e,4.\trill e'8-. \(	e-. e-. e-.  e\)-. |
e,4\trill r	b'4 ~ b16 ( e) b ( cis) |
b4 ~ b16 ( e) b ( cis)	b ( e) b ( cis) b ( e) b ( cis) |
b ( e) b ( cis) b ( e) b ( cis)	b8 e, gis4\trill |
r4 gis\trill	r gis\trill |
% 25
r gis\trill	e'4-. ( e)-. |
e2\trill	e4-. ( e)-. |
e2\trill 	r4 r8 e,_"Tutti" |
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
%%%#(XXXOLD_override_auto_beam_setting '(end 1 24 * * )  1 8)
\set tupletSpannerDuration = #(ly:make-moment 1 8)
\times 2/3 { 
b''16_"Solo"[ gis b]  e[ b e]  b[ gis b]  e[ b e]	b[ gis b]  dis[ b dis]  b[ gis b]  dis[ b dis] |
} cis4 r	\times 2/3 { cis16[ ais cis]  fis[ cis fis]  cis[ ais! cis]  fis[ cis fis] |
cis[ ais cis]  e[ cis e]  cis[ ais! cis]  e[ cis e] }	dis4 r |
% 50
\times 2/3 { 
dis16[ bis dis]  gis[ dis gis]  dis[ bis! dis]  gis[ dis gis]	dis[ bis! dis]  fis[ dis fis]  dis[ bis! dis]  fis[ dis fis] } |
e4 r	\times 2/3 { e16[ cis e]  gis[ e gis]  e[ cis e]  gis[ e gis] |
dis[ b dis]  gis[ dis gis]  dis[ b dis]  gis[ dis gis]	cis,[ a cis]  fis[ cis fis]  cis[ a cis]  fis[ cis fis] |
b,[ gis b]  e[ b e]  b[ gis b]  e[ b e] 	a,[ fis a]  dis[ a dis]  a[ fis a]  dis[ a dis] |
gis,[ e gis]  cis[ gis cis]  gis[ e gis]  cis[ gis cis] 	gis[ dis gis]  cis[ gis cis]  gis[ dis gis]  cis[ gis cis] |
% 55
gis[ dis gis]  bis![ gis bis!]  gis[ dis gis]  bis![ gis bis!] }	cis4 r8 cis,_"Tutti" |
gis' fis16 e fis8 gis 	a gis4 cis,8 |
gis' fis16 e fis8 gis	a gis4 cis,8 |
a' gis4 fis8	e dis16 cis dis4\trill |
\mark "E"
cis8-._"Solo"^"Canto d' Vcelli" ( gis'-. gis-. gis-.	gis-. gis-. gis-.  gis)-. |
% 60
a-. ( a-. ais-. ais-.	b-. b-. bis-.  bis)-. |
cis1\trill ~ |
cis1 |
cis16 ( dis) cis ( dis) cis4	cis16 ( dis) cis ( dis) cis4 ~ |
cis16 ( dis) cis ( dis) cis ( dis) cis ( dis) 	cis2\trill ~ |
% 65
cis32 ( dis) cis ( dis) cis ( dis) cis ( dis) cis ( dis) cis ( dis) cis ( dis) cis ( dis) 	cis2\trill |
 gis8[_"Tutti" gis ]  gis[ fis16 gis ] 	a4. a16 gis |
 fis8[ fis ]  fis[ e16 fis ] 	gis4. gis16 a |
 b8[ b ]  b[ b16 a ] 	 gis8[ gis ]  gis[ gis16 a ] |
 b8[ b ]  b[ b16 a ]	 gis8[ gis ]  gis[ gis16 a ] |
% 70
 b8[ b ]  b[ a16 gis ]	fis16_"Solo" ( b,) cis ( b) dis ( cis) e ( dis) |
fis ( e) gis ( fis) a ( gis) b ( a) 	b, ( a) cis ( b) dis ( cis) e ( dis) |
fis ( e) gis ( fis) a ( gis) b ( a)	gis ( e) fis ( e) gis ( e) fis ( e) |
a ( e) fis ( e) a ( e) fis ( e) 	b' ( e,) fis ( e) b' ( e,) fis ( e) |
cis'8 ( dis) e4 	e16 ( b) e ( b) cis ( b) e ( b) |
% 75
cis ( b) e ( b) cis ( b) e ( b) 	e8 e, fis4\trill |
e8._"Tutti" gis16 a8 b 	cis b4 e,8 |
b' a16 gis a8 b 	cis b4 e,8 |
cis' b4 a8 	gis fis16 e fis4\trill |
e4 r8 e_"Piano"		b' a16 gis a8 b |
% 80
cis b4 e,8 	b' a16 gis a8 b |
cis b4 e,8 	cis' b4 a8 |
gis fis16 e fis4\trill 	e2^\fermata |
}
\bar "||"
}


%\score {
%\ViolinoPrincipaleSpringOne
%}

