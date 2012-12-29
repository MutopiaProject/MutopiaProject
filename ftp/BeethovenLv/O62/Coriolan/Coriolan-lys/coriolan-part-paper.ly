\version "2.16.0"

\paper {
	% Fine for my a4 laserprinter:
	%textheight = 285.0\mm
	%line-width = 190.0\mm

}

\layout {
	indent = 20.0\mm
	short-indent = 6.0\mm

	\context  {
		\Score
		skipBars = ##t 

		soloText = #"I."
		soloIIText = #"II."
	}
}
