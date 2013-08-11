\version "2.16.0"

\include "bb_2_4_header.ly"
\include "bb_2_4_parts.ly"

\score {
  \new StaffGroup \keepWithTag #'vla \part_duetto_iv
  \header {
    piece = "Duetto IV"
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
