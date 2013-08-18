\version "2.16.0"

\include "bb_2_4_header.ly"
\include "bb_2_4_parts.ly"

\score {
  \new StaffGroup \keepWithTag #'vn \part_duetto_iv
  \header {
    piece = "Duetto IV"
  }
  \layout { }
}
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'vn \part_rondo
  \header {
    piece = "Rondo"
  }
  \layout { }
}
