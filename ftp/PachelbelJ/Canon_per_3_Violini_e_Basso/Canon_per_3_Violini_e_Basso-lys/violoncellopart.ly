\version "2.18.2"

#(set-global-staff-size 20)

\include "header.ily"
\include "violoncello.ily"

\score {
    << 
      \context Staff = violoncello \with {
        midiInstrument = #"cello"
        instrumentName = \markup {
          \center-column { "Violoncello" }
        }
      } <<
        \clef "bass"
	\violoncello
      >>
    >>
\include "paper.ily"
\include "midi.ily"
}
