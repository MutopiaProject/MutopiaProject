\version "2.16.1"
\include "rolla_6duos_1_header.ly"
\include "rolla_6duos_1_parts.ly"

\score {
  \new StaffGroup \keepWithTag #'score \part_duet_i
  \header {
    piece = "Duet 1 - Moderato"
  }
  \layout { }
  \midi {
    \tempo 4=100
  }
}
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'score \part_duet_ii
  \header {
    piece = "Duet 1 - Rondo andantino con moto"
  }
  \layout { }
  \midi {
    \tempo 2=50
  }
}
