\include "urtext-definitions.ily"
\include "duet2Definitions.ily"

sicilianoFirstBarLine = \bar ".|:"

sicilianoFagotOneFirstRepeat = \relative c' {
  \set Score.repeatCommands = #'((volta "1"))
  | f,8 ( f g a bes c )
  \bar ":|."
  \set Score.repeatCommands = #'((volta "2"))
  | f,8 ( f g a bes c ) \caesura
  \set Score.repeatCommands = #'((volta #f))
}


sicilianoMeasureSixty = \relative c {
| r8 a' fis d e fis
}

sicilianoFagotTwoFirstRepeat = \relative c' {
  \set Score.repeatCommands = #'((volta "1"))
  | f,8 ( f e ees d c )
  \bar ":|."
  \set Score.repeatCommands = #'((volta "2"))
  | f8 ( f e ees d c ) \caesura 
  \set Score.repeatCommands = #'((volta #f))
}
sicilianoSecondRepeat = {
  \mark \markup \center-column {
    \line { D.C. }
    \line { al fine }
  }
  \bar "||"
}

finaleFirstBar = \bar ".|:"