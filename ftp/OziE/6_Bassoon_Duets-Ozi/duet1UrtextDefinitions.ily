\include "urtext-definitions.ily"
\include "duet1Definitions.ily"
allegroModeratoTempo =  \tempo \markup { Allegro Moderato }
allegroModeratoFirstBarLine = \bar ".|:"
allegroModeratoFagotOneFirstRepeat = {
  \relative c' {
    \set Score.repeatCommands = #'((volta "1"))
    g4 g4 g8-- 	\caesura g a b
    \bar ":|."
    \set Score.repeatCommands = #'((volta "2"))
    g4 g g \caesura r
    \bar ".|:"
    \set Score.repeatCommands = #'((volta #f))
  }
}

allegroModeratoFagotTwoFirstRepeat = {
  \relative c {
    \set Score.repeatCommands = #'((volta "1"))
    g8  g' d b g_-  	\caesura r r4
    \bar ":|."
    \set Score.repeatCommands = #'((volta "2"))
    \relative c {
      g8  g' d b g4  	\caesura
      b'8\prall c
      \bar ".|:"
      \set Score.repeatCommands = #'((volta #f))
    }
  }

}
allegroModeratoFagotOneSecondRepeat =  \relative c {
  \set Score.repeatCommands = #'((volta "1"))
  | c8 c' g e c4 \caesura r4
  \bar ":|."
  \set Score.repeatCommands = #'((volta "2"))
  | c8 c' g e c4 r4
  \set Score.repeatCommands = #'((volta #f))
  \Fin	
  \bar "|."
}
allegroModeratoFagotTwoSecondRepeat =   {
  \set Score.repeatCommands = #'((volta "1"))
  \relative c {
    | c4 c' c \caesura 
    b8\prall c
    \bar ".|:"
  }
  \set Score.repeatCommands = #'((volta "2"))
  \relative c' {
    | c,4 c' c r4
    \bar "|."
  }
  \set Score.repeatCommands = #'((volta #f))
}
rondeauFirstBarLine  = \bar ".|:"

rondeauFirstRepeat = \bar ":|."

rondeauSecondRepeat = {
  \mark \markup \center-column {
    
    \line { D.C. }
    \line { al fine }
  }
  \bar "||"
}


allegroModeratoTempo =  \tempo \markup {"Allegro Moderató"}

