#(ly:set-option 'relative-includes #t)

layoutStaffSize = #17.5
#(set-global-staff-size #'layoutStaffSize)
\include "common/bwv0036b.ily"
\include "common/singleInstScore.ily"

\paper {
  outer-margin = 1.85\cm
  inner-margin = 1.85\cm
}
\header {
  scoretype = \oboeName
}

\include "parts/bwv0036b_01.ily"
\bookpart {
  \include "common/title_section.ily"
  \singleInstScore \layoutStaffSize \pieceName
                   << \oboeMusic \globalMarksBreaks >>
}

\include "parts/bwv0036b_02.ily"
pieceNameTwo = \pieceName
instInfoTwo = \instInfo
\include "parts/bwv0036b_03.ily"
\bookpart {
  \tacet \pieceNameTwo \instInfoTwo
  \markup { \vspace #3 }
  \singleInstScore \layoutStaffSize \pieceName
                   << \oboeMusic \globalMarksBreaks >>
}

\include "parts/bwv0036b_04.ily"
pieceNameFour = \pieceName
instInfoFour = \instInfo
\include "parts/bwv0036b_05.ily"
pieceNameFive = \pieceName
instInfoFive = \instInfo
\include "parts/bwv0036b_06.ily"
pieceNameSix = \pieceName
instInfoSix = \instInfo
\include "parts/bwv0036b_07.ily"
pieceNameSeven = \pieceName
instInfoSeven = \instInfo
\include "parts/bwv0036b_08.ily"
\bookpart {
  \tacet \pieceNameFour \instInfoFour
  \markup { \vspace #3 }
  \tacet \pieceNameFive \instInfoFive
  \markup { \vspace #3 }
  \tacet \pieceNameSix \instInfoSix
  \markup { \vspace #3 }
  \tacet \pieceNameSeven \instInfoSeven
  \markup { \vspace #3 }
  \singleInstScore \layoutStaffSize \pieceName
                   << \oboeMusic \globalMarksBreaks >>
}
