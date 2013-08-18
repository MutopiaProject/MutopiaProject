\version "2.16.0"

\include "bb_2_2_header.ly"
\include "bb_2_2_parts.ly"

\score {
  \new StaffGroup \keepWithTag #'vla \part_minuetto
  \header {
    piece = "Minuetto"
  }
  \layout { }
}
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'vla \part_duetto_ii
  \header {
    piece = "Duetto II"
  }
  \layout { }
}
