% Score block for single-staff instruments
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
      \global
      \theseNotes
    }
  >>
  \layout { }
}
