\version "2.18.2"

\include "violoncello.ily"

instrument = "Violoncello"
\include "header.ily"
\header {piece = "Largo"}
\score {
  \new Staff {\largoVioloncello}
  \layout { }
  \midi {\tempo 4 = 30}
}
