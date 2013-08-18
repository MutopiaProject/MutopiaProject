\version "2.16.0"

\include "bb_2_3_header.ly"

\paper {
  markup-system-spacing #'padding = #4
  top-margin = 12
  bottom-margin = 12
}

% Since Blake didn't use hairpins, force text dynamics
\layout {
  \context Voice {
    \override DynamicTextSpanner #'style = #'none
    \crescTextCresc
    \dimTextDecresc
    \dimTextDim
  }
}

\include "bb_2_3_parts.ly"

% Full score production
% This is done in two parts to achieve a PDF with both Minuetto and
% Duetto, followed by a midi section that will create a midi file for
% each piece.

%
% Score layout, no MIDI
%

\score {
  \new StaffGroup \keepWithTag #'score \part_duetto_iii
  \header {
    piece = "Duetto III"
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
  \bookOutputSuffix "Duetto-III"
  \score {
    \new StaffGroup \keepWithTag #'score \part_duetto_iii
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
