\version "2.18.2"

\include "violine2.ily"

instrument = "Violine II"
\include "header.ily"
\header {piece = "Largo"}
\score {
  \new Staff {\largoViolineII}
  \layout { }
  \midi {\tempo 4 = 30}
}
