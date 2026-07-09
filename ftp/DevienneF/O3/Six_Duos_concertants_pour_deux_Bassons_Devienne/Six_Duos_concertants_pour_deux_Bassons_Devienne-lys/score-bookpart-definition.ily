
\bookpart {
  \header {
    title=\markup \null
    composer = \markup \null
    subtitle=\markup \null
  }
  \tocItem score \tocItemText
  \score {
    \header {
      opus=\markup \concat { \opusText ", No. " \scoreNumber }
      breakbefore=##f
    }
    \header {
      piece=\firstMovementPiece
      breakbefore=\breakBefore
      opus=\markup { \concat { \opusText ", No. " \scoreNumber } }
      title = \titleMarkup
      composer=\composerMarkup
      subtitle=\subtitleMarkup
      subsubtitle=\subsubtitleMarkup
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

