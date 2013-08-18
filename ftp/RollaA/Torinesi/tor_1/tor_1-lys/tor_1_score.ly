\version "2.16.0"
\include "tor_1_header.ly"
\include "tor_1_parts.ly"

\score {
  \new StaffGroup \keepWithTag #'score \part_duet_i
  \header {
    piece = "Duet 1 - Allegro"
  }
  \layout { }
  \midi {
    \tempo 4=100
  }
}
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'score \part_rondo
  \header {
    piece = "Duet 1 - Rondo minuetto comodo"
  }
  \layout { }
  \midi {
    \tempo 4=80
  }
}
