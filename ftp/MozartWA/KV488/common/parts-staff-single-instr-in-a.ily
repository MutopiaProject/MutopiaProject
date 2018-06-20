% Score block for single-staff instruments in "A"
% Do not compile

\include "version.ily"
\include "styles.ily"

\score {
  \keepWithTag #'printed
  <<
    \new Staff {
      \set Staff.instrumentName = \thisInstrName
      \thisClef
      \condenseRests
      \transposition a
      \globalInA
      \theseNotes
    }
  >>
  \layout { }
}
