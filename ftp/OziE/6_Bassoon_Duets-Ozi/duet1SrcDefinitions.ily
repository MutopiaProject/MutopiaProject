\include "src-definitions.ily"
\include "duet1Definitions.ily"

allegroModeratoTempo =  \tempo \markup {
  \concat {
    "All"
    \combine
    \super "o" 
    \musicglyph #"dots.dot"
  }
  Moderató
}

allegroModeratoFirstBarLine = \bar ":|.|:"

allegroModeratoFagotOneFirstRepeat =  \relative c' {
  | g4 g g r
  %% 73
  \bar ":|.|:"
  \partial 4
  r4
}


allegroModeratoFagotTwoFirstRepeat =   \relative c {
  | g8 g' d b g4 r
  %% 73
  \bar ":|.|:"
  \partial 4
  | b'8\prall c
}

allegroModeratoFagotOneSecondRepeat =  \relative c {
  | c8 c' g e c4 r
  \bar ":|.|:"
  | s64
}


allegroModeratoFagotTwoSecondRepeat =   \relative c {
  | c4 c' c r
  \bar ":|.|:"
  | s64
}

rondeauFirstBarLine = \mark \markup \segno 

rondeauFirstRepeat =  \dcSegnoBarDCDot
rondeauSecondRepeat = \dcSegnoBarDCDot

