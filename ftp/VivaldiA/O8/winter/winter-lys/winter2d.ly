\version "1.7.13"
\include "figured-accidentals.ly"

VioloncelloWinterTwo = \notes {
\clef bass
\key ees \major
\time 4/4

\mark "E"
\relative ees {
ees8_"Largo - Sepre Piano" ees ees ees	bes bes bes bes |
bes^#'(lines "7") bes bes bes 	ees ees ees ees |
d d d d 	c c c c |
bes bes bes bes 	aes aes a a |
bes bes bes bes 	bes bes bes bes |
ees ees ees ees 	ees ees ees ees |
bes bes bes bes 	f^#'(lines "5" "4") f f f |
f^#`(columns ,fignatural) f f f 	bes bes bes bes |
bes bes bes bes 	f^#`(columns ,fignatural) f f f |
f^#'(lines "7") f f f 	bes^#'(lines "5" "4") bes^#'(lines "3") bes bes |
bes^#'(lines "7") bes bes bes 	ees ees ees ees |
aes, aes aes^#'(lines "6") aes 	bes bes bes^#'(lines "6") bes |
c c c^#'(lines "6") c 	bes bes bes bes |
bes bes bes bes 	bes bes bes bes |
bes bes bes bes 	bes bes bes bes |
ees, ees bes' bes 	ees, ees ees ees |
ees ees ees ees 	ees ees ees ees |
ees1^\fermata |
}
\bar "||"
} 


%\score {
%\VioloncelloWinterTwo
%}
