\version "1.5.63"

\paper { 

\translator  {
		\OrchestralScoreContext

		TimeSignature \override #'style = #'C
		BarNumber \override #'padding = #3
		RestCollision \override #'maximum-rest-count = #1
	}
}
