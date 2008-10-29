\version "2.10.20"
\include "definitions.ly"
\include "notes.ly"

\score {
	\keepWithTag #'ContinuoPart \music
	\layout {}
	\midi {\context {
			\Score 
			tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
	}
}