\version "2.12.3"
AltoViolaWinterThree =  {
\clef alto
\key f \minor
\time 3/8

\mark "F"
\relative f' {
<< { R4.*20 } { s4._"Allegro" } >>
e4. ~ |
e4. ~ |
e4. ~ |
e4. |
% 25
\mark "G"
g4. |
f |
e8 ( f  g) |
f4. |
e8 ( f  g) |
% 30
f-| ( f-|  f)-| |
ees-| ( ees-|  ees)-| |
des-| ( des-|  des)-| |
des-| ( des-|  des)-| |
c-| ( c'-|  c)-| |
% 35
bes-| ( bes-|  bes)-| |
aes-| ( aes-|  aes)-| |
g-| ( g-|  g)-| |
g-. ( g-.  e)-. |
c4. ~ |
% 40
\mark "H"
c4. ~ |
c4. |
e8-| ( e-|  e)-| |
e-| ( e-|  e)-| |
f-| ( f-|  f)-| |
% 45
f-| ( f-|  f)-| |
f-| ( f-|  f)-| |
e-| ( e-|  e)-| |
c8 des'16 c bes aes |
g f e d c bes |
% 50
aes8 bes c |

\mark "I"
f f f |
ees ees ees |
des des des |
c c c |
% 55
bes bes bes |
aes aes aes |
g g g |
f f f |
ees ees ees |
% 60
des des des |
c4 r8 |
R4.*11
r8 r8 r16 g'' |
g,8 r r16 g' |
% 75
g,8 r r16 g' |
g,8 r r16 g' |
g,8 r r16 g' |
g,8 r r16 g' |
g,8 r r16 g' |
% 80
g,8 r r |
R4.*4 |
% 85
b4. ~ |
b ~ |
b ~ |
b |
\mark "L"
bes8 r r32 b' c d |
% 90
f,8 r r32 d ees f |
g,8 r r32 b c d |
ees8 f g |
c,4 r8 |
R4.*7 |
\mark "M"
\newSpacingSection
c16 ( d ees f g  aes) |
bes4 bes,8 |
ees16 ( f g8  aes) |
bes4 bes,8 |
% 105
ees4 ees8 |
bes4 r8 |
ees r r |
bes r r |
bes ees r |
% 110
ees bes r |
ees f r |
d ees r |
g ( f  ees) |
r aes aes, |
% 115
r aes' bes |
ees,4 r8 |
g ( f  ees) |
r aes aes, |
r aes' bes |
% 120
\mark "N"
#(override-auto-beam-setting '(end 1 32 3 8 )  1 8)
#(override-auto-beam-setting '(end 1 32 3 8 )  2 8)
ees,4 r8 |
R4.*3
bes'32 bes bes bes 	bes bes bes bes 	bes bes bes bes |
% 125
bes4 r8 |
R4. |
c32 c c c	c c c c 	c c c c |
c4 r8 |
bes32 bes bes bes 	bes bes bes bes 	bes bes bes bes |
% 130
g4 r8 |
c32 c c c	c c c c 	c c c c |
aes4 r8 |
des32 des des des	des des des des 	des des des des |
bes4 r8 |
% 135
g32 g g g	g g g g 	e e e e |
e?4 r8 |  % vivaldi ommitted nat on e; solo and figured bass have nat
c'32 c c c	c c c c 	c c c c |
c4 r8 |
R4. |
% 140
c,32 c c c 	c c c c 	c c c c |
bes32 bes bes bes	bes bes bes bes 	bes bes bes bes |
c32 c c c 	c c c c 	c c c c |
c32 c c c 	c c c c 	c c c c |
c32 c c c 	c c c c 	c c c c |
% 145
aes aes aes aes	c c c c 	f f f f	|
c4 r8 |
R4. |
c32 c c c 	c c c c 	c c c c |
bes bes bes bes	bes bes bes bes	bes bes bes bes |
% 150
c32 c c c 	c c c c 	c c c c |
c32 c c c 	c c c c 	c c c c |
c32 c c c 	c c c c 	c c c c |
aes4.^\fermata
%%%\property auto_Beam_Settings \revert #'(begin 1 32 * * )
%%%\property auto_Beam_Settings \revert #'(end 1 32 * * )
\bar "||"
}

} 

%\score {
%\AltoViolaWinterThree
%}

