\version "2.12.3"
ViolinoSecondoWinterThree =  {
\clef violin
\key f \minor
\time 3/8

\mark "F"
\relative f'' {
<< { R4.*20 } { s4._"Allegro" } >>
R4.
bes16 ( aes g f e  d) |
c ( d e f g  aes) |
bes16 ( aes g f e  d) |
% 25
\mark "G"
e!8 ( g  bes) |
c ( bes  aes) |
g ( f  e) |
c' ( bes  aes) |
g ( f  e) |
% 30
f-| ( f-|  f)-| |
f-| ( f-|  f)-| |
f-| ( f-|  f)-| |
f-| ( f-|  f)-| |
e-| ( c-|  c)-| |
% 35
des-| ( des-|  des)-| |
d-| ( d-|  d)-| |
ees-| ( ees-|  ees)-| |
e-. ( e-.  e)-. |
f4 r8 |
% 40
\mark "H"
f16 ees des c bes aes |
g f e d c8 |
bes''-| \( bes-|  bes\)-| |
bes-| \( bes-|  bes\)-| |
aes-| \( aes-|  aes\)-| |
% 45
aes-| \( aes-|  aes\)-| |
g-| \( g-|  g\)-| |
g-| \( g-|  g\)-| |
f16^"Cader à terra" ees des c bes aes |
g f e d c bes |
% 50
aes8 bes c |
\mark "I"
f4.^"Giaccio" ~ |
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
e8_"Piano" e'! e |
f f f |
e e e |
ees! ees ees |
% 65
d d d |
des! des des |
c c c |
c c c |
b b b |
% 70
bes! bes bes |
a a a |
aes! aes aes |
 g16[ g ] g,8 r |
r16 g' g,8 r |
% 75
r16 g' g,8 r |
r16 g' g,8 r |
r16 g' g,8 r |
r16 g' g,8 r |
r16 g' g,8 r |
% 80
R4.*5 |
R4.
f''16 ( ees d c b  a) |
% vivaldi remembered to mark the b natural in this measure
% but it's not marked in the violin solo and violin I parts
g ( a b c d  ees) |
f ( ees d c b  a) |
\mark "L"
g8 r8 r32 b c d |
% 85
f,8 r8 r32 d ees f |
g,8 r8 r32 b c d |
ees8 f g |
c,4 r8 |
R4.*7 |
\mark "M"
\newSpacingSection
<< { ees'8( d  c) } { s^"Vento Sirocco" } >> |
bes8( c d) |
ees( d c) |
bes( c d) |
% 105
ees( f g) |
f r r |
ees r r |
d r r |
f ees r |
% 110
ees, d r |
g' f r |
f, ees r |
ees'( f g) |
r aes,16( bes c8) |
% 115
r f16( ees d8) |
ees4 r8
ees( f g) |
r aes,16( bes c8) |
r f16( ees d8) | % vivaldi had f e(nat) des; should be f ees d(nat) based on current key (ees major) and measure 115 
% 120
\mark "N"
#(override-auto-beam-setting '(end 1 32 3 8 )  1 8)
#(override-auto-beam-setting '(end 1 32 3 8 )  2 8)
ees4 r8
R4.*3
des32 des des des 	des des des des 	des des des des |
g,4 r8 |
R4.
f'32 f f f	f f f f 	f f f f |
f4 r8 |
des32 des des des 	des des des des 	des des des des |
des4 r8 |
ees32 ees ees ees	ees ees ees ees 	ees ees ees ees |
ees4 r8 |
f32 f f f	f f f f 	f f f f |
f4 r8 |
g32 g g g	g g g g 	g g g g |
g4 r8 |
aes32 aes aes aes	aes aes aes aes 	aes aes aes aes |
aes bes aes g	f g f ees	des ees des c |
bes c bes aes 	g aes g f	e! f e d! |
c32 c c c 	c c c c 	c c c c |
bes32 bes bes bes	bes bes bes bes 	bes bes bes bes |
aes f' f f	aes, f' f f	aes, f' f f |
g, f' f f	g, f' f f 	g, f' f f |
g, e'! e e	g, e'! e e	g, e'! e e |
f f f f 	aes aes aes aes	c c c c |
aes' bes aes g	f g f ees 	des ees des c |
bes c bes aes	g aes g f	e f e d |
c c c c 	c c c c 	c c c c |
bes bes bes bes	bes bes bes bes	bes bes bes bes |
aes f' f f	aes, f' f f	aes, f' f f |
g, f' f f	g, f' f f 	g, f' f f |
g, e'! e e	g, e'! e e	g, e'! e e |
f4.^\fermata
}
\bar "||"

} 

%\score {
%\ViolinoSecondoWinterThree
%}

