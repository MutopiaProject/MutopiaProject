\version "2.10.20"
\include "definitions.ly"
\include "notes.ly"

%#(set-global-staff-size 14)

\score {
	\keepWithTag #'ViolinoPiccoloPart \music
	\layout {}
	\midi {\context {
			\Score 
			tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
	}
}