\version "2.18.2"

\include "violino.ily"

instrument = "Violino"
\include "header.ily"
\header {piece = "Largo"}
\score {
  \new Staff {\largoViolino}
  \layout { }
  \midi {\tempo 4 = 30}
}
