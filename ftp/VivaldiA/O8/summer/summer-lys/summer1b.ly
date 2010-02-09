\version "2.12.3"
ViolinoSecondoSummerOne =  {
\key g \minor
\clef violin
\time 3/8

\relative g'' {
\mark "A"
r8_"Allegro non molto - Pianissimo"^"Languideza per il caldo" g fis |
r g, fis |
r a16 ( bes) c8 |
r fis,16 ( g) a8 |
g'4 r8 |	% 5
a,8 ( g) fis |
a'4 r8 |
bes,8 ( a) g |
bes'4 r8 |
c,8 ( bes) a |	% 10
c,4.^\fermata |
g''8 ( fis ees! |
d c  bes) |
a4. ~ |
a4. |	% 15
a'8 ( g fis |
ees! d  c) |
bes4. ~ |
bes4. ~ |
bes4 r8 |	% 20
r8 g'16 ( a) bes8 |
r8 c,16 ( d) ees8 |
r8 bes16 ( c) d8 |
r8 a16 ( bes) c8 |
r8 bes4 |	% originally written bes4 r8	% 25
r8 g16 ( a) bes8 |
r8 c,16 ( d) ees8 |
r8 bes16 ( c) d8 |
r8 a16 ( bes) c8 |
r8 bes4 |	% 30
}
\bar "||"
\mark "B"
\time 4/4
<< { R1*18 } { s_"Allegro" } >> |
\relative d'' {
r16 d_"Forte" d d d d bes d 	g, d' d d d d bes d |  % 50
d, a' a a a a g a 	d, a' a a a a g a |
d, a' a a a a fis a 	d, a' a a a a fis! a |
}
\bar "||"
\time 3/8
\relative g' {
bes8_"Pianissimo" g' fis |
r8 g, fis |
r8 g'16 ( a) bes8 |  
r8 c,16 ( d) ees8 |  % 55
r8 bes16 ( c) d8 |
r8 a16 ( bes) c8 |
r8 bes4 |
}
\mark "C"
R4.*12
\relative g'' {
\set tupletSpannerDuration = #(ly:make-moment 1 8)
\times 2/3 {
g16_"Piano"[( a bes]) 	g[( a bes]) 	g[( a bes]) |
}
g4 r8 |
R4.*5 |
\mark "D"
#(override-auto-beam-setting '(end 1 24 3 8) 1 8)
#(override-auto-beam-setting '(end 1 24 3 8) 2 8)
\times 2/3 {
g16_"Piano" ( a  bes)	g ( a  bes)	g ( a  bes) |
fis ( g  a)	fis ( g  a) 	fis ( g  a) |
g16 ( a  bes)	g ( a  bes)	g ( a  bes) |  % 80
fis ( g  a)	fis ( g  a) 	fis ( g  a) |
}
g16. a32 g16. a32 g16. a32 |
g16._"Pianissimo" a32 g16. a32 g16. a32 |
f16._"Piano" g32 f16. g32 f16. g32 |  
f16._"Pianissimo" g32 f16. g32 f16. g32 |  % 85
e16._"Piano" f32 e16. f32 e16. f32 |
e16._"Pianissimo" f32 e16. f32 e16. f32 |
d16._"Piano" e32 d16. e32 d16. e32 |
d16._"Pianissimo" e32 d16. e32 d16. e32 |
#(override-auto-beam-setting '(end 1 32 3 8) 1 8)
#(override-auto-beam-setting '(end 1 32 3 8) 2 8)
d32_"Forte"^"Venti" bes' a g	f bes a g	f e d cis |  % 90
d f e d 	cis f e! d 	cis! b a g |
f8	d32 e f d 	f g a f |
a8	d32 e f d	f g a f |
a d, a' d, 	a' d, a' d, 	a' d, a' d, |
a' d, a' d, 	a' d, a' d, 	a' d, a' d, |  % 95
g d g d 	g d g d 	g d g d |
f d f d 	f d f d  	f d f d  |
bes' d, bes' d,	bes' d, bes' d,	bes' d, bes' d, |
a' d, a' d, 	a' d, a' d, 	a' d, a' d, |
g d g d 	g d g d 	g d g d |  % 100
f d f d 	f d f d  	f d f d  |
e cis e cis 	e cis e cis 	e cis e cis |
f d f d 	f d f d 	f d f d |
g e g e 	g e g e 	g e g e |
f d f d 	f d f d 	f d f d |  % 105
e cis e cis 	e cis e cis 	e cis e cis |
d a d a 	d a d a 	d a d a |
d a d a 	d a d a 	d a d a |
cis a cis a 	cis a cis a 	cis a cis a |
f8_"Pianissimo" d' cis |  % 110
r e d |
r8 bes16 ( c) d8 |
r8 g,16 ( a) bes8 |
r8 f16 ( g) a8 |
r8 e16 ( f) g8 |  % 115
\mark "E"
f4 r8 |
R4.*38 |
bes32_"Forte" d, bes' d,	bes' d, bes' d, 	bes' d, bes' d, |  % 155
a' d, a' d,	a' d, a' d, 	a' d, a' d, |
g d g d 	g d g d 	g d g d |
fis d fis d  	fis d fis d  	fis d fis d |
bes'32 d, bes' d,	bes' d, bes' d, 	bes' d, bes' d, |
a' d, a' d,	a' d, a' d, 	a' d, a' d, |  % 160
g d g d 	g d g d 	g d g d |
fis d fis d  	fis d fis d  	fis d fis d |
bes'' a a g	g f f ees	ees d d c | 
c bes bes a	a g g fis	fis ees ees d |
d d e fis 	g a bes c 	d c bes a |  % 165
g g a bes	c d ees f	g f ees d |
c d c d 	bes c bes c	a bes a bes |
g a g a 	f g f g 	e f e f |
d d e fis? 	g a bes c 	d c bes a |  % f in secondo, by fis in solo/primo
bes g f ees	d ees d c 	bes c bes a |  % 170
g g' f ees 	d ees d c 	bes c bes a |
g g' f ees 	d ees d c 	bes c bes a |
g g' f ees 	d ees d c 	bes c bes a 
\cadenzaOn g2.^\fermata \cadenzaOff
}
\bar "||"
}


%\score {
%\ViolinoSecondoSummerOne
%}
