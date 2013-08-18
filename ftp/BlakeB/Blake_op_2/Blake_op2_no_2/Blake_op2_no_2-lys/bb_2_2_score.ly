\version "2.16.0"

\include "bb_2_2_header.ly"
\include "bb_2_2_parts.ly"

% Full score production
% This is done in two parts to achieve a PDF with both Minuetto and
% Duetto, followed by a midi section that will create a midi file for
% each piece.

%
% Score layout, no MIDI
%

\score {
  \new StaffGroup \keepWithTag #'score \part_minuetto
  \header {
    piece = "Minuetto"
  }
  \layout { }
}
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'score \part_duetto_ii
  \header {
    piece = "Duetto II"
  }
  \layout { }
}

%
% Score MIDI only
%

\book {
  \bookOutputSuffix "Minuetto"
  \score {
    \new StaffGroup \keepWithTag #'score \part_minuetto
    \midi { }
  }
}
\pageBreak
\book {
  \bookOutputSuffix "Duetto-II"
  \score {
    \new StaffGroup \keepWithTag #'score \part_duetto_ii
    \midi { }
  }
}
