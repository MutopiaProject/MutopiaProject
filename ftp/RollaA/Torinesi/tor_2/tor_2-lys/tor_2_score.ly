\version "2.16.0"
\include "tor_2_header.ly"
\include "tor_2_parts.ly"

\score {
  \new StaffGroup \keepWithTag #'score \part_duet_ii
  \layout { }
  \header {
    piece = "Duet 2 - Andante sostenuto"
  }
  \midi {
    \tempo 4=80
  }
} 
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'score \part_rondo
  \layout { }
  \header {
    piece = "Duet 2 - Rondo andantino"
  }
  \midi {
    \tempo 4=50
  }
} 
