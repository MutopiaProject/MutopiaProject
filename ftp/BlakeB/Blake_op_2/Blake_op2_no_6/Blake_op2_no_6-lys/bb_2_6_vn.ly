\version "2.16.0"

\include "bb_2_6_header.ly"
\include "bb_2_6_parts.ly"

\score {
  \new StaffGroup \keepWithTag #'vn \part_duetto_vi
  \header {
    piece = "Duetto VI"
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
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'vn \part_minore
  \header {
    piece = "Minore"
  }
  \layout { }
}
