\version "2.16.0"
\layout {
%{	% Mandatory Mutopia settings:
	textheight = 270.0\mm
	line-width = 180.0\mm

	\context {
		\Staff \RemoveEmptyStaves
		\consists "Mark_engraver"
	}
	\context  {
		\Score
		skipBars = ##t 

		soloText = #"I."
		soloIIText = #"II."
		devNullVoice = #'never
		
	 \override TimeSignature #'style = #'C
	 \override BarNumber #'padding = #3
	 \override RestCollision #'maximum-rest-count = #1
	}
%}
}
