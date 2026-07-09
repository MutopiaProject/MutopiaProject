\include "src-definitions.ily"
\include "duet2Definitions.ily"
firstMovementPiece= \markup {Siciliano}

sicilianoFirstBarLine = \mark \markup \segno 

sicilianoFagotOneFirstRepeat = {
  | f8 ( f g a bes c )
  \dcSegnoBar
}

sicilianoFagotTwoFirstRepeat = {
   | f8 ( f e ees d c )
  \dcSegnoBar
}

sicilianoSecondRepeat = {
  \dcSegnoBar
}


sicilianoMeasureSixty = \relative c {
| r8 a' fis d ees fis
}

finaleFirstBar = {}