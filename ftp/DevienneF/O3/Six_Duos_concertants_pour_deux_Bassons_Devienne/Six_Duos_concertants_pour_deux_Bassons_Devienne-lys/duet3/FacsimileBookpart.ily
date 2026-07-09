
duetThree = \bookpart {
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
        \secondMovementTheme
      }
    }
  }
  \score {
    \header {
      %      piece=\secondMovementPiece
      breakbefore=##f
    }

    \new Staff
    {
      \compressMMRests {
        \set Staff.instrumentName = \markup \large \italic \center-column { \line { 1 } \line { Variation } }
        \restStyle
        \secondMovementVarOne
      }
    }
  }
  \score {
    \header {
      %      piece=\secondMovementPiece
      breakbefore=##f
    }

    \new Staff
    {
      \compressMMRests {
        \set Staff.instrumentName = \markup \large \italic \center-column { 
          \line { 2 
                  #(if (= player 1) #{ \markup \super{ m } #} ) } \line { Variation } }
        \restStyle
        \secondMovementVarTwo
      }
    }
  }
}
