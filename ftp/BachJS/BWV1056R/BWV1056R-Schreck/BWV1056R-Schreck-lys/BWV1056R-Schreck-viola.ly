\version "2.18.2"

\include "viola.ily"

instrument = "Viola"
\include "header.ily"
\header {piece = "Largo"}
\score {
  \new Staff {\largoViola}
  \layout { }
  \midi {\tempo 4 = 30}
}
