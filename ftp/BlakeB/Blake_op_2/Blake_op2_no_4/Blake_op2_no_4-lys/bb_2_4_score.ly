\version "2.16.0"

\include "bb_2_4_header.ly"
\include "bb_2_4_parts.ly"

% Full score production
% This is done in two parts to achieve a PDF with both Minuetto and
% Duetto, followed by a midi section that will create a midi file for
% each piece.

%
% Score layout, no MIDI
%

\score {
  \new StaffGroup \keepWithTag #'score \part_duetto_iv
  \header {
    piece = "Duetto IV"
  }
  \layout { }
}
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'score \part_rondo
  \header {
    piece = "Rondo"
  }
  \layout { }
}

%
% Score MIDI only
%

\book {
  \bookOutputSuffix "Duetto-IV"
  \score {
    \new StaffGroup \keepWithTag #'score \part_duetto_iv
    \midi {
      \tempo 4 = 110
    }
  }
}
\book {
  \bookOutputSuffix "Rondo"
  \score {
    \new StaffGroup \keepWithTag #'score \part_rondo
    \midi { 
      \tempo 4 = 80
    }
  }
}
