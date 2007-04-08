\version "1.3.120"
\paper {
	% Mandatory Mutopia settings:
	textheight = 270.0\mm;
	linewidth = 180.0\mm;

	\translator {
		\HaraKiriStaffContext
		\consists "Mark_engraver";
	}
	\translator  {
		\OrchestralScoreContext
		skipBars = ##t 

		soloText = #"I."
		soloIIText = #"II."
		devNullThread = #'never
		
		TimeSignature \override #'style = #'C
		BarNumber \override #'padding = #3
		RestCollision \override #'maximum-rest-count = #1
	}
}
