\version "2.10.20"
\include "piece.ly"
\include "cornoOneNotes.ly"
\include "cornoTwoNotes.ly"
\include "oboeOneNotes.ly"
\include "oboeTwoNotes.ly"
\include "oboeThreeNotes.ly"
\include "fagottoNotes.ly"
\include "violinoPiccoloNotes.ly"
\include "violinoOneNotes.ly"
\include "violinoTwoNotes.ly"
\include "violaNotes.ly"
\include "violoncelloNotes.ly"
\include "continuoNotes.ly"
global = {}

#(set-global-staff-size 14)

\score {
  \new StaffGroup \keepWithTag #'score \music
  \layout {
	indent = #16
  }
  \midi {
	\context {
		\Score 
		tempoWholesPerMinute = #(ly:make-moment 80 4)
	}
  }
}