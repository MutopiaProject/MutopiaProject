\version "1.6.0"

\paper { 

	indent = 20.\mm

\translator  {
		\OrchestralScoreContext

		soloText = #"I."
		soloIIText = #"II."

		BarNumber \override #'padding = #3
		RestCollision \override #'maximum-rest-count = #1
	}
}
