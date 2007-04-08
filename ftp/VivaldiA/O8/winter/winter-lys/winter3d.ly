\version "1.7.13"
\include "figured-accidentals.ly"

VioloncelloWinterThree = \notes {
\clef bass
\key f \minor
\time 3/8

\mark "F"
\relative f {
% "Bowed long, and single stroke"
f4._"Allegro - Arcate lunghe, e Tasto Solo" ~ |
f4. ~ |
f4. ~ |
f4. ~ |
% 5
f4. ~ |
f4. ~ |
f4. ~ |
f4. ~ |
f4. ~ |
% 10
f4. ~ |
f4. ~ |
f4. ~ |
f4. ~ |
f4. ~ |
% 15
f4. ~ |
f4. ~ |
f4. ~ |
f4. ~ |
f4. ~ |
% 20
f4. |
c4._"Tasto Solo" ~ |
c4. ~ |
c4. ~ |
c4. ~ |
% 25
\mark "G"
c4. ~ |
c4. ~ |
c4. ~ |
c4. ~ |
c4. ~ |
% 30
c4. ~ |
c4. ~ |
c4. ~ |
c4. ~ |
c4. ~ |
% 35
c4. ~ |
c4. ~ |
c4. ~ |
c4. ~ |
c4. ~ |
% 40
\mark "H"
c4. ~ |
c4. ~ |
c4. ~ |
c4. ~ |
c4. ~ |
% 45
c4. ~ |
c4. ~ |
c4. |
f'16_"Tutti" ees des c bes aes |
g f e d c bes |
% 50
aes8 bes c |

\mark "I"
f,4 r8 |
R4.*9 |
% 61
c'4._"Tasto Solo" ~ |
c4. ~ |
c4. ~ |
c4. ~ |
% 65
c4. ~ |
c4. ~ |
c4. ~ |
c4. ~ |
c4. ~ |
% 70
c4. ~ |
c4. ~ |
c4. |
g4._"Tasto Solo" ~ |
g4. ~ |
% 75
g4. ~ |
g4. ~ |
g4. ~ |
g4. ~ |
g4. ~ |
% 80
g4. ~ |
g4. ~ |
g4. ~ |
g4. ~ |
g4.  |
% 85
g4. ~ |
g4. ~ |
g4. ~ |
g4. |
\mark "L"
g8 r r32 b' c d |
% 90
f,8 r r32 d ees f |
g,8 r r32 b c d |
ees8 f g |
c,4 r8 |
% 95
g8 r r |
g8 r r |
g8 r r |
g8 r r |
ees'' c aes |
% 100
f d b |
g4 r8 |
\mark "M"
\property Staff.MultiMeasureRest \set #'minimum-length = #48
R4.*19 |
% 120
\mark "N"
ees'4 r8 |
R4.*3
\property Voice.autoBeamSettings \override #'(begin 1 32 * * ) = #(ly:make-moment 1 8 )
\property Voice.autoBeamSettings \override #'(end 1 32 * * ) = #(ly:make-moment 1 8 )
bes32^"Venti" bes bes bes 	bes bes bes bes 	bes bes bes bes |
% 125
c4^#`(columns ,fignatural) r8 |
R4. |
f32 f f f	f f f f 	f f f f |
f4 r8 |
bes,32 bes bes bes 	bes bes bes bes 	bes bes bes bes |
% 130
bes4^#'(lines "6") r8 |
c32 c c c	c c c c 	c c c c |
c4^#'(lines "6") r8 |
des32 des des des	des des des des 	des des des des |
des4^#'(lines "6") r8 |
% 135
e32 e e e	e e e e 	e e e e |
c4^#`(lines "7" (columns ,fignatural)) r8 |
f32 f f f	f f f f 	f f f f |
f4 r8 |
R4. |
% 140
c32 c c c 	c c c c 	c c c c |
bes32 bes bes bes	bes bes bes bes 	bes bes bes bes |
aes32 f f f 	f f f f 	f f f f |
c32^#'(lines "5" "4") c c c 	c c c c 	c c c c |
c32^#`(columns ,fignatural) c c c 	c c c c 	c c c c |
% 145
f f f f 	f f f f 	f f f f	|
f4 r8 |
R4. |
c'32 c c c 	c c c c 	c c c c |
bes bes bes bes	bes bes bes bes	bes bes bes bes |
% 150
aes32 f f f 	f f f f 	f f f f |
c32^#'(lines "5" "4") c c c 	c c c c 	c c c c |
c32^#`(columns ,fignatural) c c c 	c c c c 	c c c c |
f4.^\fermata
}
\bar "|."
} 


%\score {
%\VioloncelloWinterThree
%}

