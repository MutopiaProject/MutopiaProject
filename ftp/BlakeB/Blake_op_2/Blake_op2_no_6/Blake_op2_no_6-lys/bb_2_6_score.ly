\version "2.16.0"

\include "bb_2_6_header.ly"
\include "bb_2_6_parts.ly"

% Full score production
% This is done in two parts to achieve a PDF with both Minuetto and
% Duetto, followed by a midi section that will create a midi file for
% each piece.

%
% Score layout, no MIDI
%

\score {
  \new StaffGroup \keepWithTag #'score \part_duetto_vi
  \header {
    piece = "Duetto VI"
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
% Score MIDI only
% Removing the dynamic performer from the voice context is a weak
% solution to fixing warnings from ambiguous (de)crescendi. I could
% see nothing wrong with the crescendo in question. -gl
%

\book {
  \bookOutputSuffix "Duetto-VI"
  \score {
    \new StaffGroup \keepWithTag #'score \part_duetto_vi
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
      \tempo 4 = 70
    }
  }
}
\book {
  \bookOutputSuffix "Minore"
  \score {
    \new StaffGroup \keepWithTag #'score \part_minore
    \midi {
      \tempo 4 = 60
    }
  }
}
