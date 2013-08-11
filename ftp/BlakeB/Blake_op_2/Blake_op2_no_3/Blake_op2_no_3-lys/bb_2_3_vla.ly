\version "2.16.0"

\include "bb_2_3_header.ly"
\include "bb_2_3_parts.ly"

\score {
  \new StaffGroup \keepWithTag #'vla \part_duetto_iii
  \header {
    piece = "Duetto III"
  }
  \layout { }
}
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'vla \part_rondo
  \header {
    piece = "Rondo"
  }
  \layout { }
}
