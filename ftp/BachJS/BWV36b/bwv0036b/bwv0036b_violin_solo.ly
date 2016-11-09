#(ly:set-option 'relative-includes #t)

layoutStaffSize = #16.5
#(set-global-staff-size #'layoutStaffSize)
\include "common/bwv0036b.ily"
\include "common/singleInstScore.ily"

\paper {
  outer-margin = 1.85\cm
  inner-margin = 1.85\cm
}
\header {
    scoretype = \violinSoloName
}
scoreFile = "violinIScore.ily"

\include "parts/bwv0036b_07.ily"
\bookpart {
  \include "common/title_section.ily"
  \singleInstScore \layoutStaffSize \pieceName
                   << \violinMusic \violinMarks \globalMarksBreaks >>
}
