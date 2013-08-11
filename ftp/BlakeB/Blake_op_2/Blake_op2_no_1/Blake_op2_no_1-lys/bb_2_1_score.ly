\version "2.16.0"

\include "bb_2_1_header.ly"
\include "bb_2_1_parts.ly"

% Full score production
% This is done in two parts to achieve a PDF with both Minuetto and
% Duetto, followed by a midi section that will create a midi file for
% each piece.

%
% Score layout, no MIDI
%
\score {
  \new StaffGroup \keepWithTag #'score \part_duetto_i
  \header {
    piece = "Duetto I"
    meter = "Allegro Moderato"
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
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'score \part_minore
  \header {
    piece = "Minore"
  }
  \layout { }
}

%
% MIDI only, output to separate files
%
\book {
  \bookOutputSuffix "Duetto-I"
  \score {
    \new StaffGroup \keepWithTag #'score \part_duetto_i
    \midi { }
  }
}
\book {
  \bookOutputSuffix "Rondo"
  \score {
    \new StaffGroup \keepWithTag #'score \part_rondo
    \midi { }
  }
}
\book {
  \bookOutputSuffix "Minore"
  \score {
    \new StaffGroup \keepWithTag #'score \part_minore
    \midi { }
  }
}
