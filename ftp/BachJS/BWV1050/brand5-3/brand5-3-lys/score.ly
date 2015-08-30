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
  \header {
    instrument = "Ensemble"
  }

  <<
    \new GrandStaff <<
      \new Staff \with {
        instrumentName = \markup \smaller \column { "Flauto" "traverso." }
        % shortInstrumentName = "Fl"
        midiInstrument = "flute"
      } \flute
      \new Staff \with {
        instrumentName = \markup \smaller \column { "Violino" "principate." }
        % shortInstrumentName = "Vl.I"
        midiInstrument = "violin"
      } \violinP
    >>

    \new StaffGroup <<
      \new Staff \with {
        instrumentName = \markup \smaller \column { "Violino" "di ripieno." }
        % shortInstrumentName = "Vl"
        midiInstrument = "violin"
      } \violin
      \new Staff \with {
        instrumentName = \markup \smaller \column { "Viola" "di ripieno." }
        % shortInstrumentName = "Va"
        midiInstrument = "viola"
      } \viola
      \new Staff \with {
        instrumentName = \markup \smaller "Violoncello." 	%Cello
        % shortInstrumentName = "Vn"
        midiInstrument = "cello"
      } \cello
      \new Staff \with {
        instrumentName = \markup \smaller "Violone." %"Double Bass"
        % shortInstrumentName = "B"
        midiInstrument = "contrabass"
      } \violone
    >>
    \harpsichordTa
  >>

  \layout {}
  \midi { \tempo 2 = 90 }
}
