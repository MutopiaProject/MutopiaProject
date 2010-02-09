\version "2.12.3"
ViolinoPrincipaleWinterThree =  {

\clef violin
\key f \minor
\time 3/8
\mark "F"
\relative f'' {
c16_"Allegro - Solo" ( aes' g f e!  f) |
c ( aes' g f e!  f) |
c ( aes' g f e!  f) |
c ( aes' g f e!  f) |
% 5
c ( des c bes c  des) |
f, ( des' c bes c  des) |
f, ( des' c bes c  des) |
f, ( des' c bes c  des) |
f, ( g aes g aes  f) |
% 10
c' ( des ees des ees  c) |
f ( g aes g aes  f) |
aes ( c bes aes bes  c) |
f, ( c' bes aes bes  c) |
f, ( des' c bes c  des) |
% 15
f, ( des' c bes c  des) |
f, ( c' bes aes bes  c) |
f, ( c' bes aes bes  c) |
f, ( des' c bes c  des) |
f, ( des' c bes c  des) |
% 20
c8 f, r |
bes16 ( aes g f e  d) |
c ( d e f g  aes) |
bes ( aes g f e  d) |
c ( d e f g  aes) |
% 25
\mark "G"
bes8_"Tutti"^\markup{\translate #'(1 . 0) "Caminar piano, e con tinore"} ( aes  g) |
aes ( g  f) |
bes8 ( aes  g) |
aes ( g  f) |
bes8 ( aes  g) |
% 30
aes-| ( aes-|  aes)-| |
a!-| ( a-|  a)-| |
bes-| ( bes-|  bes)-| |
b!-| ( b-|  b)-| |
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
g'32_"Solo" ( f e  d) c8 r |
g'32 ( f e  d) c8 r |
c'32 ( bes aes  g) f8 r |
% 45
c'32 ( bes aes  g) f8 r |
bes32 ( aes g  f) e8 r |
bes'32 ( aes g  f) e8 r |
f16_"Tutti"^"Cader à terra" ees des c bes aes |
g f e d c bes |
% 50
aes8 bes c |
\mark "I"
f16-._"Solo"^"Correr forte" g-. aes-. g-. aes-. f-. |
c'-. des-. ees-. des-. ees-. c-. |
f-. g-. aes-. g-. aes-. f-. |
g-. aes-. bes-. aes-. bes-. g-. |
% 55
e-. f-. g-. f-. g-. e!-. |
f-. g-. aes-. g-. aes-. f-. |
g-. aes-. bes-. aes-. bes-. g-. |
aes-. bes-. c-. bes-. c-. aes-. |
g-. aes-. bes-. aes-. bes-. g-. |
% 60
f-. g-. aes-. g-. aes-. f-. |
c4 r8 |
f'16 ees des c bes aes |
g f g aes bes g |
ees' des c bes aes g |
% 65
f e f g aes f |
des' c bes aes g f |
ees d ees f g ees |
c' bes aes g f ees |
d c d ees f d! |
% 70
bes' aes g f ees d |
c b c d ees c |
aes' g f ees d c |
b des32 (  c) b16 des, g, b'! |
c ees32 (  des) c16 des, g, c' |
% 75
des f32 (  ees) des16 des, g, des'' |
ees g32 (  f) ees16 des, g, ees'' |
des f32 (  ees) des16 des, g, des'' |
b' des32 (  c) b16 f g,, f'' |
b des32 (  c) b16 f g,, b''! |
% 80
\set tupletSpannerDuration = #(ly:make-moment 1 8)
\times 2/3 {
 c[ ( b  c) ]  b[ ( aes  b) ]  aes[ ( g  aes) ] |
 g[ ( f  g) ]  f[ ( ees  f) ]  ees[ ( des  ees) ] |
 des[ ( c  des) ]  c[ ( b  c) ]  b![ ( a  b) ] |
 aes![ ( g  aes) ]  g[ ( f  g) ]  f[ ( ees  f) ] |
 ees[ ( d  ees) ]  d![ ( c  d) ]  c[ ( b  c) ] | 
}
% 85
<< \context Voice = VB { \voiceTwo 
< g des' b'? >8_"Tutti" s4  % vivaldi ommitted nat on b; viola has b nat
  }
  \context Voice = VA { \voiceOne
f''16 ( ees d c b!  a) 
  }
>>
g16 ( a b? c d  ees) | % vivaldi forgot to mark the b natural in this measure
f ( ees d c b  a) |
g ( a b c d  ees) |
\mark "L"
f8 r8 r32 b, c d |
% 90
f,8 r8 r32 d ees f |
g,8 r8 r32 b c d |
ees8 f g |
 c32[_"Solo" g ees c ] g8 r8 |
 d''32[ b g d ] g,8 r8 |
% 95
 ees''32[ c g ees ] g,8 r8 |
 f''32[ d b g ] g,8 r8 |
 g''32[ ees c g ] g,8 r8 |
c''16 bes aes g f ees |
d c b aes g f |
% 100
g,8 r r |
\mark "M"
% "the wind Sirocco"
\newSpacingSection
g''8(_"Lento Tutti"^\markup{\translate #'(1 . 0) "Il Vento Sirocco"} f  ees) |
d ( ees  f) |
g ( f  ees) |
d ( ees  f) |
% 105
g ( aes  bes) |
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
% "the wind Borea and all the winds"
ees32_"Solo"^\markup{\translate #'(1 . 0) "Il Vento Borea e tutti li Venti"} bes c d?	ees f g aes	bes aes g f |  % vivaldi had des; changed to d based on key (bes harmonic minor and) d in following measures
ees d c bes	c bes aes g	aes g f ees |
d bes c d	ees f g aes	bes aes g f |
g ees f g	aes bes c d	ees f g aes |
f f f f 	f f f f 	f f f f |
% 125
e f g f 	e! f e d	c d! c b |
c b c d 	e d e f 	g aes b? g | % vivaldi was missing nat on upper b
aes aes aes aes	aes aes aes aes	aes aes aes aes |
aes bes c bes	aes bes aes g	f g f ees |
des des des des	des des des des	des des des des |
% 130
bes' c des c	bes c bes aes	g aes g f |
ees ees ees ees	ees ees ees ees	ees ees ees ees |
c' des ees des	c des c bes	aes bes aes g |
f f f f 	f f f f 	f f f f |
des' ees f ees	des ees des c	bes c bes aes |
% 135
g g g g 	g g g g 	g g g g |
e' f g f	e f g f 	e des c bes |
aes_"Tutti" aes aes aes	aes aes aes aes	aes aes aes aes |
aes bes aes g	f g f ees	des ees des c |
bes c bes aes	g aes g f	e f e d |
% 140
c c c c 	c c c c 	c c c c |
bes bes bes bes	bes bes bes bes	bes bes bes bes |
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
\bar "||"
}

} 

%\score {
%\ViolinoPrincipaleWinterThree
%}
