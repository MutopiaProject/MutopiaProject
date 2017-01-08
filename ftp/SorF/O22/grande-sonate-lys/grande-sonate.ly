\version "2.19.49"
\include "header.ily"
\include "definitions.ily"

\include "allegro.ily"
\score {
  << \allegroScore >>
  \header {piece="Allegro."}
  \layout {}
}
\score { << \allegroMidi >>  \midi {\tempo 4 = 90} }

\include "adagio.ily"
\score {
  << \adagioScore >>
  \header {piece="Adagio."}
  \layout {}
}
\score { << \adagioMidi >>  \midi {\tempo 4 = 90} }

\include "menuetto.ily"
\score {
  << \menuettoScore >>
  \header { piece="Menuetto." }
  \layout {}
}
\score { << \menuettoMidi >>  \midi {\tempo 4 = 100} }

\include "rondo.ily"
\score {
  << \rondoScore >>
  \header { piece="Rondo." }
  \layout {}
}
\score { << \rondoMidi >>  \midi {\tempo 4 = 100} }
