\version "2.12.3"

VioloncelloSummerOne =  {
\clef bass
\key g \minor
\time 3/8

\mark "A"
\relative g {
r8_"Allegro non molto - Pianissimo"^"Languideza per il caldo" g d |
r g, d |
r d' d, |
r d' d, |
g4 r8 |	% 5
d'4 r8 |
d4 r8 |
g,4 r8 |
g4 r8 |
c4. |	% 10
d4.^\fermata |
R4.*2 |
d'8 ( c bes | 
a16 g fis8  ees!) |	% 15
d4. ~ |	
d4. |
g8 ( fis ees! | % not explicitly flat here (key sig), but marking it ! for consistency with everywhere else
d16 c bes8  a) |
g4 r8 |		% 20
r8 g' g, |
r c' c, |
r g' g, |
r d' d, |
r8 g4 |		% originally written g4 r8	 % 25
r8 g' g, |
r c c, |
r g'' g, |
r d' d, |
r g4 |		% 30
\bar "||"
\time 4/4
\mark "B"
g8._"Allegro" g'16 g,4	r8 r16 g' g,4 |
g8. g'16 g,4	r8 r16 g' g,4 |
r8 r16 g' g,4 	g'8 fis g g, |
d'8. d'16 fis,4	r8 r16 d' fis,!4 |
r8 r16 d' fis,4	fis8 g a d, |	% 35
g,8. g'16 g,4	r8 r16 g' g,4 |
g'8 a bes g 	a,8. a'16 a,4 |
r8 r16 a' a,4	a'8 bes c a |
bes8. d16 fis,4	r8 r16 d' fis,!4 |
r8 r16 g g,4 	r8 r16 g' g,4 |	% 40
r8 r16 ees'' g,4 	r8 r16 ees' g,4 |
r8 r16 c e,4 	r8 r16 c' e,!4 |
r8 r16 c' f,4 	r8 r16 c' f,4 |
r8 r16 d' fis,4	r8 r16 d' fis,!4 |
r8 r16 g bes,4 	r8 r16 g' bes,4 |	% 45
r8 r16 f'' a,4 	r8 r16 f' a,4 |
r8 r16 ees' g,4 	r8 r16 ees' g,4 |
r8 r16 d' f,4	r8 r16 d' fis,!4 |
g,16 g' g g g g g, g' 	g, g' g g g g g, g' |
d,16 d' d d d d d, d' 	d, d' d d d d d, d' |	% 50
d,16 d' d d d d d, d' 	d, d' d d d d d, d' |
\bar "||"
\time 3/8
g,8_"Pianissimo" g' d |
r g, d |
r g' g, |
r c' c, |	% 55
r g' g, |
r d' d, |	% originally written d' d, r
r g4 |
\mark "C" 
g4. ~ |
g4. ~ |	% 60
g4. ~ |
g4. ~ |
g16. g'32 g,4 ~ |
g16. f'32 g,4 ~ |
g16. ees'32 g,4 ~ |	% 65
g16. d'32 g,4 ~ |
g4. ~ |
g4. ~ |
g4. ~ |
g4. |	% 70
R4.*7 |
\mark "D" 
R4.*12 |
d'16_"Forte"^"Venti diuersi" d' d, d, d d |	% 90
a' a' a, a a a |
d d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |  % 95
d' d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |  % 100
d' d' d, d, d d |
a' a' cis, a a a |
a a' d, a a a |
a a' e a, a a |
a a' d, a a a |  % 105
a a' cis, a a a |
a a' d, a a a |
a a' d, a a a |
a a' cis, a a a |
d,8_"Pianissimo" d' a |  % 110
r a d |
r g g, |
r g' g, |
r d'' d, |
r a' a, |  % 115
\mark "E"
d4.^"Il Pianto del Villanello" |
gis4. |
g!4. |
fis4. |
f!4. |  % 120 
e!4. |
ees!4. |
dis4. |
e |
ais, |  % 125
a! |
gis |
g! |
fis |
f! |  % 130 
e! |
ees! |
d |
b''! |
bes! |  % 135
aes ~ |
aes |
g |
f |
ees ~ |  % 140
ees |
d4 c8 |
bes a g |
c4. ~ |
c4. ~ |  % 145
c4. ~ |
c4. ~ |
c4. ~ |
c4. ~ |
c4. |  % 150
g'4. ~ |
g4. |
fis8 d g |
ees16 c d8 d, |
g16_"Forte" g' g, g g g' |  % 155
d d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |  % 160
d' d' d, d, d d |
d' d' d, d, d d |
g16 g' g, g g g |
\stemUp c c' c, c, c c \stemNeutral |
d' d' d, d, d d |  % 165
g g' g, g g g |
c c' c, c c c |
cis cis'? cis, cis cis cis |	% top c not marked sharp
\stemUp d d' d, d d d \stemNeutral |
#(override-auto-beam-setting '(end 1 32 3 8) 1 8)
#(override-auto-beam-setting '(end 1 32 3 8) 2 8)
g,32 g' f ees	d ees d c 	bes c bes a |  % 170
g g' f ees	d ees d c 	bes c bes a |
g g' f ees	d ees d c 	bes c bes a |
g g' f ees	d ees d c 	bes c bes a 
\cadenzaOn g2.^\fermata \cadenzaOff
}
\bar "||"
}


%\score {
%\VioloncelloSummerOne
%}
 	


