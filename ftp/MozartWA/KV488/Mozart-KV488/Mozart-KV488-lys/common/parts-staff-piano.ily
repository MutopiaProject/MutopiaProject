% Score block for piano part printout
% Do not compile

\include "version.ily"
\include "styles.ily"

\score {
  \keepWithTag #'printed
  <<
    \new PianoStaff
    <<
      \set PianoStaff.instrumentName = \thisInstrNameV
      % Staff names are not arbitrary; they are depended on by
      % \staffUp and \staffDown in ./common/definitions.ily.
      \new Staff = "upper" {
        \thisClefInstrVu
        \condenseRests
        \global
        \pianoTreble
      }
      \new Staff = "lower" {
        \thisClefInstrVd
        \condenseRests
        \global
        \pianoBass
      }
    >>
  >>
  \layout { }
}
