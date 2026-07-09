\include "duet2UrtextDefinitions.ily"

instrument = \markup ""
\include "duet2/sicilianoUrtext/player1.ily"

firstMovementPlayerOne=\part

\include "duet2/sicilianoUrtext/player2.ily"

firstMovementPlayerTwo=\part

\include "duet2/finaleUrtext/player1.ily"

secondMovementPlayerOne=\part

\include "duet2/finaleUrtext/player2.ily"

secondMovementPlayerTwo=\part

duetTwo = \bookpart {
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
	  \set Staff.instrumentName = "1."
          \set Staff.midiInstrument = "bassoon"
	  \restStyle
	  \secondMovementPlayerOne
	}
      }
      \new Staff  
      {
	\compressMMRests {
	  \set Staff.instrumentName = "2."
          \set Staff.midiInstrument = "bassoon"
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

