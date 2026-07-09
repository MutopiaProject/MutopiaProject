duetThree = \bookpart {
  \header {
    title=\markup \null
    composer = \markup \null
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
      %      piece=\secondMovementPiece
      breakbefore=##t
    }

    \new Staff
    {
      \compressMMRests {
        \set Staff.instrumentName = \markup \large \italic {
	  \secondMovementPiece
	}
        \restStyle
        \secondMovementTheme
        \tweak direction #DOWN
        \textEndMark \markup \italic "Fine"
        \break
        \textMark \markup \large \italic \center-column {
	  \line { 1\super{st} }
	  \line { Variation }
	}
        \secondMovementVarOne
        \break
        \textMark \markup \large \italic \center-column {
	  \line { 2\super{nd} }
	  \line { Variation }
	}
        \secondMovementVarTwo
        \tweak direction #DOWN
        \textEndMark \markup \italic \right-column {
	  \line { D.C. }
	  \line { al Fine }
	  \line { (no repeats) }
	} 
      }
    }
  }
}
