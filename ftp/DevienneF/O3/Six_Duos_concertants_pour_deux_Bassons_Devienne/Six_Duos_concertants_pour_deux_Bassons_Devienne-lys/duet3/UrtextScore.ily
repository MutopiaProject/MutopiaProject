\include "urtext-definitions.ily"

instrument = \markup ""
\include "first-movement/player1/urtext.ily"
firstMovementPlayerOne=\part

\include "first-movement/player2/urtext.ily"
firstMovementPlayerTwo=\part

\include "second-movement/player1/urtext.ily"
playerOneSecondMovementTheme = \theme
playerOneSecondMovementVarOne = \varOne
playerOneSecondMovementVarTwo = \varTwo

\include "second-movement/player2/urtext.ily"
playerTwoSecondMovementTheme = \theme
playerTwoSecondMovementVarOne = \varOne
playerTwoSecondMovementVarTwo = \varTwo

duetThree = \bookpart {
  \header {
    title =  \titleMarkup
    subtitle=\subtitleMarkup
    subsubtitle=\subsubtitleMarkup
  }
  \tocItem score \tocItemText
  \score {
    \header {
      opus=\markup { \concat { \opusText ", No. " \scoreNumber } }
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
          \playerOneSecondMovementTheme
        \tweak direction #DOWN
        \textEndMark \markup \italic "Fine"
        \break
	  \textMark \markup \large \italic \center-column {
	    \line { 1\super{st} }
	    \line { Variation }
	  }
        }
	\playerOneSecondMovementVarOne
        \break
        \textMark \markup \large \italic \center-column {
	  \line { 2\super{nd} }
	  \line { Variation }
	}
        \playerOneSecondMovementVarTwo
        \tweak direction #DOWN
        \textEndMark \markup \italic \right-column {
	  \line { D.C. }
	  \line { al Fine }
	  \line { (no repeats) }
	} 
      }
      \new Staff
      {
        \compressMMRests {
          \set Staff.midiInstrument = "bassoon"
          \set Staff.instrumentName = "2."
          \restStyle
          \playerTwoSecondMovementTheme
	  \break
	  \playerTwoSecondMovementVarOne
	  \break
	  \playerTwoSecondMovementVarTwo
        }
      }
    >>
    \midi {
    }
    \layout {
    }
  }
}

