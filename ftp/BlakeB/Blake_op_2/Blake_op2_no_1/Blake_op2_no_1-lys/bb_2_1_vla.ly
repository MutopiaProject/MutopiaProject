\version "2.16.0"

% Viola parts for Blake Op2 no. 1

\include "bb_2_1_header.ly"
\include "bb_2_1_parts.ly"

\score {
  %\tempo "Allegro Moderato"
  \new GrandStaff \keepWithTag #'vla \part_duetto_i
  \header {
    piece = "Duetto I"
  }
  \layout { }
}
\pageBreak
\score {
  \new GrandStaff {
    \keepWithTag #'vla \part_rondo
  }
  \header {
    piece = "Rondo"
  }
  \layout { }
}
\pageBreak
\score {
  \new GrandStaff \keepWithTag #'vla \part_minore
  \header {
    piece = "Minore"
  }
  \layout { }
}
