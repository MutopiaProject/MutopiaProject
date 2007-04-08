\version "1.7.13"
\include "figured-accidentals.ly"

#(define littlesegno '((font-relative-size . -2) (music "scripts-segno")))

VioloncelloAutumnOne = \notes {
\clef bass
\key f \major
\time 4/4

\relative f {
\mark "A"
f8_"Allegro"^"Ballo e Canto dè Villanelli" f f c^#'(lines "7")	f4 f8 c^#'(lines "7") |
f f f c^#'(lines "7") 	f4 f8 c^#'(lines "7") |
[ f f ] [ bes, b ]	c4 r |
f8_"Piano" f f c^#'(lines "7")	f4 f8 c^#'(lines "7") |
% 5
f f f c^#'(lines "7") 	f4 f8 c^#'(lines "7") |
[ f f ] [ bes, b ]	c4 r |
f8_"Forte" a a f	g4 g8 g |
g^#'(lines "6") c^#'(lines "7") c c,	f4 f8 f |
f f f c^#'(lines "7") 	f f f c^#'(lines "7") |
% 10
f f f c^#'(lines "7") 	[ f f ] [ bes, c ] |
f,4 r	f'8_"Piano" f f c^#'(lines "7") |
f f f c^#'(lines "7") 	f f f c^#'(lines "7") |
[ f f ] [ bes, c ] 	f,4 r |
f'8_"Forte" f f c^#'(lines "7") 	f4 f8 c^#'(lines "7") |
% 15
f f f c^#'(lines "7") 	f4 f8 c^#'(lines "7") |
[ f f ] [ bes, b ]	c4 r |
f'8_"Piano" f f c^#'(lines "7")	f4 f8 c^#'(lines "7") |
f f f c^#'(lines "7") 	f4 f8 c^#'(lines "7") |
[ f f ] [ bes, b ] 	c4 r |
% 20
f8_"Forte" f f f 	bes,4 f8 f' |
f f f f 	bes,4 f8 f' |
bes,4 f8 f'	f4 e |
f4 c	f, r |
f8_"Piano" f f f 	bes,4 f8 f' |
% 25
f f f f 	bes,4 f8 f' |
bes,4 f8 f'	f4 e |
f4 c 	f8_"Forte" f f c^#'(lines "7") |
f f f c^#'(lines "7") 	f f f c^#'(lines "7") |
[ f f ] [ bes, c ] 	f,4 r |
% 30
f'8_"Piano" f f c^#'(lines "7") 	f f f c^#'(lines "7") |
f f f c^#'(lines "7") 	[ f f ] [ bes, c ] |
\mark "B"
f,4 r	f'_"Forte"^"Vbriachi" r16 f' c a |
f4 r16 f' c a 	f4 r16 f a c |
f4 r16 f, c a 	f4 r16 f' a c |
% 35
f4 r16 f, a c 	f4 r16 f, c a |
f a' bes c d8 d,	g8 a16 bes c8 c, |
f8 g16 a bes8 bes,	e8 f16 g a8 a, |
d8 e16 f g8 g, 	c8 d16 e f8 f, |
f'8 f f c 	f4 r |
% 40
r2	f8 f f c^#'(lines "7") |
f4 r	r r16 g^#`(columns ,fignatural) d b |
g4 r	r r16 f' c a |
f4 r	r r16 e'^#`(columns ,figsharp) b gis |
e4 r	d''8_"Piano" ( c b a |
% 45
gis fes e ) d	gis,4^#'(lines "7") r |
r r16 a'^#`(columns ,figsharp)_"Forte" e cis	a4 r |
e''8_"Piano" ( d cis bes! 	a g f ) e |
a,4 r 	r r16 d'^#`(columns ,figsharp)_"Forte" a fis |
d4 r	d r |
% 50
d r	g16 g, g g' a a, a a' |
bes bes, bes bes' c c, c c' 	d^#`(columns ,figsharp) d, d d' ees ees,? ees ees' |	% bottom e not marked flat
fis, fis, fis fis' g g, g g' 	d4 r16 d' a fis! |
d4 r	g,8 r d'^#`(columns ,figsharp) r |
c^#'(lines "6") r bes^#'(lines "6") r	ees^#'(lines "6") r d^#'(lines "6") r |
% 55
c^#`(columns "6" ,figflat) r bes^#'(lines "6") r 	g'^#`(columns "6" ,figflat) r f^#'(lines "6") r |
ees^#`(columns "6" ,figsharp) r d r	c^#`(columns "6" ,figflat) r d^#`(columns ,figsharp) r |
g8_"Forte" g g c,^#`(columns ,figflat)	g'4 g8 c,^#`(columns ,figflat) |
g'8 g g g	a^#`(columns "6" ,figsharp) a d,^#'(lines "7") d |
g g c, cis^#'(lines "7") 	d d d cis^#'(lines "6" "4") |
% 60
b^#'(lines "6") b b g^#'(lines "7") 	c c c c^#'(lines "7") |
f f f f^#`(columns ,figflat "7") 	bes, bes bes bes^#'(lines "7") |
ees ees ees ees^#'(lines "7")	a,^#`(columns ,figsharp) a a a |
d d d a^#`(lines "7" (columns ,figsharp)) 	d d d a^#`(lines "7" (columns ,figsharp)) |
d d d a^#`(lines "7" (columns ,figsharp)) 	d d g, a |
% 65
d4 r 	d8_"Piano" d d a^#`(lines "7" (columns ,figsharp)) |
d d d a^#`(lines "7" (columns ,figsharp)) 	d d d a^#`(lines "7" (columns ,figsharp)) |
d d g, a 	d,4 r |
d'4_"Piano" r	d r |
d r 	d r |
% 70
d8 e f d 	c2^#'(lines "6") |
c8 d e c 	bes2^#'(lines "6") |
bes8 c d bes	a4^#'(lines "6") b^#'(lines "6" "5") |
c^#'(lines "7") c^#'(lines "6" "4") 	c^#'(lines "7" "5") c^#'(lines "6" "4") |
c16 c' g e c8 r	c d^#`(columns "6" ,fignatural) e f |
% 75
g^#'(lines "9") a b^#'(lines "6") g^#'(lines "7") 	c,8. c'16 c,4 |
g4 g^#'(lines "7" "5") 	g^#'(lines "6" "4") g^#'(lines "5" "3") |
g^#'(lines "6" "4" "2") g^#`(columns ,fignatural) 	c8_"Forte" c c f, |
c'4 c8 f,	c' c c f, |
c'4 c8 f,	[ c' c ] [ f fis ] |
% 80
g^#`(columns ,fignatural) f e d 	c c'16 bes c8 c, |
r8 c'16 bes c8 c,	r8 c'16 bes c8 c, |
r8 c'16 bes c8 c, 	r8 f16 e f8 f, |
r8 f'16 e f8 f, 	r8 f'16 e f8 f, |
r8 f'16 e f8 f, 	r8 f'16^#`(columns ,figflat "7") e f8 f, |
% 85
r8 bes'16 a bes8 bes,	r8 g'16^#`(lines "7" (columns ,fignatural)) f g8 g, |
r8 c'16 bes c8 c,	r8 c'16^#'(lines "7") bes c8 c, |
f,4 r	r2 |
% In the facsimile,
% there is a segno over and under the bar lines on both side of this measure,
% with the word "Sireplica" underneath,
% followed by 16 (not 17) measures rest marked after "C".
% The following is a reasonable rendition of it:
%%% < { f4 r r2 | } { s4_#`(columns ,littlesegno " Sireplica")^#`(,littlesegno) s s s_#`(,littlesegno)^#`(,littlesegno) } >
% I believe what is meant is to play the measure twice, 
% which matches another f4 in the solo part, 
% and results in the correct number of measures.
f4 r	r2 |
\mark "C"
f4 r	r2 |
R1*16 |		
% 106
f'8_"Allegro Molto" f f c^#'(lines "7") 	f4 f8 c^#'(lines "7") |
f f f c^#'(lines "7") 	f4 f8 c^#'(lines "7") |
[ f f ] [ bes, b ]	c4 r |
f8 a a f 	g4 g8 g |
% 110
g^#'(lines "6") c^#'(lines "7") c c, 	f4 f8 f |
f f f c^#'(lines "7") 	f f f c^#'(lines "7") |
f f f c^#'(lines "7") 	[ f f ] [ bes, c ] |
f,4 r 	f8 f f c^#'(lines "7") |
f f f c^#'(lines "7") 	f f f c^#'(lines "7") |
% 115
[ f f ] [ bes c ] 	f,2^\fermata |
}
\bar "||"
}


%\score {
%\VioloncelloAutumnOne 
%}

