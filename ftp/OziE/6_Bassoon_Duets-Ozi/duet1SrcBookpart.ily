duetOne = \bookpart {
  \header {
    title = "Six Duos pour deux bassons"
    subtitle="Facsimili"
    subsubtitle=\subsubTitleMarkup
  }

  \tocPlayerItem
  \tocitem
  \score {
    \header {
      piece=\firstMovementPiece
      breakbefore=##f
    }
    \new Staff  
    {
      \compressMMRests {
	\set Staff.instrumentName = \instrument
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
