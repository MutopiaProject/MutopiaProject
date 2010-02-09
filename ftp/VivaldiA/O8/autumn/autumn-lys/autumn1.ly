#(ly:set-option 'old-relative)
\version "2.12.3"
ViolinoPrincipaleAutumnOne =  {
\clef violin
\key f \major
\time 4/4

\relative f'' {
\mark "A"
a8_"Allegro"^"Ballo e Canto dè Villanelli" a a bes	a4 a8 bes |
a a a a 	bes4 a8 bes |
a g16 a bes8 a	g4 r |
a,8_"Piano" a a bes 	a4 a8 bes |
% 5
a a a bes	a4 a8 bes |
% vivaldi repeated the second half of the previous measure on the next line
a8 g16 a bes8 a	g4 r |
a'8_"Forte" a a c	d,4 d8 d |
g g g bes	c,4 c8 f |
a a a bes	a a a bes |
% 10
a a a bes 	a g16 a bes8 g |
a4 r	a,8_"Piano" a a bes |
a a a bes 	a a a bes |
a g16 a bes8 g	f4 r |
% 14
<< \context Voice = "soloup" { \stemUp
a'8_"Solo" a a bes	a4 a8 bes |
a a a bes 	a4 a8 bes |
a g16 a bes8 a	g4 r |
a8_"Piano" a a bes	a4 a8 bes |
a a a bes	a4 a8 bes |
a g16 a bes8 a 	g4 r |
} \context Voice = "solodown" { \stemDown
f8 f f g 	f4 f8 g |
f f f g 	f4 f8 g |
f e16 f g8 f 	e4 s |
f8 f f g 	f4 f8 g |
f f f g 	f4 f8 g |
f e16 f g8 f 	e4 s |
}>>
% 20
<< \context Voice = "soloup" { \stemUp
f'8_"Forte" c c c	d4 c8 c |
f c c c 	d4 c8 c |
d4 c8 c 		s2 |
a4 g f r |
} \context Voice = "solodown" { \stemDown
a8 a a a 	bes4 a8 a |
a a a a 	bes4 a8 a |
bes4 a8 a 	f' e16 d c8 bes |
c,4 bes a s |
}>>
% 24
<< \context Voice = "soloup" { \stemUp
f8_ \markup{"Piano"} c c c	d4 c8 c |
f c c c 	d4 c8 c |
d4 c8 c 		s2 |
c4 bes a4 s |
} \context Voice = "solodown" { \stemDown
a8 a a a 	bes4 a8 a |
a a a a 	bes4 a8 a |
bes4 a8 a 	f' e16 d c8 bes |
a4 g f8_"Tutti"	a' a bes |
}>>
a'8 a a bes 	a a a bes |
a g16 a bes8 g	a4 r |
% 30
a,8_"Piano" a a bes	a a a bes |
a a a bes 	a g16 a bes8 g |
\mark "B"
a4^"E Vbriaco" r	f''16_"Solo" c a f  f' c a f |
f' c a f  f' c a f	a f f c c a a f |
f c c a a c c f 	f a a c c f f a |
% 35
a f f c c a a f 	f c c a c8 r |
 f''16[ e32 ( d c bes a  g) ] f8 f, 	 e''16[ d32 ( c bes a g  f) ] e8 e, |
 d''16[ c32 ( bes a g f  e) ] d8 d, 	 c''16[ bes32 ( a g f e  d) ] c8 c, |
 bes''16[ a32 ( g f e d  c) ] bes8 bes,	 a''16[ g32 ( f e d c  bes) ] a8 a, |
r2 
%%%#(XXXOLD_override_auto_beam_setting '(begin 1 24 * *)  1 8)
%%%#(XXXOLD_override_auto_beam_setting '(end 1 24 * *)  1 8)
\set tupletSpannerDuration = #(ly:make-moment 1 8)
\times 2/3 { 
c'16[ d c]  f[ g f]  g[ a g]  a[ bes a] |
% 40
bes[ c bes]  c[ d c]  d[ e d]  e[ f e] }	f4 r |
 a,8[ g32 ( f e d ]	 c[ bes a g f e d  c) ]	b4 r |
 g''8[ f32 ( e d c ]  b[ a g f e d c  b) ] 	a4 r |
 f''8[ e32 ( d c b ]  a[ g f e d c b  a) ]	gis4 r |
r8 gis'' ( a  b)	f2 ~ |
% 45
f2	\times 2/3 { d16[ f d]  b[ d b]  gis[ b! gis]  e[ gis! e] } |
cis4 r	r8 cis'' ( d  e) |
g,1 |
\times 2/3 { g16[ bes g]  e[ g e]  cis[ e cis]  g[ cis! g] }	fis4 r |
\times 2/3 { c''16[ ees d] c[ d ees]  a,[ c bes] a[ bes c]	fis,[ a g] fis![ g a]  c,[ ees d] c[ d ees!] |
% 50
a,[ c bes] a[ bes c]  fis,[ a g] fis![ g a] }	bes4\trill c\trill |
d\trill ( e\trill fis\trill  g)\trill |
a\trill (  bes)\trill	c2 ~ |
c32 bes ( a g  fis e d c  bes a g f  e d c bes64  a64)	g8 g'' r fis! |
r a r g 	r c r bes |
% 55
r aes r g 	r ees r d |
r cis r d 	r aes r fis |
g_"Tutti" d' d ees 	d4 d8 ees |
d d d ees 	c c c d |
bes a16 bes c8 bes 	a4 r8 fis' |
% 60
g g g f 	ees ees ees ees |
f f f ees	d d d d |
ees ees ees d 	cis cis cis ees |
f f f g 	f f f g |
f f f g 	f e16 f g8 e |
% 65
f4 r	f,8_"Piano" f f g |
f f f g 	f f f g |
f e16 f g8 e 	f16_"Solo"^"Vbriaco" d d a a d d a' |
a d d f f a a f, 	f d d a a d d d' |
d f f a a d d f,, 	f d d a a d d d' |
% 70
d4 ~  d32[ cis ( b a b! cis! d64 e f  g) ] 	a4 ~ a8. cis,16 | 
% I wonder if that last cis should be c?  it has no accidental in the score
c4 ~  c32[ bes ( a g a bes c64 d e  f) ]	g4 ~ g8. bes,16 |
bes4 ~  bes32[ a ( g f g a bes64 c d  e) ]	f2 |
e16 c c, bes''  a f c, a''	g e c, bes''  a f c, a'' |
g4 r32  c,[ ( d e f g a  b) ]	c8 b!4 a8 ~ |
% 75
a g4 f8 	e16 c c,8  r16 c'' b a |
g,,16 b'' a g  g,, a''g f 	g,, g'' f e  g,, f'' e d |
g,, e''d c  g, d'' c b 	c8_"Tutti" g' g a |
g4 g8 a 	g g g a |
g4 g8 a 	g a16 g f8 e |
% 80
d4 r8 e16 f 	g8 g4 e16 f |
g8 g4 f16 e 	a8 g4 f16 e |
a8 g4 a,16 bes	c8 c4 a16 bes |
c8 c4 bes16 a	d8 c4 bes16 a |
d8 c4 c16 d 	ees8 ees4 d16 c |
% 85
d8 d4 d16 e 	f8 f4 e16 d |
e8 e4 g16 a 	bes8 bes4 a16 g |
a4 r32  f[ ( g a bes c d  e) ]	f16 c a c f c a f |
f,4 r32  f'[ ( g a bes c d  e) ]	f16 c a c f c a f |
\mark "C"
f,4 r c'2_"Piano e Larghetto"^"L'Vbriaco che dorme" ~ |
% 90
c4 aes' bes,2 ~ |
bes4 g' aes,2 ~ |
aes4 f' g,2 |
f1 |
c'2_"Più Piano" ~ c4 aes' |
% 95
bes,2 ~ bes4 g' |
aes,2 ~ aes4 f' |
e1_"Pianissimo" |
ees |
d |
% 100
des |
c ~ |
c ~ |
c ~ |
c ~ |
% 105
c^\fermata |
a'8_"Allegro Assai" a a bes	a4 a8 bes |
a a a bes 	a4 a8 bes |
a g16 a bes8 a 	g4 r |
a8 a a c 	d,4 d8 d |
% 110
g g g bes 	c,4 c8 f |
a a a bes	a a a bes |
a a a bes	a g16 a bes8 g |
a4 r	a,8 a a bes |
a a a bes	a a a bes |
% 115
a g16 a bes8 g 	f2^\fermata |
}
}

%\score {
%\ViolinoPrincipaleAutumnOne
%}
