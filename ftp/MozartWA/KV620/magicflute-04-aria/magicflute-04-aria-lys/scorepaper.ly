\version "1.5.66"

\paper { 
	\paperSixteen

	indent = 20.\mm

\translator  {
		\OrchestralScoreContext

		soloText = #"I."
		soloIIText = #"II."

		BarNumber \override #'padding = #3
		RestCollision \override #'maximum-rest-count = #1
	}
}
