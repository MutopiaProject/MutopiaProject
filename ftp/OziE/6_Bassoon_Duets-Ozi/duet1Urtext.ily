\include "duet1UrtextDefinitions.ily"

instrument = \markup ""
\include "duet1/allegroModeratoUrtext/player1.ily"

firstMovementPlayerOne=\part

\include "duet1/allegroModeratoUrtext/player2.ily"

firstMovementPlayerTwo=\part

\include "duet1/rondeauUrtext/player1.ily"

secondMovementPlayerOne=\part

\include "duet1/rondeauUrtext/player2.ily"

secondMovementPlayerTwo=\part

duetOne = \bookpart {
  \header {
    title = "Six Duos pour deux bassons"
    subtitle="Urtext"
    subsubtitle=\subsubTitleMarkup
  }
  \tocVersionItem
  \tocPlayerItem
  \tocitem
  \score {
    \header {
      piece=\firstMovementPiece
    }
    <<
      \new Staff  
      {
	\compressMMRests {
	  \set Staff.instrumentName = "1."
          \set Staff.midiInstrument = "bassoon"
	  \restStyle
	  \firstMovementPlayerOne
	}
      }
      \new Staff  
      {
	\compressMMRests {
	  \set Staff.instrumentName = "2."
          \set Staff.midiInstrument = "bassoon"
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

