duetFive = \bookpart {
  \header {
    title = "Six Duos pour deux bassons"
    subtitle="Urtext"
    subsubtitle=\subsubTitleMarkup
  }
  \tocPlayerItem
  \tocitem
  \score {
    \header {
      piece=\firstMovementPiece
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
