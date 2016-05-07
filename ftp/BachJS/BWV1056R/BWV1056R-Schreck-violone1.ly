\version "2.18.2"

\include "violine1.ily"

instrument = "Violine I"
\include "header.ily"
\header {piece = "Largo"}
\score {
  \new Staff {\largoViolineI}
  \layout { }
  \midi {\tempo 4 = 30}
}
