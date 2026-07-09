\bookpart {
  \header {
    title=\markup \null
    composer = \markup \null
    subtitle=\markup \null
  }
  \tocItem score \tocItemText
  \score {
    \header {
      breakbefore=\breakBefore
      opus=\markup { \concat { \opusText ", No. " \scoreNumber } }
      title = \titleMarkup
      composer=\composerMarkup
      subtitle=\subtitleMarkup
      subsubtitle=\subsubtitleMarkup
    }
    \new Staff
    {
      \compressMMRests {
        \set Staff.instrumentName = \firstMovementPiece
        \restStyle
        \firstMovement
      }
    }
  }

  \score {
    \header {
      %%    piece=\secondMovementPiece
      breakbefore=##t
    }

    \new Staff  
    {
      \compressMMRests {
	\set Staff.instrumentName = \markup \large \italic {
	  \secondMovementPiece
	}
	\restStyle
	\secondMovement
      }
    }
  }
}
