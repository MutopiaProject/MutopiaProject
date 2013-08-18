\version "2.16.0"

\include "bb_2_5_header.ly"
\include "bb_2_5_parts.ly"

% Full score production
% This is done in two parts to achieve a PDF with both Minuetto and
% Duetto, followed by a midi section that will create a midi file for
% each piece.

%
% Score layout, no MIDI
%

\score {
  \new StaffGroup \keepWithTag #'score \part_duetto_v
  \header {
    piece = "Duetto V"
  }
  \layout { }
}
\pageBreak
\score {
  \new StaffGroup \keepWithTag #'score \part_minuetto
  \header {
    piece = "Minuetto"
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
  \bookOutputSuffix "Duetto-V"
  \score {
    \new StaffGroup \keepWithTag #'score \part_duetto_v
    \midi {
      \tempo 4 = 110
      \context {
	\Voice
	\remove "Dynamic_performer"
      }
    }
  }
}
\book {
  \bookOutputSuffix "Minuetto"
  \score {
    \new StaffGroup \keepWithTag #'score \part_minuetto
    \midi {
      \tempo 4 = 80
      \context {
	\Voice
	\remove "Dynamic_performer"
      }
    }
  }
}
