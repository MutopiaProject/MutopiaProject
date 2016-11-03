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
  scoretype = \fluteName
}

\include "parts/bwv0036b_01.ily"
\bookpart {
  \include "common/title_section.ily"
  \singleInstScore \layoutStaffSize \pieceName
                   << \fluteMusic \globalMarksBreaks >>
}

\include "parts/bwv0036b_02.ily"
pieceNameTwo = \pieceName
instInfoTwo = \instInfo
\include "parts/bwv0036b_03.ily"
pieceNameThree = \pieceName
instInfoThree = \instInfo
\include "parts/bwv0036b_04.ily"
pieceNameFour = \pieceName
instInfoFour = \instInfo
\include "parts/bwv0036b_05.ily"
\bookpart {
  \tacet \pieceNameTwo \instInfoTwo
  \markup { \vspace #3 }
  \tacet \pieceNameThree \instInfoThree
  \markup { \vspace #3 }
  \tacet \pieceNameFour \instInfoFour
  \markup { \vspace #3 }
  \singleInstScore \layoutStaffSize \pieceName
                   << \fluteMusic \globalMarksBreaks >>
}

\include "parts/bwv0036b_06.ily"
pieceNameSix = \pieceName
instInfoSix = \instInfo
\include "parts/bwv0036b_07.ily"
music = \fluteMusic
\bookpart {
  \tacet \pieceNameSix \instInfoSix
  \markup { \vspace #3 }
  \singleInstScore \layoutStaffSize \pieceName
                   << \fluteMusic \globalMarksBreaks >>
}

\include "parts/bwv0036b_08.ily"
\bookpart {
  \paper {
    system-count = #17
  }
  \singleInstScore \layoutStaffSize \pieceName
                   << \fluteMusic \globalMarksBreaks >>
}
