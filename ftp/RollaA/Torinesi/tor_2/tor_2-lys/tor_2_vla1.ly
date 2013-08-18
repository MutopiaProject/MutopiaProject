\version "2.16.0"
\include "tor_2_header.ly"
\include "tor_2_parts.ly"

\score {
  \new StaffGroup \keepWithTag #'vlaone \part_duet_ii
  \header {
    piece = "Duet 2 - Andante sostenuto"
  }
  \layout { }
  \midi {
    \tempo 4=80
  }
}
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'vlaone \part_rondo
  \header {
    piece = "Duet 2 - Rondo andantino"
  }
  \layout { }
  \midi {
    \tempo 4=50
  }
}
