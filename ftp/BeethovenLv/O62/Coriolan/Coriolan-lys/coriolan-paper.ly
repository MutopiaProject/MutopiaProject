\version "2.16.0"

\paper {
	% Fine for my a4 laserprinter:
	%textheight = 285.0\mm
	%line-width = 190.0\mm
}

\layout {
	indent = 20.\mm
	short-indent = 6.\mm

	\context {
		\Staff \RemoveEmptyStaves
	}
	\context  {
		\Score

		soloText = #"I."
		soloIIText = #"II."
	}
}
