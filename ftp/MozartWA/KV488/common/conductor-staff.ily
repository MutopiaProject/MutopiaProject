% Mozart - Piano Concerto No. 23 in A major
% typeset by William Chargin
% Movement printout for conductor's score
% Do not compile

\include "version.ily"
\include "styles.ily"
\thisTocLabel
\score {
  \keepWithTag #'printed
  \new StaffGroup
  <<
    \new Staff {
      \set Staff.instrumentName = \thisInstrNameI
      \set Staff.shortInstrumentName = \thisShortInstrNameI
      \thisClefInstrI
      \global
      \flute
    }
    \new Staff {
      \set Staff.instrumentName = \thisInstrNameII
      \set Staff.shortInstrumentName = \thisShortInstrNameII
      \thisClefInstrII
      \globalInA
      \clarinet
    }
    \new Staff {
      \set Staff.instrumentName = \thisInstrNameIII
      \set Staff.shortInstrumentName = \thisShortInstrNameIII
      \thisClefInstrIII
      \global
      \bassoon
    }
    \new Staff {
      \set Staff.instrumentName = \thisInstrNameIV
      \set Staff.shortInstrumentName = \thisShortInstrNameIV
      \thisClefInstrIV
      \globalInA
      \horn
    }
    \new PianoStaff
    <<
      \set PianoStaff.instrumentName = \thisInstrNameV
      \set PianoStaff.shortInstrumentName = \thisShortInstrNameV
      % Staff names are not arbitrary; they are depended on by
      % \staffUp and \staffDown in ./common/definitions.ily.
      \new Staff = "upper" {
        \thisClefInstrVu
        \global
        \pianoTreble
      }
      \new Staff = "lower" {
        \thisClefInstrVd
        \global
        \pianoBass
      }
    >>
    \new GrandStaff
    <<
      \new Staff {
        \set Staff.instrumentName = \thisInstrNameVI
        \set Staff.shortInstrumentName = \thisShortInstrNameVI
        \thisClefInstrVI
        \global
        \violinI
      }
      \new Staff {
        \set Staff.instrumentName = \thisInstrNameVII
        \set Staff.shortInstrumentName = \thisShortInstrNameVII
        \thisClefInstrVII
        \global
        \violinII
      }
    >>
    \new Staff {
      \set Staff.instrumentName = \thisInstrNameVIII
      \set Staff.shortInstrumentName = \thisShortInstrNameVIII
      \thisClefInstrVIII
      \global
      \viola
    }
    \new Staff {
      \set Staff.instrumentName = \thisInstrNameIX
      \set Staff.shortInstrumentName = \thisShortInstrNameIX
      \thisClefInstrIX
      \global
      \cello
    }
  >>
  \layout { \context { \Staff \RemoveEmptyStaves } }
}
