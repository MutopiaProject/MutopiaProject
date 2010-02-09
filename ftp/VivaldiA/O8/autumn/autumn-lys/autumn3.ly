#(ly:set-option 'old-relative)
\version "2.12.3"
ViolinoPrincipaleAutumnThree =  {
\clef violin
\key f \major
\time 3/8

\relative f' {
\mark "E"
f16._"Allegro"^"La Caccia" c'32 f,8 f |
f16. c'32 f,8 f |
f16. c'32 bes8 a |
g g g |
% 5
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. c'32 bes8 a |
g4 r8 |
f16. f'32 f,8 f |
% 10
f16. ees'32 f,8 f |
f16. d'32 f,8 f |
f16. c'32 f,8 f |
f4 r8 |
a'8 a16 a a bes |
% 15
c8 a a |
a a16 a a bes |
c8 a a |
a,8 a16 a a bes |
c8 a a  |
% 20
a8 a16 a a bes |
c8 a a |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 bes8 g |
% 25
a4 r8 |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 bes8 g |
f4 r8 |
}
% 30
<< \context Voice = SoloUp { \stemUp \relative f'' {
f8_"Solo" f16 f f f |
f8 c c |
f8 f16 f f f |
f8 c c |
a'8 a16 a a a |
% 35
a8 f f |
a8 a16 a a a |
a8 f f |
a8. bes16 a bes |
a8. bes16 a bes |
% 40
a bes a bes a bes |
a4.  |
}} \context Voice = SoloDown { \stemDown \relative c'' {
c8 c16 c c c |
c8 a a |
c8 c16 c c c |
c8 a a |
f'8 f16 f f f |
% 35
f8 c c |
f8 f16 f f f |
f8 c c |
f8. g16 f g |
f8. g16 f g |
% 40
f g f g f g |
f4.
}} >>
\relative f' {
f16._"Tutti" c'32 f,8 f |
f16. c'32 f,8 f |
f16. c'32 bes8 a |
% 45
g g g |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 bes8 g |
}
% 49
<< \context Voice = SoloUp { \stemUp \relative f'' {
f8_"Solo" c16 c a f |
f f f f f f |
f'8 c16 c a f |
f f f f f f |
f'8 f16 f a, a |
f' f f f bes, bes |
% 55
g'8 g16 g b,! b |
g' g g g c, c |
a'8 a16 a cis, cis 
a' a a a d, d 
}} \context Voice = SoloDown { \stemDown \relative c'' {
c8 a16 a f c |
a c a c a c |
c'8 a16 a f c |
a c a c a c |
c'8 a16 a f f |
d' d bes bes f f |
% 55
d'8 b16 b g g |
e' e c c g g |
e'8 cis16 cis a a |
f' f d d d, d |
}} >>
\set tupletSpannerDuration = #(ly:make-moment 1 8)
\relative f'' {
\times 4/6 {
b!32[( f g, g, g' f')]	b!32[( f g, g, g' f')]	b!32[( f g, g, g' f')] |
}
}
% 60
<< \context Voice = SoloUp { \stemUp
<f'' d'''>4.:32
<e'' d'''>:
<e'' c'''>:
<d'' b''>:
<e'' c'''>:
% 65
<d'' b''>:
<e'' c'''>:
<d'' c'''>:
<d'' b''>:
<g' e'' c'''> |
} \context Voice = SoloDown { \stemDown
<g g'>4.:32 ~
<g g'>: ~
<g g'>: ~
<g g'>: ~
<g g'>: ~
% 65
<g g'>: ~
<g g'>: ~
<g g'>: ~
<g g'>:
% I cannot get this stem to go down!!!
%%%\override Stem   #'direction = #-1 
g16. g''32_"Tutti" c''8 c'' |
} >>
% 70
\relative f'' {
c16. g'32 c,8 c |
c16. g'32 f8 e |
d d d |
c16. g'32 c,8 c |
c16. g'32 c,8 c |
% 75
c16. e32 f8 d |
}
\mark "F"
\relative c' {
\times 2/3 {
c16_"Solo"^"La Tiera che fugge" [( g  c])	e[( c  e]) 	g[( e  g]) |
e[( c  e)] 	c[( g  c)] 	e[( c  e)] |
g[( e  g)]	c[( a  c)]	e[( c  e)] |	% 'a' could be a typo; g would fit better
c[( g  c)]	g[( e  g)]	c[( g  c)] |
% 80
e[( c  e)] 	c[( g  c)]	g[( e  g)] |
c[( g  c)]	e[( c  e)]	g[( e  g)] |
}
\mark "G"
c8 r r |
R4.*3  |
% 86
\times 2/3 {
c16[ b32( a g f] 	e16[ d c]) 	e[( g b]) |
a[ f c]  	a[ f c] } 	f16 r |
\times 2/3 {
d''16[ c32( bes a g]	fis16[ e d]) 	fis![( a c]) |
b[ g d] 	b[ g d] } 	g16 r |
% 90
\times 2/3 {
e''16[ d32( c b a]	gis16[ fis e]) 	gis![( b! d]) |
c[ a e] 	c[ a e] } 	a16 r |
\times 2/3 {
d'16[ f d] 	b[ d b] 	g[ b! g] |
d[ g d] 	b[ d b] 	g[ b! g] |
d[ b d]		g[ d g] } 	b!16 r |
% 95
\times 2/3 { g16[ d g]	b[ g b] } 	d16 r |
\times 2/3 { b16[ g b] 	d[ b! d] }	g16 r |
c,16._"Tutti" g'32 c,8 c |
c16. g'32 c,8 c |
c16. g'32 f8 e |
% 100
d d d |
c16. g'32 c,8 c |
c16. g'32 c,8 c |
c16. e32 f8 d |
\times 2/3 {
c16[_"Solo" g c]	g[ e g] 	c[ g c] |
% 105
e[ c e]	g[ e g]	bes[ g bes] |
a[ f a]	f[ c f]	c[ a c] |
a[ f a]	c[ a c]	ees[ c ees] |
d[ bes d]	f[ d f]	bes[ f bes] |
cis,[ g cis]	e[ cis! e]	g[ e g] |
% 110
f[ d f]	a[ f a] 	f[ d f] |
gis,[ e gis]	b[ gis! b]	d[ b! d] |
c[ a c] 	ees[ c ees]	c[ a c] |
bes[ g bes] 	d[ bes d]	bes[ g bes] |
a[ f a]	c[ a c]	f[ c f] |
% 115
a[ f a]	f[ c f] 	c[ a c] |
}
f,16._"Tutti" c'32 f,8 f |
f16. c'32 f,8 f |
f16. c'32 bes8 a |
g g g |
% 120
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. c'32 bes8 a |
<< \context Voice = SoloDown { \stemDown
% beam in 4s
c,8_"Solo" } { g'16[ d32 ( e]) } >>
		f32[( g) a( bes])	c[( bes) a( g]) |
a[( f) g( a]) 	bes[( c) d( ees])	f[( ees) d( c]) |
% 125
d[( bes) c( d])	ees[( f) g( a]) 	bes[( a) g( f]) |
e[( c) d( e]) 	f[( g) a( bes]) 	c[( bes) a( g]) |
a4 r8 |
R4. |
\mark "H"
r32 f[(^"La Tiera fuggendo Muore" a g] f[ e d c] bes[ a g f]) |
% 130
c4. ~ |
c32[ g''( bes a] g[ f e d] c[ bes a g]) |
f4. ~ |
f32[ a'( c bes] a[ g f e] d[ c bes a]) |
g4. ~ |
% 135
g32[ bes'( d c] bes[ a g f] e[ d c bes]) |
aes4. |
c,8( e!  f) |
ges( a!  bes) |
c( des  e!) |
% 140
f8[] ~ f32[ a f c]	a[ c a f] |
c16 f g4\trill |
f8 a'16_"Tutti" a a bes |
c8 a a |
a, a16 a a bes |
% 145
c8 a a |
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. c'32 bes8 a |
g g g |
% 150
f16. c'32 f,8 f |
f16. c'32 f,8 f |
f16. a32 bes8 g |
f4. |
f16. c'32 f,8 f |
% 155
f16. c'32 f,8 f |
f16. a32 bes8 g |
f4.^\fermata |
}
\bar "||"
}


%\score {
%\ViolinoPrincipaleAutumnThree
%}
