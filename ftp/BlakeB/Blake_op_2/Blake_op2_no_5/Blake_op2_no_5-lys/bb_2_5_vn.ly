\version "2.16.0"

\include "bb_2_5_header.ly"
\include "bb_2_5_parts.ly"

\score {
  \new StaffGroup \keepWithTag #'vn \part_duetto_v
  \header {
    piece = "Duetto V"
  }
  \layout { }
}
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'vn \part_minuetto
  \header {
    piece = "Minuetto"
  }
  \layout { }
}
