\version "2.12.3"
ViolinoPrimoWinterOne =  {
\clef violin
\key f \minor
\time 4/4

\mark "A"
\relative f'' {
<<
R1*3
{ s1_"Allegro non molto" s  s }
>>
bes8-. \(  bes\)-. bes-. \(  bes\)-.	bes8-. \(  bes\)-. bes-. \(  bes\)-. |
% 5
bes8-. \(  bes\)-. bes-. \(  bes\)-.	bes8-. \(  bes\)-. bes-. \(  bes\)-. |
aes8-. \(  aes\)-. aes-. \(  aes\)-.	aes8-. \(  aes\)-. aes-. \(  aes\)-. |
des,8-. \(  des\)-. des-. \(  des\)-.	des8-. \(  des\)-. des-. \(  des\)-. |
ees8-. \(  ees\)-. ees-. \(  ees\)-.	ees8-. \(  ees\)-. ees-. \(  ees\)-. |
d8-. \(  d\)-. d-. \(  d\)-.	d8-. \(  d\)-. d-. \(  d\)-. |
% 10
ees8-. \(  ees\)-. ees-. \(  ees\)-.	ees8-. \(  ees\)-. ees-. \(  ees\)-. |
d8-. \(  d\)-. d-. \(  d\)-.	d8-. \(  d\)-. d-. \(  d\)-. |
\mark "B"
c4 r4 r2 |
r2	g8-. \(  g\)-. g-. \(  g\)-. |
g8-. \(  g\)-. g-. \(  g\)-.	g4 r4 |
% 15
r1 |
g8-. \(  g\)-. g-. \(  g\)-.	g8-. \(  g\)-. g-. \(  g\)-. |
g4 r4 r2 |
r1 |
des'!8-. \(  des\)-. des-. \(  des\)-.	e!8-. \(  e\)-. e-. \(  e\)-. |
% 20
\newSpacingSection
\override Voice.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8)
f16 \( f,-. f-.  f\)-.	f-. \( f-. f-.  f\)-. 
f-. \( f-. f-.  f\)-.	f-. \( f-. f-.  f\)-. |
f-. \( f-. f-.  f\)-.	f-. \( f-. f-.  f\)-. 
f-. \( f-. f-.  f\)-.	f-. \( f-. f-.  f\)-. |
f-. \( f-. f-.  f\)-.	f-. \( f-. f-.  f\)-. 
\mark "C"
 e16[ g'32^"Correre e batter li piedi ogni momento" g g g g g ]	g16 g g g |
aes c, aes' c,	aes' c, aes' c,
 des16[ des32 des des des des des ]	des16 des des des |
g des g des	g des g des
 c16[ c32 c c c c c ]	c16 c c c |
% 25
f c f c 	f c f c
 bes16[ bes32 bes bes bes bes bes ]	bes16 bes bes bes |
e! bes e bes	e! bes e bes	f'4 r |
R1*6 |
r2	e,32 e e e	e e e e 	e e e e 	e e e e |
f4 r	a'32 a a a 	a a a a 	a a a a 	a a a a |
bes4 r	b32 b b b	b b b b 	b b b b 	b b b b |
% 35
c4 r	d,32 d d d	d d d d 	d d d d 	d d d d |
ees4 r	ees32 ees ees ees	ees ees ees ees 	ees ees ees ees 	ees ees ees ees |
d d d d 	d d d d 	d d d d 	d d d d 	ees4 r |
r1 |
bes8-. \(  bes\)-. bes-. \(  bes\)-.	bes8-. \(  bes\)-. bes-. \(  bes\)-. |
% 40
bes-. \(  bes\)-. bes-. \(  bes\)-.	des!16-. \( des-. des-.  des\)-.	des-. \( des-. des-.  des\)-. |
c8-. \(  c\)-. c-. \(  c\)-.	ees16-. \( ees-. ees-.  ees\)-. 	ees-. \( ees-. ees-.  ees\)-. |
d!8-. \(  d\)-. d-. \(  d\)-.	aes'16-. \( aes-. aes-.  aes\)-.	aes-. \( aes-. aes-.  aes\)-. |
g4 r4 r2 |
% 45 
R1*2 |
\mark "D"
c16_"Piano"^\markup{\translate #'(1 . 0) "Batter li denti"} c c c	c c c c 	c c c c 	c c c c |
bes bes bes bes 	bes bes bes bes 	bes bes bes bes 	bes bes bes bes |
aes aes aes aes 	aes aes aes aes 	aes aes aes aes 	aes aes aes aes |
% 50
g g g g 	g g g g 	c c c c 	c c c c |
c c c c 	bes bes bes bes 	bes bes bes bes 	aes aes aes aes |
aes aes aes aes 	g g g g 	g g g g 	f f f f |
f f f f 	ees ees ees ees 	ees ees ees ees 	des! des des des |
e! e e e 	f f f f 	g g g g 	aes aes aes aes |
% 55
bes bes bes bes 	aes aes aes aes 	g g g g 	f f f f |
%% about this point, even the common-shortest-duration tweak doesn't help keep the score tight
e!16[_"Forte" g32 g g g g g ]	g16 g g g	aes c, aes' c,	aes' c, aes' c, |
des16[ des32 des des des des des ]	des16 des des des	g des g des	g des g des |
\noBreak
c16[ c32 c c c c c ]	c16 c c c	f c f c 	f c f c |
bes16[ bes32 bes bes bes bes bes ] 	bes16 bes bes bes	e!32 g bes g	e! g bes g	e! g bes g	e! g bes g |
\noBreak
% 60
aes16[ aes32 aes aes aes aes aes ]	aes16 aes aes aes
	 g16[ g32 g g g g g ]	g16 g g g |
g16[ g32 g g g g g ]	g16 g g g 
	 f16[ aes,32 aes aes aes aes aes ] 	aes16 aes aes aes |
\noBreak
g16[ g32 g g g g g ]	g16 g g g 
	 g16[ g32 g g g g g ]	g16 g g g |
\noBreak
f1^\fermata |
\bar "||"
}

}



