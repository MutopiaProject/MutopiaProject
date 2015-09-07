\version "2.18.0"

\include "header.ly"
\include "flute.ly"
\include "violinP.ly"
\include "violin.ly"
\include "viola.ly"
\include "cello.ly"
\include "violone.ly"
\include "harpsichord.ly"

#(set-global-staff-size 13)

\score {
  <<
    \new GrandStaff <<
      \new Staff \with {
        instrumentName = \markup \smaller \center-column { "Flauto" "traverso." }
        midiInstrument = "flute"
      } \flute
      \new Staff \with {
        instrumentName = \markup \smaller \center-column { "Violino" "principate." }
        midiInstrument = "violin"
      } \violinP
    >>

    \new GrandStaff <<
      \new Staff \with {
        instrumentName = \markup \smaller \center-column { "Violino" "di ripieno." }
        midiInstrument = "violin"
      } \violin
      \new Staff \with {
        instrumentName = \markup \smaller \center-column { "Viola" "di ripieno." }
        midiInstrument = "viola"
      } \viola
      \new Staff \with {
        instrumentName = \markup \smaller "Violoncello." %Cello
        midiInstrument = "cello"
      } \cello
      \new Staff \with {
        instrumentName = \markup \smaller "Violone." %"Double Bass"
        midiInstrument = "contrabass"
      } \violone
    >>
    \harpsichordStaff
  >>

  \layout {}
  \midi { \tempo 4 = 120 }
}
