\include "facsimile-definitions.ily"

fullScore=##t
instrument = \markup ""
\include "first-movement/player1/facsimile.ily"
firstMovementPlayerOne=\part

fullScore=##f
\include "first-movement/player2/facsimile.ily"
firstMovementPlayerTwo=\part

fullScore=##t
\include "second-movement/player1/facsimile.ily"
secondMovementPlayerOne=\part

fullScore=##f
\include "second-movement/player2/facsimile.ily"
secondMovementPlayerTwo=\part

duetFive = \bookpart {
  \header {
    title =  \titleMarkup
    subtitle=\subtitleMarkup
    subsubtitle=\subsubtitleMarkup
  }
  \tocItem score \tocItemText
  \score {
    \header {
      piece=\firstMovementPiece
      breakbefore=##f
    }
    <<
      \new Staff
      {
        \compressMMRests {
          \set Staff.midiInstrument = "bassoon"
          \set Staff.instrumentName = "1."
          \restStyle
          \firstMovementPlayerOne
        }
      }
      \new Staff
      {
        \compressMMRests {
          \set Staff.midiInstrument = "bassoon"
          \set Staff.instrumentName = "2."
          \restStyle
          \firstMovementPlayerTwo
        }
      }
    >>
    \midi {
    }
    \layout {
    }
  }
  \score {
    \header {
      piece=\secondMovementPiece
      breakbefore=##t
    }
    <<
      \new Staff
      {
        \compressMMRests {
          \set Staff.midiInstrument = "bassoon"
          \set Staff.instrumentName = "1."
          \restStyle
          \secondMovementPlayerOne
        }
      }
      \new Staff
      {
        \compressMMRests {
          \set Staff.midiInstrument = "bassoon"
          \set Staff.instrumentName = "2."
          \restStyle
          \secondMovementPlayerTwo
        }
      }
    >>
    \midi {
    }
    \layout {
    }
  }
}

