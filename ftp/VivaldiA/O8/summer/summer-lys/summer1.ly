\version "2.12.3"
ViolinoPrincipaleSummerOne =  {
\key g \minor
\clef violin
\time 3/8

\relative g'' {
\mark "A"
r8_"Allegro non molto -- Pianissimo"^"Languideza per il caldo" bes a |
r bes, a |
r c16 ( d) ees8 |
r a,16 ( bes) c8 |
bes'4 r8 |	% 5
c,8 ( bes) a |
c'4 r8 |
d,8 ( c) bes |
d'4 r8 |
ees,8 ( d) c |	% 10
fis,4.^\fermata |
bes'8 ( a g |
fis ees!  d) |
c4. ~ |
c4. |	% 15
c'8 ( bes a |
g fis  ees!) |
d4. ~ |
d4. ~ |
d4 r8 |	% 20
r8 bes'16 ( c) d8 |
r8 aes16 ( bes) c8 |
r8 g16 ( a) bes8 |
r8 fis16 ( g) a8 |
r8 g4 |	% 25
r8 bes,16 ( c) d8 |
r8 aes16 ( bes) c8 |
r8 g16 ( a) bes8 |
r8 fis16 ( g) a8 
r8 g4 |	% 30
}
\bar "||"
\mark "B"
\time 4/4
\relative g'' {
g,16_"Allegro, e tutto Sopra il Canto"^"Il Cucco" g' g g g g bes, g' 	g, g' g g g g bes, g' |
g,16 g' g g g g bes, g' 	g, g' g g g g bes, g' |
g,16 g' g g g g bes, g' 	g, bes a bes g bes a g |
a16 a' a a a a c, a' 	a, a' a a a a c, a' |
a,16 a' a a a a c, a' 	a, c bes c a c bes a |	% 35
bes16 bes' bes bes bes bes d, bes' 	bes, bes' bes bes bes bes d, bes' |
bes,16 d c d bes d c bes 	c c' c c c c ees, c' |
c,16 c' c c c c ees, c' 	c, ees d ees c ees d c |
d16_"Sopra il Cantino" d' d d d d fis, d' 	d, d' d d d d fis,! d' |
d,16 bes' bes bes bes bes g bes	d, bes' bes bes bes bes g bes |	% 40
ees,16 bes' bes bes bes bes g bes	ees, bes' bes bes bes bes g bes |
ees,16 c' c c c c g c 	e,! c' c c c c g c |
f,16 c' c c c c a c 	f, c' c c c c a c |
f,16 d' d d d d a d 	fis, d' d d d d a d |
bes16 g g g g g d g 	bes, g' g g g g d g |	% 45
ees f f f f f c f 	a, f' f f f f c f |
d ees ees ees ees ees bes ees 	g, ees' ees ees ees ees bes ees |
c d d d d d a d 	fis, d' d d d d a d |
bes g'_"Tutti" g g g g d g 	bes, g' g g g g d g |
a, g' g g g g d g 	a, g' g g g g d g |	% 50
a, fis' fis fis fis fis d fis 	a, fis'! fis fis fis fis d fis! |
}
\bar "||"
\time 3/8
\relative g'' {
g8_"Pianissimo"  bes a |
r8 bes, a |
r8 bes'16 ( c) d8 |
r8 aes16 ( bes) c8 |	% 55
r8 g16 ( a) bes8 |
r8 fis16 ( g) a8 |
r8 g4_"Solo" (
\mark "C" 
d8.) ees16^"La Tortorella" (  d) ees ( 
d8.) ees16( d) ees(	% 60
d8.) g16( d) g(
d16) g( d) g( d) g(
aes,8) g( g16. g'32 
aes,8) g( g16. f'32 
aes,8) g( g16. ees'32 	% 65
aes,8) g( g16. d'32 
aes8) g  g32[( a? bes c)] |	% second a not marked natural, but it does not match the following measures
d4 g,32( a bes c) |
d4 g,32( a bes c) |
d8 g,4\trill |	% 70
R4. |
d''4\trill_"Il Gardellino" r8 |
d4\trill r32 g d g |
d4\trill r32 g d ( g) |
d[( g) d( g)]	 d[( g) d( g)] 	 d[( g) d( g)] |	% 75
d[( g) d( g)] 	 d[( g) d( g)] 	 d[( g) d( g)] |
d4.\trill |
\mark "D"
#(override-auto-beam-setting '(end 1 24 3 8) 1 8)
#(override-auto-beam-setting '(end 1 24 3 8) 2 8)
\set tupletSpannerDuration = #(ly:make-moment 1 8)
\times 2/3 {
bes16_"Piano" ( c  d)	bes ( c  d)	bes ( c  d) |
a ( bes  c)	a ( bes  c) 	a ( bes  c) |
bes16 ( c  d)	bes ( c  d)	bes ( c  d) |	% 80
a ( bes  c)	a ( bes  c) 	a ( bes  c) |
}
bes16. c32 bes16. c32 bes16. c32 |
bes16._"Pianissimo" c32 bes16. c32 bes16. c32 |
a16._"Piano" bes32 a16. bes32 a16. bes32 |
a16._"Pianissimo" bes32 a16. bes32 a16. bes32 |	% 85
g16._"Piano" a32 g16. a32 g16. a32 |
g16._"Pianissimo" a32 g16. a32 g16. a32 |
f16._"Piano" g32 f16. g32 f16. g32 |
f16._"Pianissimo" g32 f16. g32 f16. g32 |
#(override-auto-beam-setting '(end 1 32 3 8) 1 8)
#(override-auto-beam-setting '(end 1 32 3 8) 2 8)
f32_"Forte"^"Vento Borea" d' c bes	a d c bes	a g f e |	% 90
f a g f 	e a g f 	e! d cis b |
a g f d 	f g a f 	a b cis a |
d e f d 	f g a f 	a b cis a |
d d, d' d, 	d' d, d' d, 	d' d, d' d, |
c' d, c' d, 	c' d, c' d, 	c' d, c' d, |	% 95
bes' d, bes' d,	bes' d, bes' d,	bes' d, bes' d, |
a' d, a' d,	a' d, a' d, 	a' d, a' d, |
d' d, d' d, 	d' d, d' d, 	d' d, d' d, |
c' d, c' d, 	c' d, c' d, 	c' d, c' d, |
bes' d, bes' d,	bes' d, bes' d,	bes' d, bes' d, |	% 100
a' d, a' d,	a' d, a' d, 	a' d, a' d, |
g e g e 	g e g e 	g e g e |
a f a f 	a f a f 	a f a f |
bes g bes g 	bes g bes g 	bes g bes g |
a f a f 	a f a f 	a f a f |	% 105
g e g e 	g e g e 	g e g e |
f d f d 	f d f d 	f d f d |
e d e d		e d e d 	e d e d |
e cis e cis 	e cis e cis 	e cis e cis |
d8_"Pianissimo" f e |	% 110
r g f |
r8 g16 ( a) bes8 |
r8 ees,!16 ( f) g8 |
r8 d16 ( e) f8 |
r8 cis16 ( d) e8 |	% 115
\mark "E"
d16_"Solo"^"Il Pianto del Villanello" ( f e  g) f8 ~ |
f16 b ( e, f d  e) |
cis ( e d  f) ees8 ~ |
ees16 a ( d, ees c  d) 	% putting a barcheck here make lilypond-1.4.10 psychotic
b ( d c  ees) des8 ~ |	% 120
des16 g ( c, des bes  c) |
a ( c bes  d) c8 ~ |
c16 a' ( b, c a  b!) |
g ( b e  fis) g8 ~ |
g16 cis ( fis, g e  fis!) |	% 125
dis4. |
b'16 ( a gis f? e  d) |
cis4. |
a'16 ( g fis ees! d  c) |
b4. |	% 130
g'16 ( f e d c  bes) |
a4. |
bes16 ( c d ees f  g) |
aes8 ( g) f |
e16 d'( c bes a  g) |	% 135
f c' ( aes g f  ees) |
d c' ( bes aes g  f) |
ees ( bes' aes g f  ees) |
des4. |
c16 g' ( f ees d  c) |	% 140
fis4. ~ |
fis8 g ( a) |
bes ( c) d |
ees, ( d) c |
aes'16 ( bes g  aes) fis8 |
c'16 ( d bes  c) aes8 |
ees' ( d  c)  |
\appoggiatura bes8 aes4. |	% grace note should be slurred
c8 ( bes  aes) |
\appoggiatura g8 fis4. |	% grace note should be slurred
g8 ( f  ees) |
\appoggiatura d8 cis4. |	% grace note should be slurred
d8. ( e32 fis g16 a32  bes) |
 c16[ a ] \appoggiatura g8 fis8.[ g16 ] |	% rhythm actually written: 16 16 grace 16. 16
g32_"Tutti" d, d' d,	d' d, d' d, 	d' d, d' d, |
c' d, c' d,	c' d, c' d, 	c' d, c' d, |
bes' d, bes' d,	bes' d, bes' d,	bes' d, bes' d, |
a' d, a' d, 	a' d, a' d, 	a' d, a' d, |
d' d, d' d,	d' d, d' d, 	d' d, d' d, |
c' d, c' d,	c' d, c' d, 	c' d, c' d, |
bes' d, bes' d,	bes' d, bes' d,	bes' d, bes' d, |
a' d, a' d, 	a' d, a' d, 	a' d, a' d, |
d'' c c bes 	bes a a g	g f f ees |
ees d d c 	c bes bes a 	a g g fis |
fis fis g a 	bes c d ees 	fis ees d c |	% first fis not marked here
bes bes c d 	ees f g a 	bes a g f |
ees f ees f 	d ees d ees 	c d c d |
bes c bes c 	a bes a bes 	g a g a |
fis d e fis!	g a bes c 	d c bes a |
bes g f ees	d ees d c 	bes c bes a |
g g' f ees 	d ees d c 	bes c bes a |
g g' f ees 	d ees d c 	bes c bes a |
g g' f ees 	d ees d c 	bes c bes a 
\cadenzaOn g2.^\fermata \cadenzaOff
}
\bar "||"
}


%\score {
%\ViolinoPrincipaleSummerOne
%}
