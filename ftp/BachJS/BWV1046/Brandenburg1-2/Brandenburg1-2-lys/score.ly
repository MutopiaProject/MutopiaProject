\version "2.10.20"
\include "definitions.ly"
\include "notes.ly"
#(set-global-staff-size 13)
\score {
	\new StaffGroup \keepWithTag #'score \music
	\layout {}
	\midi {\context {
			\Score 
			tempoWholesPerMinute = #(ly:make-moment 30 4)
		}
	}
}