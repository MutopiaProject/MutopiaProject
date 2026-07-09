duetTwoFirstMovement = \bookpart {
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
}
duetTwoSecondMovement= \bookpart {
  \score {
    \header {
      piece=\secondMovementPiece
      breakbefore=##f
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
