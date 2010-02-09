#(ly:set-option 'old-relative)
\version "2.12.3"
ViolinoPrincipaleSummerThree =  {
\clef violin
\key g \minor
\time 3/4 

\mark "G"
\relative g' {
g16_" "_" "_"Presto"^"Tempo impettuoso d' Estate" g, g g	g g g g 	g g g g |
f' g, g g 	g g g g 	g g g g |
ees' g, g g 	g g g g 	g g g g |
d' g, g g 	g g g g 	g8 r |
r2.^\fermata | % 5
d''16 d, d d 	d d d d 	d d d d |
c'16 d, d d 	d d d d 	d d d d |
bes'16 d, d d 	d d d d 	d d d d |
a'16 d, d d 	d d d d 	d8 r |
r16 d' c bes 	a g fis e	d c bes a | % 10
g g g g 	g g g g 	g g g g |
g g'' f ees!	d c bes a 	g f ees d |
c c c c 	c c c c 	c c c c |
c bes'' a g	f ees d c 	bes a g f |
ees ees ees ees	ees ees ees ees	ees ees ees ees | % 15
ees d'' c bes	a g fis e 	d c bes a |	% there's a sharp _under_ the f in this measure
g g g g 	g g g g 	g g g g |
g d'' c bes	a g fis e 	d c bes a |	% f is not sharp in solo part, but it _is_ in the primo part 
g g g g 	g g g g 	g g g g |
d' g, g g 	d' g, g g 	d' g, g g |  % 20
d16 ( a' bes c 	d e fis  g)	a8 r |
r16 a, ( bes c 	d e fis  g)	a8 r |
r16 bes, ( c d 	ees! fis g  a)	bes8 r |
r16 d, ( e fis	g a bes  c) 	d8 r |
r16 d, ( e fis	g a bes  c) 	d8 r |  % 25
r16 a, ( bes c 	d e fis  g)	a8 r |
r16 bes, ( c d 	ees! fis g  a)	bes8 r |
r16 d, ( e fis	g a bes  c) 	d8 r |
bes16 g d bes	bes' g d bes	bes' g d bes |
d bes g d	d' bes g d 	d' bes g d |  % 30
g d bes g	g' d bes g	g' d bes g |
g' b g b	g b g b 	g b g b |
g c g c 	g c g c 	g c g c |
g cis g cis	g cis g cis	g cis g cis
a d a d 	a d a d 	a d a d |  % 35
a d a d 	a d a d 	a d a d |
a cis a cis	a cis a cis 	a cis a cis |
d d, e f 	g a b cis	d a b! cis! |
d e f g 	a d, e! f 	g a b cis |
d4	r16 a_"Solo" a cis	cis e e a |  % 40
} % non-relative
a''' a'' d' a''	g''' a'' d' a''	f''' a'' d' a'' |
e''' a'' d' a''	f''' a'' d' a''	g''' a'' d' a'' |
a''' a'' d' a''	g''' a'' d' a''	f''' a'' d' a'' |
< d' a'' ees''' >4	r16 d'' d'' f'' 	f'' a'' a'' d''' |
d''' d'' d' d''	c''' d'' d' d''	bes'' d'' d' d'' |  % 45
a'' d'' d' d'' 	bes'' d'' d' d''	cis''' d'' d' d'' |
d''' d'' d' d''	c''' d'' d' d''	bes'' d'' d' d'' |
< d' d'' a'' >4 \relative g''' { r16 a a g	g f f ees |
ees d d c 	c bes bes a 	a g g f |
f e e d 	d c c bes 	bes a a gis |  % 50 
} << \context Voice = SoloUp { \stemUp \relative g' {
a8^"Sopra il Tenove e Basso" gis a gis a f |
g ees f d ees cis |
d cis d cis d cis |
d cis? d cis d cis | } }
\context Voice = SoloDown { \stemDown \tieDown \relative g' {
d2. ~ | d ~ | d ~ | d } } >>
\relative d' {
d8_"Tutti" d d d' f a |  % 55
bes d,, d d' g bes |
bes e,, e e' g bes |
a f, f c' f a |
a d,, d d' f a |
g ees,! ees bes' ees g |  % 60
g c,, c c' ees g |
g d, d b' d g |
f d, d b' d f |
ees16 ees, f g 	aes b c d	ees8 r |
r16 ees, f g 	aes b c d 	ees8 r |  % 65
r16 ees, f g	aes b c d 	ees8 r |
ees,16 c' bes c	ees, c' bes c	ees, c' bes c |
f, c' bes c	f, c' bes c 	f, c' bes c | 
g c b! c 	g c b! c 	g b! a b |
c c, c c 	c c c c 	c c c c |  % 70
bes' c, c c 	c c c c 	c c c c |
aes' c, c c 	c c c c 	c c c c |
g' c, c c 	c c c c 	c8 r |
} << \context Voice = SoloUp { \stemUp \relative g'' {
g2. | g | g | f | g | } }
\context Voice = SoloDown { \stemDown \relative g'' {
ees16_"Solo" ( c) ees ( c)	ees ( c) ees ( c)	ees ( c) ees ( c) |
d ( b) d ( b)	d ( b) d ( b) 	d ( b) d ( b) |  % 75
ees16 ( c) ees ( c)	ees ( c) ees ( c)	ees ( c) ees ( c) |
d ( bes) d ( bes) 	d ( bes) d ( bes) 	d ( bes) d ( bes) |
ees ( bes) ees ( bes)	ees ( bes) ees ( bes)	ees ( bes) ees ( bes) } } >>
\relative g'' {
ees16 g g aes	aes bes bes c	c d d ees |
ees bes g ees	ees' bes g ees	ees' bes g ees |  % 80
f aes aes bes	bes c c d 	d ees ees f |
f c a! f 	f' c a f 	f' c a f |
g bes bes c 	c d d ees 	ees f f g |
g d b! g	g' d b! g	g' d b! g |
ees' c,,_"Tutti" c c	c c c c 	c c c c |  % 85
aes'! c, c c 	aes'! c, c c 	aes'! c, c c |
b b b b 	b b b b 	b b b b |
g' bes,! bes bes	g' bes, bes bes	g' bes, bes bes |
a a a a 	a a a a 	a a a a |
f' aes,! aes aes	f' aes,! aes aes	f' aes,! aes aes |  % 90
g g' g g 	g g g g 	g g g g |
ees' g, g g	ees' g, g g 	ees' g, g g |
fis fis fis fis	fis fis fis fis	fis fis fis fis |
d' f,! f f 	d' f, f f 	d' f, f f |
e e e e 	e e e e 	e e e e|  % 95
c' ees,! ees ees	c' ees, ees ees c' ees, ees ees |
d16_"Solo" d d d	fis d d d	a' d, d d |
bes' d, d d 	c' d, d d 	d' d, d d  |
ees' d, d d 	fis' d, d d 	g' d, d d |
a'' d,, d d	bes'' d,, d d	c'' d,, d d |  % 100
d'' d,_"Tutti" c bes	a g fis e 	d c bes a |	% f sharp in violin primo, but missing accidental in principale
g g g g 	g g g g 	g g g g |
g g'' f ees 	d c bes a 	g f ees d |
c c c c 	c c c c 	c c c c |
c bes'' a g	f ees d c 	bes a g f |  % 105
ees ees ees ees	ees ees ees ees	ees ees ees ees |
ees d'' c bes 	a g fis e	d c bes a |
g g g g 	g g g g 	g g g g |
} % non-relative
d''16_"Solo" g' g g'	ees'' g' g g'	fis'' g' g g' |
g'' g' g g'	f'' g' g g'	ees'' g' g g' |  % 110
d'' g' g g'	ees'' g' g g'	fis'' g' g g' |
g'' g' g g'	f'' g' g g'	ees'' g' g ees'' |
< g g' d'' >16_"Tutti" \relative g' {
  g16 a bes	c d e fis	g a bes a |	% e is marked natural in principale, but flat in primo and secondo parts
g f ees d 	c bes a g	fis e d c |
bes g bes g	bes g bes g	bes g bes g |  % 115
ees'_"Solo" ( d) fis ( e)	g ( fis!) a ( g) 	bes ( a) c ( bes) |
d ( c) ees ( d) 	f ( e) g ( fis) 	a ( g) bes ( a) |
ees, ( d) fis ( e)	g ( fis!) a ( g) 	bes ( a) c ( bes) |
d ( c) ees ( d) 	f ( e) g ( fis) 	a ( g) bes ( a) |
d,,_"Tutti" d d d	d d d d 	d d d d |  % 120
g d bes g	g' d bes g 	g' d bes g |
g' g g g 	g g g g 	g g g g |
fis fis fis fis	fis fis fis fis	fis fis fis fis |
g d bes g	g' d bes g 	g' d bes g |
g' g g g 	g g g g 	g g g g |  % 125
fis fis fis fis	fis fis fis fis	fis fis fis fis |
g g g g 	bes bes bes bes	d d d d |
g g g g 	bes bes bes bes	g g g g |
d d d d 	bes bes bes bes	g g g g |
g,2. |  % 130
}
\bar "||"
}


%\score {
%\ViolinoPrincipaleSummerThree 
%}

