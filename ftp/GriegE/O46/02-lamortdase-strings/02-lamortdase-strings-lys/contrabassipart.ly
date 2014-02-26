\version "2.18.0"

#(set-global-staff-size 20)

\include "header.ly"
\include "contrabassi.ly"

\score {
  << 
    \new Staff = "contrabassi" \with {
      midiInstrument = #"contrabass"
      instrumentName = #"Contrabassi "
      shortInstrumentName = #"Cb. "
    } <<
      \transposition c 
      \clef "bass"
      \new Voice = "contrabassi" \contrabassi
    >>
  >>
\include "paper.ly"
\include "midi.ly"
}
