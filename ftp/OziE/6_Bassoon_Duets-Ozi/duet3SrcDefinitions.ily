\include "src-definitions.ily"
\include "duet3Definitions.ily"

allegroFirstBar = {}
allegroTempo =  \tempo \markup {
  \concat {
    "All"
    \combine
    \super "o"
    \musicglyph #"dots.dot"
  }
}

allegroFagotOneFirstRepeat = \relative c {
  f,4 f r
  \bar ":|.|:"
}


allegroFagotTwoFirstRepeat = \relative c' {
  f,4 f r
  \bar ":|.|:"
}

allegroSecondRepeatBarLine = \parenthesizedDoubleRepeat

rondeauFirstBarLine = {
  \segnoMark \default
}

rondeauFirstRepeat = \bar "|"

rondeauPlayerTwoSecondRepeat = {
  \dcSegnoBar  
  \bar ":|."
}

rondeauSecondRepeat = {
  \dcSegnoBar  
}
