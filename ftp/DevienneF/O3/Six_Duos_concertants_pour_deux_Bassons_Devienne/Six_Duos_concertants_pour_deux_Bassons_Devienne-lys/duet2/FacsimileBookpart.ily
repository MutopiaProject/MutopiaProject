
duetTwo = \bookpart {
  \header {
    title = \titleMarkup
    subtitle="Facsimile"
    subtitle=\subsubtitleMarkup
  }
  \tocItem volume \tocItemText
  \score {
    \header {
      breakbefore=##f
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
	\set Staff.instrumentName = \markup \large \italic {\secondMovementPiece}
	\restStyle
	\secondMovement
      }
    }
  }
}
