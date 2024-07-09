\version "2.18.2"

\include "pianoright.ly"
\include "pianoleft.ly"

pianoStaff = {
 \context PianoStaff <<
 \set PianoStaff.instrumentName = "Pianoforte"
 \context Staff = "right" {
  \pianoright
 }

 \context Staff = "left" {
  \pianoleft
 }
>>
}
