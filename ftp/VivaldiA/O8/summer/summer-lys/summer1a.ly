\version "2.12.3"
ViolinoPrimoSummerOne =  {
\key g \minor
\clef violin
\time 3/8

\relative g'' {
\mark "A"
r8_"Allegro non molto - Pianissimo"^"Languideza per il caldo" bes a |
r bes, a |
r c16 ( d) ees8 |
r a,16 ( bes) c8 |
bes'4 r8 |  % 5
c,8 ( bes) a |
c'4 r8 |
d,8 ( c) bes |
d'4 r8 |
ees,8 ( d) c |  % 10
fis,4.^\fermata |
bes'8 ( a g |
fis ees!  d) |
c4. ~ |
c4. |  % 15
c'8 ( bes a |
g fis  ees!) |
d4. ~ |
d4. ~ |
d4 r8 |  % 20
r8 bes'16 ( c) d8 |
r8 aes16 ( bes) c8 |
r8 g16 ( a) bes8 |
r8 fis16 ( g) a8 |
r8 g4 |  % 25
r8 bes,16 ( c) d8 |
r8 aes16 ( bes) c8 |
r8 g16 ( a) bes8 |
r8 fis16 ( g) a8 |
r8 g4 |  % 30
}
\bar "||"
\mark "B"
\time 4/4
<< { R1*18 } { s_"Allegro" } >> |
\relative g' {
r16 g'_"Forte" g g g g d g 	bes, g' g g g g d g |
a, g' g g g g d g 	a, g' g g g g d g |  % 50
a, fis' fis fis fis fis d fis 	a, fis'! fis fis fis fis d fis! |  
}
\bar "||"
\time 3/8
\relative g'' {
g8_"Pianissimo"  bes a |
r8 bes, a |
r8 bes'16 ( c) d8 |
r8 aes16 ( bes) c8 |  % 55
r8 g16 ( a) bes8 |
r8 fis16 ( g) a8 |
r8 g4 |
}
\mark "C"
R4.*12
\relative g'' {
\set tupletSpannerDuration = #(ly:make-moment 1 8)
\times 2/3 {
bes16_"Piano"[( c d]) 	bes[( c d]) 	bes[( c d]) |
}
bes4 r8 |
R4.*5 |
\mark "D"
#(override-auto-beam-setting '(end 1 24 3 8) 1 8)
#(override-auto-beam-setting '(end 1 24 3 8) 2 8)
\times 2/3 {
bes16_"Piano" ( c  d)	bes ( c  d)	bes ( c  d) |
a ( bes  c)	a ( bes  c) 	a ( bes  c) |
bes16 ( c  d)	bes ( c  d)	bes ( c  d) |  % 80
a ( bes  c)	a ( bes  c) 	a ( bes  c) |
}
bes16. c32 bes16. c32 bes16. c32 |
bes16._"Pianissimo" c32 bes16. c32 bes16. c32 |
a16._"Piano" bes32 a16. bes32 a16. bes32 |
a16._"Pianissimo" bes32 a16. bes32 a16. bes32 |  % 85
g16._"Piano" a32 g16. a32 g16. a32 |
g16._"Pianissimo" a32 g16. a32 g16. a32 |
f16._"Piano" g32 f16. g32 f16. g32 |
f16._"Pianissimo" g32 f16. g32 f16. g32 |
#(override-auto-beam-setting '(end 1 32 3 8) 1 8)
#(override-auto-beam-setting '(end 1 32 3 8) 2 8)
f32_"Forte"^"Venti" d' c bes	a d c bes	a g f e |  % 90
f a g f 	e a g f 	e! d cis b |
a g f d 	f g a f 	a b cis a |
d e f d 	f g a f 	a b cis a |
d d, d' d, 	d' d, d' d, 	d' d, d' d, |
c' d, c' d, 	c' d, c' d, 	c' d, c' d, |  % 95
bes' d, bes' d,	bes' d, bes' d,	bes' d, bes' d, |
a' d, a' d,	a' d, a' d, 	a' d, a' d, |
d' d, d' d, 	d' d, d' d, 	d' d, d' d, |
c' d, c' d, 	c' d, c' d, 	c' d, c' d, |
bes' d, bes' d,	bes' d, bes' d,	bes' d, bes' d, |  % 100
a' d, a' d,	a' d, a' d, 	a' d, a' d, |
g e g e 	g e g e 	g e g e |
a f a f 	a f a f 	a f a f |
bes g bes g 	bes g bes g 	bes g bes g |
a f a f 	a f a f 	a f a f |  % 105
g e g e 	g e g e 	g e g e |
f d f d 	f d f d 	f d f d |
e d e d		e d e d 	e d e d |
e cis e cis 	e cis e cis 	e cis e cis |
d8_"Pianissimo" f e |  % 110
r g f |
r8 g16 ( a) bes8 |
r8 ees,!16 ( f) g8 |
r8 d16 ( e) f8 |
r8 cis16 ( d) e8 |  % 115
\mark "E"
d4 r8 |
R4.*38 |
d32_"Forte" d, d' d,	d' d, d' d, 	d' d, d' d, |  % 155
c' d, c' d,	c' d, c' d, 	c' d, c' d, |
bes' d, bes' d,	bes' d, bes' d,	bes' d, bes' d, |
a' d, a' d, 	a' d, a' d, 	a' d, a' d, |
d' d, d' d,	d' d, d' d, 	d' d, d' d, |
c' d, c' d,	c' d, c' d, 	c' d, c' d, |  % 160
bes' d, bes' d,	bes' d, bes' d,	bes' d, bes' d, |
a' d, a' d, 	a' d, a' d, 	a' d, a' d, |
d'' c c bes 	bes a a g	g f f ees |
ees d d c 	c bes bes a 	a g g fis |
fis fis g a 	bes c d ees 	fis ees d c |	% 165 % first fis not marked here
bes bes c d 	ees f g a 	bes a g f |
ees f ees f 	d ees d ees 	c d c d |
bes c bes c 	a bes a bes 	g a g a |
fis d e fis 	g a bes c 	d c bes a |
bes g f ees	d ees d c 	bes c bes a |  % 170
g g' f ees 	d ees d c 	bes c bes a |
g g' f ees 	d ees d c 	bes c bes a |
g g' f ees 	d ees d c 	bes c bes a 
\cadenzaOn g2.^\fermata \cadenzaOff
}
\bar "||"
}


%\score {
%\ViolinoPrimoSummerOne
%}
