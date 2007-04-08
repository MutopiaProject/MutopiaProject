\version "1.7.13"
\include "figured-accidentals.ly"

VioloncelloSummerThree = \notes {
\clef bass
\key g \minor
\time 3/4

\mark "G"
\relative g {
g16_"Presto"^"Tempo impettuoso d' Estate" g, g g	g g g g 	g g g g |
f' g, g g 	g g g g 	g g g g |
ees' g, g g 	g g g g 	g g g g |
d' g, g g 	g g g g 	g8 r |
r2.^\fermata
d''16 d, d d	d d d d 	d d d d |
c' d, d d 	d d d d 	d d d d |
bes' d, d d 	d d d d 	d d d d |
a' d, d d 	d d d d 	d8 r |
R2. |
g,8 g g g g g |
g g g g	g g |
c c c c c c |
c c c c c c |
ees ees ees ees ees ees |
ees ees ees ees ees ees |
g g g g g g |
g g g g g g |
g g g g g g |
g16 g g g 	d'^#`(columns ,figsharp) g, g g 	d'^#`(columns ,figsharp) g, g g |
d^#`(columns ,figsharp) d' d, d'	d, d' d, d'	d, d' d, d' |
d,^#`(lines "7" (columns ,figsharp)) c' d, c'	d, c' d, c'	d, c' d, c' |
d,^#'(lines "6" "4") bes' d, bes'	d, bes' d, bes'	d, bes' d, bes' |
d,^#`(columns ,figsharp) a' d, a'	d, a' d, a'	d, a' d, a' |
d,^#`(columns ,figsharp) d' d, d'	d, d' d, d'	d, d' d, d' |
d,^#`(lines "7" (columns ,figsharp)) c' d, c'	d, c' d, c'	d, c' d, c' |
d,^#'(lines "6" "4") bes' d, bes'	d, bes' d, bes'	d, bes' d, bes' |
d,^#`(columns ,figsharp) a' d, a'	d, a' d, a'	d, a' d, a' |
g,8 g g g g g |
g g g g g g |
g g g g g g |
g16^#`(columns ,fignatural) g' g, g'	g, g' g, g'	g, g' g, g' |
c, c' c, c'	c, c' c, c'	c, c' c, c' |
a,^#`(lines "7" (columns ,figsharp)) a' a, a'	a, a' a, a'	a, a' a, a' |
d, d' d, d'	d, d' d, d'	d, d' d, d' |
a,^#`(lines (columns "5" ,fignatural) "4") a' a, a'	a, a' a, a'	a, a' a, a' |
a,^#`(columns "3" ,figsharp) a' a, a'	a, a' a, a'	a, a' a, a' |
d,4 r r |
R2. |
d4 r r |
R2.*12
d8 a^#`(columns ,figsharp) d a^#`(columns ,figsharp) d a^#`(columns ,figsharp) |
d a^#`(columns ,figsharp) d a^#`(columns ,figsharp) d a^#`(columns ,figsharp) |
d16_"Forte" d' c bes 	a g f e 	d8 r |	% 55
g,16 g' f ees 	d c bes a 	g8 r |
c16^#`(lines "7" (columns ,fignatural)) c' bes a	g f e d 	c8 r |
f,16 f' e d 	c bes a g 	f8 r |
bes16^#'(lines "7") bes' a g	f ees d c 	bes8 r |
ees,16 ees' d c	bes a g f 	ees8 r |	% 60
aes16^#'(lines "7") aes' g f 	ees d c bes 	aes!8 r|
b16^#'(lines "6") b' a g 	f ees d c 	b!8 r |
g16^#`(lines "7" (columns ,fignatural)) g' f ees	d c b a 	g8 r |
c16 c' b? aes	g f ees d 	c8 r | % solo/v1/v2 have b-nat
r16 c' b? aes	g f ees d 	c8 r |	% 65
r16 c' b? aes	g f ees d 	c8 r |
ees8 ees ees ees ees ees |
f^#`(lines "6" "5" (columns ,figflat)) f f f f f |
g^#'(lines "5" "4") g g g g,^#`(columns ,fignatural) g |
c16 c c c 	c c c c 	c c c c |	% 70
bes' c, c c 	c c c c 	c c c c |
aes' c, c c 	c c c c 	c c c c |
g' c, c c 	c c c c 	c8 r |
c8 c'16 b [ c8 c, ] [ c c' ] |
g,4 r r |	% 75
c8 c'16 b [ c8 c, ] [ c c' ] |
bes,4 r r |
ees,8 ees'16 d [ ees8 ees, ] [ ees ees' ] |
g,4 r r |
g8 g'16 f [ g8 g, ] [ g g' ] |	% 80
aes,4 r r |
a!8 a'16 g [ a8 a, ] [ a a' ] |
bes,4 r r |
b!8 b'16 a [ b!8 b, ] [ b b' ] |
c,16 c c c	c c c c 	c c c c |	% 85
aes' c, c c 	aes' c, c c 	aes' c, c c |
b^#'(lines "7") b b b 	b b b b 	b b b b |
g' bes,! bes bes	g' bes, bes bes	g' bes, bes bes |
a^#'(lines "7") a a a 	a a a a 	a a a a |
f' aes,! aes aes	f' aes,! aes aes	f' aes,! aes aes |	% 90
g^#'(lines "7") g' g g 	g g g g 	g g g g |
ees' g, g g 	ees' g, g g 	ees' g, g g |
fis^#'(lines "7") fis fis fis	fis fis fis fis	fis fis fis fis |
d' f,! f f	d' f, f f 	d' f, f f |
e^#'(lines "7") e e e 	e e e e 	e e e e |	% 95
c' ees,! ees ees	c' ees, ees ees	c' ees, ees ees |
d2._"Tasto Solo" ~ |
d2. ~ |
d2. ~ |
d2. ~ |
d4 r r |
g,8 g g g g g |
g g g g g g |
c c c c c c |
c c c c c c |
ees ees ees ees ees ees |
ees ees ees ees ees ees |
g g g g g g |
g4 g,^#`(lines (columns "6" ,figflat) "4") g^#`(lines (columns "7" ,figsharp) "5") |
g^#'(lines "8" "6") g^#'(lines "7" "5") g^#'(lines "6" "4") |
g^#'(lines "5" "3") g^#`(lines (columns "6" ,figflat) "4") g^#`(lines (columns "7" ,figsharp) "5") |
g^#'(lines "8" "6") g^#'(lines "7" "5") g^#'(lines "6" "4") |
g^#'(lines "5" "3") r r |
R2. |
bes16 g bes g	bes g bes g 	bes g bes g |
d'4 r r |
R2.*3 |
d16 d' c bes	a bes a g 	fis e d c |
bes^#'(lines "6") bes bes bes	bes bes bes bes	bes bes bes bes |
c^#'(lines "6" "5") c c c 	c c c c 	c c c c |
d^#`(columns ,figsharp) d d d 	d d d d 	d d d d |
g, g g g 	bes bes bes bes	bes bes bes bes |
c^#'(lines "6" "5") c c c 	c c c c 	c c c c |
d^#`(columns ,figsharp) d d d 	d d d d 	d d d d |
g, g' g, g'	g, g' g, g'	g, g' g, g' |
g, g' g, g'	g, g' g, g'	g, g' g, g' |
g, g' g, g'	g, g' g, g'	g, g' g, g' |
g,2. |
}
\bar "|."
}


%\score {
%\VioloncelloSummerThree
%}






