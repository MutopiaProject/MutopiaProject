\version "2.12.3"
ViolinoPrimoWinterThree =  {
\clef violin
\key f \minor
\time 3/8

\mark "F"
\relative f'' {
<< { R4.*20 } { s_"Allegro" } >>
bes16 ( aes g f e  d) |
c ( d e f g  aes) |
bes16 ( aes g f e  d) |
c ( d e f g  aes) |
% 25
\mark "G"
bes8 ( aes  g) |
aes ( g  f) |
bes8 ( aes  g) |
aes ( g  f) |
bes8 ( aes  g) |
% 30
aes-| ( aes-|  aes)-| |
a-| ( a-|  a)-| |
bes-| ( bes-|  bes)-| |
b-| ( b-|  b)-| |
c-| ( c-|  c)-| |
% 35
c-| ( c-|  c)-| |
c-| ( c-|  c)-| |
c-| ( c-|  c)-| |
bes-. ( bes-.  bes)-. |
aes4 r8 |
% 40
\mark "H"
aes16 g f ees des c |
bes aes g f e!8 |
g'32 ( f e  d) c8 r |
g'32 ( f e  d) c8 r |
c'32 ( bes aes  g) f8 r |
% 45
c'32 ( bes aes  g) f8 r |
bes32 ( aes g  f) e8 r |
bes'32 ( aes g  f) e8 r |
f16^"Cader à terra" ees des c bes aes |
g f e d c bes |
% 50
aes8 bes c |
\mark "I"
f4. ~ |
f ~ |
f ~ |
f ~ |
% 55
f ~ |
f ~ |
f ~ |
f ~ |
f ~ |
% 60
f |
g8_"Piano" g' g |
aes aes aes |
g g g |
g g g |
% 65
f f f |
f f f |
ees ees ees |
ees ees ees |
d d d |
% 70
des des des |  % maybe should be d?
c c c |
c c c |
 b16[ g ] g,8 r |
r16 g' g,8 r |
% 75
r16 g' g,8 r |
r16 g' g,8 r |
r16 g' g,8 r |
r16 g' g,8 r |
r16 g' g,8 r |
% 80
R4.*5 |
% 85
f''16 ( ees d c b  a) |
% vivaldi forgot to mark the b natural in this measure
g ( a b c d  ees) |
f ( ees d c b  a) |
g ( a b c d  ees) |
\mark "L"
f8 r8 r32 b, c d |
% 90
f,8 r8 r32 d ees f |
g,8 r8 r32 b c d |
ees8 f g |
c,4 r8 |
R4.*7 |
\mark "M"
\newSpacingSection
g''8(^\markup{\translate #'(1 . 0) "Vento Sirocco"} f ees) |
d( ees f) |
g( f ees) |
d( ees f) |
% 105
g( aes bes) |
aes r r |
g r r |
f r r |
aes g r |
% 110
g, f r |
bes' aes r |
aes, g r |
g' ( aes  bes) |
r c,16 ( d  ees8) |
% 115
r aes16 ( g  f8) |
ees4 r8 |
g ( aes  bes) |
r c,16 ( d  ees8) |
r aes16 ( g  f8) |
% 120
\mark "N"
#(override-auto-beam-setting '(end 1 32 3 8 )  1 8)
#(override-auto-beam-setting '(end 1 32 3 8 )  2 8)
ees4 r8 |
R4.*3 |
f32 f f f 	f f f f 	f f f f |
% 125
e4 r8 |
R4.
aes32 aes aes aes	aes aes aes aes 	aes aes aes aes |
aes4 r8 |
f32 f f f 	f f f f 	f f f f |
% 130
g4 r8 |
g32 g g g	g g g g 	g g g g |
aes4 r8 |
aes32 aes aes aes	aes aes aes aes 	aes aes aes aes |
bes4 r8 |
% 135
bes32 bes bes bes	bes bes bes bes 	bes bes bes bes |
bes4 r8 |
aes32 aes aes aes	aes aes aes aes 	aes aes aes aes |
aes bes aes g	f g f ees	des ees des c |
bes c bes aes 	g aes g f	e! f e d! |
% 140
c32 c c c 	c c c c 	c c c c |
bes32 bes bes bes	bes bes bes bes 	bes bes bes bes |
aes f' f f	aes, f' f f	aes, f' f f |
g, f' f f	g, f' f f 	g, f' f f |
g, e'! e e	g, e'! e e	g, e'! e e |
% 145
f f f f 	aes aes aes aes	c c c c |
aes' bes aes g	f g f ees 	des ees des c |
bes c bes aes	g aes g f	e f e d |
c c c c 	c c c c 	c c c c |
bes bes bes bes	bes bes bes bes	bes bes bes bes |
% 150
aes f' f f	aes, f' f f	aes, f' f f |
g, f' f f	g, f' f f 	g, f' f f |
g, e'! e e	g, e'! e e	g, e'! e e |
f4.^\fermata
}
\bar "||"

} 


%\score {
%\ViolinoPrimoWinterThree
%}
