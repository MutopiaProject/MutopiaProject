\version "2.12.3"
AltoViolaSummerOne =  {
\key g \minor
\clef alto
\time 3/8

\relative d'' {
\mark "A"
r8_"Allegro non molto - Pianissimo"^" "^" "^"Languideza per il caldo" d d |
r d, fis |
r fis fis |
r d d |
d4 r8 |
fis4 r8 |
fis4 r8 |
g4 r8 |
g4 r8 |
g4 a,8 |
a4.^\fermata |
R4.*2
fis'8 ( ees! d |
c16 bes a8  g) |
fis4. ~ |
fis4. |
bes'8 ( a g |
fis16 ees! d8  c) |
bes4 r8 |
r d d |
r ees ees |
r d d |
r fis fis |
r d4 |
r8 d d |
r ees ees |
r d d |
r fis, fis |
r d4 |
}
\bar "||"
\mark "B"
\time 4/4
<< { R1*18 } { s_"Allegro" } >> |
\relative g' {
r16 bes_"Forte" bes bes bes bes g bes 	d, bes' bes bes bes bes g bes |
d, d d d d d a d 	a d d d d d a d |	% second a should be fis?
fis, d' d d d d a d 	fis,! d' d d d d a d |
}
\bar "||"
\time 3/8
\relative c' {
d8_"Pianissimo" d d |
r d d |
r d d |
r ees ees |
r d d |
r fis fis |
r d4 |
}
\mark "C"
R4.*12
\relative g' {
g16_"Piano" g g g g g |
g4 r8 |
R4.*5 |
\mark "D"
g16_"Piano" g g g g g |
d' d d d d d |
g, g g g g g |
d' d d d d d |
g, g g g g g |
cis,_"Pianissimo" cis cis cis cis cis |
d_"Piano" d d d d d |
d_"Pianissimo" d d d d d |
e_"Piano" e e e e e |
a,_"Pianissimo" a a a a a |
d_"Piano" d d d d d |
d_"Pianissimo" d d d d d |
d16_"Forte"^"Venti impettuosi" d' d, d, d d |  % 90
a' a' a, a a a |
d d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |  % 95
d' d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |  % 100
d' d' d, d, d d |
a' a' cis, a a a |
a a' d, a a a |
a a' e a, a a |
a a' d, a a a |  % 105
a a' cis, a a a |
a a' d, a a a |
a a' d, a a a |
a a' cis, a a a |
c8_"Pianissimo" a' a |  % 110
r cis, a |
r bes bes |
r bes bes |
r a a |
r a a |  % 115
\mark "E"
a4 r8 |
R4.*38 |
d16_"Forte" d d d d d |  % 155
fis fis fis fis fis fis |
g g g g g g |
fis fis fis fis fis fis |
g g g g d d |
fis fis fis fis fis fis |  % 160
g g g g g g |
d d d d d d |
d d d d d d |
ees ees ees ees ees ees |
a, a a a a d |  % 170
d d d d d bes |
g g g g g g |
e' e f f g g |
a, a a a a d |
#(override-auto-beam-setting '(end 1 32 3 8) 1 8)
#(override-auto-beam-setting '(end 1 32 3 8) 2 8)
d32 g f ees	d ees d c	bes c bes a |  % 175
g g' f ees	d ees d c 	bes c bes a |
g g' f ees	d ees d c 	bes c bes a |
g g' f ees	d ees d c 	bes c bes a 
\cadenzaOn g2.^\fermata \cadenzaOff
}
\bar "||"
}


%\score {
%\AltoViolaSummerOne
%}
