\version "1.7.13"
\include "figured-accidentals.ly"

VioloncelloSummerOne = \notes {
\clef bass
\key g \minor
\time 3/8

\mark "A"
\relative g {
r8_" "_"Allegro non molto - Pianissimo"^"Languideza per il caldo" g d |
r g, d |
r d' d, |
r d' d, |
g4 r8 |	% 5
d'4 r8 |
d4 r8 |
g,4 r8 |
g4 r8 |
c4.^#'(lines "6") |	% 10
d4.^#`(lines "7" (columns ,figsharp))^\fermata |
R4.*2 |
d'8^#'(lines "7") ( c bes | 
a16 g fis8 ) ees! |	% 15
d4. ~ |	
d4. |
g8 ( fis ees! | % not explicitly flat here (key sig), but marking it ! for consistency with everywhere else
d16 c bes8 ) a |
g4 r8 |		% 20
r8 g' g, |
r c'^#`(columns "6" ,figflat) c, |
r g' g, |
r d'^#`(columns ,figsharp) d, |
r8 g4 |		% originally written g4 r8	 % 25
r8 g' g, |
r c^#`(columns "6" ,figflat) c, |
r g'' g, |
r d'^#`(columns ,figsharp) d, |
r g4 |		% 30
\bar "||"
\time 4/4
\mark "B"
g8._"Allegro" g'16 g,4	r8 r16 g' g,4 |
g8. g'16 g,4	r8 r16 g' g,4 |
r8 r16 g' g,4 	g'8 fis g g, |
d'8.^#`(columns ,figsharp) d'16 fis,4^#'(lines "6")	r8 r16 d' fis,!4^#'(lines "6") |
r8 r16 d' fis,4^#'(lines "6")	fis8 g a d, |	% 35
g,8. g'16 g,4	r8 r16 g' g,4 |
g'8 a bes^#'(lines "6") g 	a,8. a'16 a,4 |
r8 r16 a' a,4	a'8 bes c a |
bes8. d16 fis,4^#'(lines "6")	r8 r16 d' fis,!4^#'(lines "6") |
r8 r16 g g,4 	r8 r16 g' g,4 |	% 40
r8 r16 ees'' g,4^#'(lines "6") 	r8 r16 ees' g,4^#'(lines "6") |
r8 r16 c e,4^#'(lines "6") 	r8 r16 c' e,!4^#'(lines "6") |
r8 r16 c' f,4 	r8 r16 c' f,4 |
r8 r16 d'^#`(columns ,fignatural) fis,4^#'(lines "6")	r8 r16 d'^#`(columns ,figsharp) fis,!4^#'(lines "6") |
r8 r16 g bes,4^#'(lines "6") 	r8 r16 g' bes,4^#'(lines "6") |	% 45
r8 r16 f'' a,4^#'(lines "6") 	r8 r16 f' a,4^#'(lines "6") |
r8 r16 ees' g,4^#'(lines "6") 	r8 r16 ees' g,4^#'(lines "6") |
r8 r16 d' f,4^#'(lines "6")	r8 r16 d'^#`(columns ,figsharp) fis,!4^#'(lines "6") |
g,16 g' g g g g g, g' 	g, g' g g g g g, g' |
d,16^#'(lines "5" "4") d' d d d d d, d' 	d, d' d d d d d, d' |	% 50
d,16^#`(columns "3" ,figsharp) d' d d d d d, d' 	d, d' d d d d d, d' |
\bar "||"
\time 3/8
g,8_"Pianissimo" g' d |
r g, d |
r g' g, |
r c'^#`(columns "6" ,figflat) c, |	% 55
r g' g, |
r d' d, |	% originally written d' d, r
r g4 |
\mark "C" 
g4._"Tasto Solo" ~ |
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
a'^#'(lines "6" "4") a' a, a a^#`(columns "3" ,figsharp) a |
d d' d, d, d d |
d' d' d, d, d d |
d' d' d, d, d d |
d'^#'(lines "7" "5") d' d, d, d d |  % 95
d'^#'(lines "6" "4") d' d, d, d d |
d'^#'(lines "5" "3") d' d, d, d d |
d'^#'(lines "8" "6") d' d, d, d d |
d'^#'(lines "7" "5") d' d, d, d d |
d'^#'(lines "6" "4") d' d, d, d d |  % 100
d'^#'(lines "5" "3") d' d, d, d d |
a'^#`(lines "7" (columns ,figsharp)) a' cis, a a a |
a^#'(lines "6" "4") a' d, a a a |
a^#`(lines "7" (columns "5" ,fignatural)) a' e a, a a |
a^#'(lines "6" "4") a' d, a a a |  % 105
a^#`(lines "7" (columns "5" ,fignatural)) a' cis, a a a |
a^#'(lines "6" "4") a' d, a a a |
a^#`(lines (columns "5" ,fignatural) "4") a' d, a a a |
a^#`(columns "3" ,figsharp) a' cis, a a a |
d,8_"Pianissimo" d' a |  % 110
r a^#'(lines "7") d |
r g g, |
r g'^#`(columns "6" ,figflat) g, |
r d'' d, |
r a'^#`(columns ,figsharp) a, |  % 115
\mark "E"
d4.^"Il Pianto del Villanello" |
gis4. |
< g!4. { s8^" "^#`(lines (columns "6" ,fignatural) (columns "4" ,figsharp)) s^" "^#'(lines "5") s^" "^#`(columns "6" ,figflat) } > |
fis4.^#`(lines (columns ,figflat "7") "5") |
< f!4. { s8^#`(lines "6" (columns "4" ,fignatural)) s^#'(lines "5") s^#`(columns "6" ,figflat) } > |  % 120 
e!4.^#`(lines (columns ,figflat "7") "5") |
< ees!4. { s8^#'(lines "6" "4") s^#'(lines "5") s^#'(lines "6") } > |
dis4.^#'(lines "7" "5") |
e |
ais,^#`(lines "7" (columns "5" ,fignatural)) |  % 125
a!^#`(lines (columns "6" ,figsharp) (columns "4" ,figsharp)) |
gis^#`(columns ,figflat "7") |
g!^#`(lines "6" (columns "4" ,figsharp)) |
fis^#`(columns ,figflat "7") |
f!^#`(lines "6" (columns "4" ,fignatural)) |  % 130 
e!^#'(lines "6" "5") |
ees!^#'(lines "6" "4") |
d |
b''!^#`(lines (columns ,figflat "7") "5") |
bes!^#`(lines "6" (columns "4" ,fignatural)) |  % 135
aes^#'(lines "6") ~ |
aes^#'(lines "6" "4") |
g^#'(lines "6") |
f^#`(columns "6" ,figflat) |
ees^#'(lines "6") ~ |  % 140
ees^#`(lines "6" "4" (columns "2" ,figsharp)) |
d4^#`(columns ,figsharp) c8^#`(lines "6" (columns "4" ,figsharp)) |
bes a g |
c4._"Tasto Solo" ~ |
c4. ~ |  % 145
c4. ~ |
c4. ~ |
c4. ~ |
c4. ~ |
c4. |  % 150
g'4. ~ |
g4.^#`(lines (columns "4" ,figsharp) "2") |
fis8^#'(lines "6") d g |
ees16 c d8 d, |
g16_"Forte" g' g, g g g' |  % 155
d^#'(lines "7" "5") d' d, d, d d |
d'^#'(lines "6" "4") d' d, d, d d |
d'^#`(lines "5" (columns ,figsharp)) d' d, d, d d |
d'^#'(lines "6" "4") d' d, d, d d |
d'^#'(lines "7" "5") d' d, d, d d |  % 160
d'^#'(lines "6" "4") d' d, d, d d |
d'^#`(lines "5" (columns ,figsharp)) d' d, d, d d |
g16 g' g, g g g |
c c' c, c, c c |
d'^#`(columns ,figsharp) d' d, d, d d |  % 165
g g' g, g g g |
c c' c, c c c |
cis^#'(lines "7") cis'? cis, cis cis cis |	% top c not marked sharp
d^#`(columns ,figsharp) d' d, d d d |
\property Voice.autoBeamSettings \override #'(end 1 32 * *) = #(ly:make-moment 1 8)
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
 	


