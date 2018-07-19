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
  \with {
    \remove "Span_bar_engraver"
  }
  <<
    \new AtomicStaffGroup
    <<
      \new Staff {
        \set Staff.instrumentName = \thisInstrNameI
        \thisClefInstrI
        \global
        \flute
      }
      \new Staff {
        \set Staff.instrumentName = \thisInstrNameII
        \thisClefInstrII
        \globalInA
        \clarinet
      }
      \new Staff {
        \set Staff.instrumentName = \thisInstrNameIII
        \thisClefInstrIII
        \global
        \bassoon
      }
      \new Staff {
        \set Staff.instrumentName = \thisInstrNameIV
        \thisClefInstrIV
        \globalInA
        \horn
      }
    >>
    \new PianoStaff
    <<
      \set PianoStaff.instrumentName = \thisInstrNameV
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
    \new AtomicStaffGroup
    <<
      \new GrandStaff
      <<
        \new Staff {
          \set Staff.instrumentName = \thisInstrNameVI
          \thisClefInstrVI
          \global
          \violinI
        }
        \new Staff {
          \set Staff.instrumentName = \thisInstrNameVII
          \thisClefInstrVII
          \global
          \violinII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = \thisInstrNameVIII
        \thisClefInstrVIII
        \global
        \viola
      }
      \new Staff {
        \set Staff.instrumentName = \thisInstrNameIX
        \thisClefInstrIX
        \global
        \cello
      }
    >>
  >>
  \layout { \context { \Staff \RemoveEmptyStaves } }
}
