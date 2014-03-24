\version "2.18.0"

#(set-global-staff-size 20)
\include "header.ly"
\include "violoncelli.ly"

\score {
    << 
      \context Staff = violoncelli \with {
        midiInstrument = #"cello"
        instrumentName = \markup {
          \center-column { "Violoncelli" \line{ "(con sordini)" } }
        }
        shortInstrumentName = #"Vc."
      } <<
        \clef "bass"
        \partcombine \violoncelliI \violoncelliII \violoncelliIII
      >>
    >>
\include "paper.ly"
\include "midi.ly"
}
