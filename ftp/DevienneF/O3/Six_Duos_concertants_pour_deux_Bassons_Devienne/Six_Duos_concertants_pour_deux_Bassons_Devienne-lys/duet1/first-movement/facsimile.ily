part = \relative c' {
  \clef bass
  \key f \major
  \once \override Score.MetronomeMark.direction = #DOWN
  \tempo \markup \italic "Allegro moderato"
  \sectionA
  \markedDoubleRepeat
  \sectionB
  \parenthesizedDoubleBar
}

