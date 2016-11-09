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
  scoretype = \violaName
}

\include "parts/bwv0036b_01.ily"
\bookpart {
  \include "common/title_section.ily"
  \paper {
    system-count = #17
  }
  \singleInstScore \layoutStaffSize \pieceName
                   << \violaMusic \globalMarksBreaks >>
}

\include "parts/bwv0036b_02.ily"
pieceNameTwo = \pieceName
instInfoTwo = \instInfo
\include "parts/bwv0036b_03.ily"
pieceNameThree = \pieceName
instInfoThree = \instInfo
\include "parts/bwv0036b_04.ily"
\bookpart {
  \tacet \pieceNameTwo \instInfoTwo
  \markup { \vspace #3 }
  \tacet \pieceNameThree \instInfoThree
  \markup { \vspace #3 }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \new Staff = "main" <<
        \compressFullBarRests
        \new Voice { \violaMusic }
        \new NullVoice \globalMarksBreaks
      >>
      \new Staff = "Ossia" \with {
        \override StaffSymbol.staff-space = #(magstep -2)
        fontSize = #-2
      } {
        \set Staff.instrumentName = \markup { \larger \altoName }
        \new Voice = "altosnippet" { \altoMusic }
      }
      \new Lyrics \lyricsto "altosnippet" { \altoLyrics }
    >>
  }
}

\include "parts/bwv0036b_05.ily"
\bookpart {
  \singleInstScore \layoutStaffSize \pieceName
                   << \violaMusic \globalMarksBreaks >>
}

\include "parts/bwv0036b_06.ily"
pieceNameSix = \pieceName
instInfoSix = \instInfo
\include "parts/bwv0036b_07.ily"
pieceNameSeven = \pieceName
instInfoSeven = \instInfo
\include "parts/bwv0036b_08.ily"
\bookpart {
  \tacet \pieceNameSix \instInfoSix
  \markup { \vspace #3 }
  \tacet \pieceNameSeven \instInfoSeven
  \markup { \vspace #3 }
  \singleInstScore \layoutStaffSize \pieceName
                   << \violaMusic \globalMarksBreaks >>
}
