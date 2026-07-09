duetThree = \bookpart {
  \header {
    subtitle=\markup \center-column { \line { III } \line { DUO } }
  }
  \tocItem score.duetTwo \markup "III Duo"
  \score {
    \header {
      piece="Allegro"
    }
    \new Staff  
    {
      \compressMMRests {
	\set Staff.instrumentName = \instrument
	\restStyle
	\one
      }
    }
  }
  \score {
    \header {
      piece="Rondeau"
      breakbefore=##t
    }

    \new Staff  
    {
      \compressMMRests {
	\set Staff.instrumentName = \instrument
	\restStyle
	\two
      }
    }
  }
}
