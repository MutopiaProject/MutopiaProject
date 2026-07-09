bookpartDef = \bookpart {
  \header {
    title = \titleMarkup
    subtitle="Urtext"
    subsubtitle=\subsubtitleMarkup
  }
  \tocItem \tocitemText
  \score {
    \header {
%      piece=\firstMovementPiece
    }
    \new Staff  
    {
      \compressMMRests {
	\set Staff.instrumentName = \instrumentMarkup
        \restStyle
	\firstMovement
      }
    }
  }
  \score {
    \header {
      piece=\secondMovementPiece
      breakbefore=##t
    }

    \new Staff  
    {
      \compressMMRests {
	\set Staff.instrumentName = \instrument
	\restStyle
	\secondMovement
      }
    }
  }
}
