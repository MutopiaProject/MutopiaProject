\version "1.7.13"
\include "figured-accidentals.ly"

VioloncelloWinterOne = \notes {
\clef bass
\key f \minor
\time 4/4

\mark "A"
\relative f {
f8-._"Allegro non molto" \( \) f-. f-. \( \) f-.	f8-. \( \) f-. f-. \( \) f-. |
f8-.^#'(lines "6" "4" "2") \( \) f-. f-. \( \) f-.	f8-. \( \) f-. f-. \( \) f-. |
f8-. \( \) f-. f-. \( \) f-.	f8-. \( \) f-. f-. \( \) f-. |
f8-. \( \) f-. f-. \( \) f-.	f8-. \( \) f-. f-. \( \) f-. |
% 5
e8-.^#'(lines "7" "5") \( \) e-. e-. \( \) e-.	e8-. \( \) e-. e-. \( \) e-. |
f8-. \( \) f-. f-. \( \) f-.	f8-. \( \) f-. f-. \( \) f-. |
f8-.^#'(lines "6" "4") \( \) f-. f-. \( \) f-.	f8-. \( \) f-. f-. \( \) f-. |
f8-.^#`(lines "7" (columns "3" ,fignatural)) \( \) f-. f-. \( \) f-.	f8-. \( \) f-. f-. \( \) f-. |
f8-.^#`(lines (columns "6" ,fignatural) (columns "4" ,fignatural)) \( \) f-. f-. \( \) f-.	f8-. \( \) f-. f-. \( \) f-. |
fis8-.^#'(lines "7" "5") \( \) fis-. fis-. \( \) fis-.	fis8-. \( \) fis-. fis-. \( \) fis-. |
g8-.^#`(lines (columns "5" ,fignatural) "4") \( \) g-. g-. \( \) g-.	g,8-.^#`(columns "3" ,fignatural) \( \) g-. g-. \( \) g-. |
\mark "B"
c4 r r2 |
r2	c8-. \( \) c-. c-. \( \) c-. |
c8-. \( \) c-. c-. \( \) c-.	c4 r |
% 15
r1 |
c8-. \( \) c-. c-. \( \) c-.	c8-. \( \) c-. c-. \( \) c-. |
c4 r r2 |
R1*2 |
% 20
f8-. \( \) f-. f-. \( \) f-.	f8-.^#`(lines "4" (columns "2" ,figflat)) \( \) f-. f-. \( \) f-. |
ees8-.^#`(lines "6" (columns "4" ,fignatural)) \( \) ees-. ees-. \( \) ees-.	des-.^#'(lines "6") \( \) des-. des-. \( \) des-. |
des-.^#`(lines (columns "6" ,fignatural) "3") \( \) des-. des-. \( \) des-.
\mark "C"
c4^#`(columns ,fignatural) r |
f16^"Batter dè piedi per il freddo" f, f' f,	f' f, f' f,	bes4 r |
ees16 ees, ees' ees,	ees' ees, ees' ees,	aes4 r |
% 25
des16 des, des' des,	des' des, des' des,	g4 r |
c16^#`(columns ,fignatural) c, c' c,	c' c, c' c,	f'8-. \( \) f-. e-. \( \) e-. |
f-. \( \) f-. g-. \( \) g-. 	aes-. \( \) aes-. aes-. \( \) aes-. |
aes-. \( \) aes-. aes-. \( \) aes-. 	aes-. \( \) aes-. aes-. \( \) aes-. |
bes-. \( \) bes-. g-. \( \) g-. 	g-. \( \) g-. g-. \( \) g-. |
% 30
g-. \( \) g-. g-. \( \) g-. 	aes-. \( \) aes-. f-. \( \) f-. |
f-. \( \) f-. f-. \( \) f-. 	e-.^#'(lines "7") \( \) ees-.^#'(lines "6") d-.^#'(lines "7") \( \) des-.^#'(lines "6") |
c-.^#`(lines "7" (columns ,fignatural)) \( \) c-. c-. \( \) c-. 	c-. \( \) c-. c-. \( \) c-. |
c-. \( \) c-. c-. \( \) c-. 	c32^"Venti" c c c	c c c c 	c c c c 	c c c c |
f4 r 	f32^#`(lines "7" (columns "3" ,fignatural)) f f f	f f f f 	f f f f 	f f f f |
% 35
bes,4 r 	g'32^#`(lines "7" (columns "3" ,fignatural)) g g g	g g g g 	g g g g 	g g g g |
c,4 r 	bes32^#`(lines "7" (columns "3" ,fignatural)) bes bes bes	bes bes bes bes 	bes bes bes bes 	bes bes bes bes64 bes64 |
ees4 r 	aes,32^#'(lines "6" "5") aes aes aes	aes aes aes aes 	aes aes aes aes 	aes aes aes aes |
bes32^#`(columns ,fignatural) bes bes bes	bes bes bes bes 	bes bes bes bes 	bes bes bes bes 	ees8-. \( \) ees-. ees-. \( \) ees-. |
ees-.^#'(lines "5" "4" "2") \( \) ees-. ees-. \( \) ees-. 	ees-. \( \) ees-. ees-. \( \) ees-. |
% 40
ees-. \( \) ees-. ees-. \( \) ees-. 	d-.^#'(lines "6" "5") \( \) d-. d-. \( \) d-. |
ees-. \( \) ees-. ees-. \( \) ees-. 	ees-.^#`(columns ,figflat "7") \( \) ees-. ees-. \( \) ees-. |
aes,-. \( \) aes-. aes-. \( \) aes-. 	f-.^#`(lines "7" (columns "3" ,fignatural)) \( \) f-. f-. \( \) f-. |
bes-.^#`(columns ,fignatural) \( \) bes-. bes-. \( \) bes-. 	bes-.^#`(lines "7" (columns "3" ,fignatural)) \( \) bes-. bes-. \( \) bes-. |
ees4 r g ees |
aes, r a' f |
bes, r b' g |
\mark "D"
c, r r2 |
R1*8 |
c4^#`(columns ,fignatural) r	f16_"Forte" f, f' f,	f' f, f' f, |
bes4 r	ees16 ees, ees' ees,	ees' ees, ees' ees, |
aes4 r	des16 des, des' des,	des' des, des' des, |
g4 r	c'16^#`(lines "7" (columns "3" ,fignatural)) c, c' c,	c' c, c' c, |
[ f16 f32 f f f f f ]	f16 f f f 
[ bes,16^#'(lines "6" "5") bes32 bes bes bes bes bes ]	bes16 bes bes bes |
% 60
[ c16^#`(columns "3" ,fignatural) c32 c c c c c ]	c16 c c c 
[ f,16 f'32 f f f f f ]	f16 f f f |
[ bes,16^#'(lines "6" "5") bes32 bes bes bes bes bes ]	bes16 bes bes bes 
[ c16^#`(columns ,fignatural) c32 c c c c c ]	c16 c c c |
f,1^\fermata |
}
\bar "||"
}


%\score {
%\VioloncelloWinterOne
%}

