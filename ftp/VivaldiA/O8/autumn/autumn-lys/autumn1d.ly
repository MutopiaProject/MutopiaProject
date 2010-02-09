\version "2.12.3"

VioloncelloAutumnOne =  {
\clef bass
\key f \major
\time 4/4

\relative f {
\mark "A"
f8_"Allegro"^"Ballo e Canto dè Villanelli" f f c	f4 f8 c |
f f f c 	f4 f8 c |
 f[ f ]  bes,[ b ]	c4 r |
f8_"Piano" f f c	f4 f8 c |
% 5
f f f c 	f4 f8 c |
 f[ f ]  bes,[ b ]	c4 r |
f8_"Forte" a a f	g4 g8 g |
g c c c,	f4 f8 f |
f f f c 	f f f c |
% 10
f f f c 	 f[ f ]  bes,[ c ] |
f,4 r	f'8_"Piano" f f c |
f f f c 	f f f c |
 f[ f ]  bes,[ c ] 	f,4 r |
f'8_"Forte" f f c 	f4 f8 c |
% 15
f f f c 	f4 f8 c |
 f[ f ]  bes,[ b ]	c4 r |
f'8_"Piano" f f c	f4 f8 c |
f f f c 	f4 f8 c |
 f[ f ]  bes,[ b ] 	c4 r |
% 20
f8_"Forte" f f f 	bes,4 f8 f' |
f f f f 	bes,4 f8 f' |
bes,4 f8 f'	f4 e |
f4 c	f, r |
f8_"Piano" f f f 	bes,4 f8 f' |
% 25
f f f f 	bes,4 f8 f' |
bes,4 f8 f'	f4 e |
f4 c 	f8_"Forte" f f c |
f f f c 	f f f c |
 f[ f ]  bes,[ c ] 	f,4 r |
% 30
f'8_"Piano" f f c 	f f f c |
f f f c 	 f[ f ]  bes,[ c ] |
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
r2	f8 f f c |
f4 r	r r16 g d b |
g4 r	r r16 f' c a |
f4 r	r r16 e' b gis |
e4 r	d''8_"Piano" ( c b a |
% 45
gis f e  d)	gis,4 r |
r r16 a'_"Forte" e cis	a4 r |
e''8_"Piano" ( d cis bes! 	a g f  e) |
a,4 r 	r r16 d'_"Forte" a fis |
d4 r	d r |
% 50
d r	g16 g, g g' a a, a a' |
bes bes, bes bes' c c, c c' 	d d, d d' ees ees,? ees ees' |	% bottom e not marked flat
fis, fis, fis fis' g g, g g' 	d4 r16 d' a fis! |
d4 r	g,8 r d' r |
c r bes r	ees r d r |
% 55
c r bes r 	g' r f r |
ees r d r	c r d r |
g8_"Forte" g g c,	g'4 g8 c, |
g'8 g g g	a a d, d |
g g c, cis 	d d d cis |
% 60
b b b g 	c c c c |
f f f f 	bes, bes bes bes |
ees ees ees ees	a, a a a |
d d d a 	d d d a |
d d d a 	d d g, a |
% 65
d4 r 	d8_"Piano" d d a |
d d d a 	d d d a |
d d g, a 	d,4 r |
d'4_"Piano" r	d r |
d r 	d r |
% 70
d8 e f d 	c2 |
c8 d e c 	bes2 |
bes8 c d bes	a4 b |
c c 	c c |
c16 c' g e c8 r	c d e f |
% 75
g a b g 	c,8. c'16 c,4 |
g4 g 	g g |
g g 	c8_"Forte" c c f, |
c'4 c8 f,	c' c c f, |
c'4 c8 f,	 c'[ c ]  f[ fis ] |
% 80
g f e d 	c c'16 bes c8 c, |
r8 c'16 bes c8 c,	r8 c'16 bes c8 c, |
r8 c'16 bes c8 c, 	r8 f16 e f8 f, |
r8 f'16 e f8 f, 	r8 f'16 e f8 f, |
r8 f'16 e f8 f, 	r8 f'16 e f8 f, |
% 85
r8 bes'16 a bes8 bes,	r8 g'16 f g8 g, |
r8 c'16 bes c8 c,	r8 c'16 bes c8 c, |
f,4 r	r2 |
% In the facsimile,
% there is a segno over and under the bar lines on both side of this measure,
% with the word "Sireplica" underneath,
% followed by 16 (not 17 measures) rest marked after "C".
% The following is a reasonable rendition of it:
%%%#(define littlesegno '((font-relative-size . -2) (music "scripts.segno")))
%%% << { f4 r r2 | } { s4_#`(columns ,littlesegno " Sireplica")^#`(,littlesegno s) s s_#`(,littlesegno)^#`(,littlesegno) } >>
% I believe what is meant is to play the measure twice, 
% which matches another f4 in the solo part, 
% and results in the correct number of measures.
f4 r	r2 |
\mark "C"
f4 r	r2 |
R1*16 |		
% 106
f'8_"Allegro Molto" f f c 	f4 f8 c |
f f f c 	f4 f8 c |
 f[ f ]  bes,[ b ]	c4 r |
f8 a a f 	g4 g8 g |
% 110
g c c c, 	f4 f8 f |
f f f c 	f f f c |
f f f c 	 f[ f ]  bes,[ c ] |
f,4 r 	f8 f f c |
f f f c 	f f f c |
% 115
 f[ f ]  bes[ c ] 	f,2^\fermata |
}
\bar "||"
}


%\score {
%\VioloncelloAutumnOne 
%}

