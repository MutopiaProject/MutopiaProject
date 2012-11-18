\version "2.16.0"
\layout {
%{	%\layoutSixteen

	% Fine for my a4 laserprinter:
	%textheight = 285.0\mm
	%line-width = 190.0\mm

	% Mandatory Mutopia settings:
	textheight = 270.0\mm
	line-width = 180.0\mm

	\context {
		\Voice
		\consists "Rest_engraver"
	}
	\context {
		\Voice
		\remove "Rest_engraver"

		% The staff combine (bassi part needs) a
		% thread_devnull_engraver here.
		% Instead of maintaining two separate hierarchies,
		% we switch add it, but switch it off immediately.
		% --> move to Score level to be able to override
		% The staff combine part switches it on.
		
		%% devNullVoice = #'never
		\consists "Voice_devnull_engraver"
	}
	% We need the HaraKiri staff for Staff Combining,
	% but we better remove the Instrument_name_engraver.
	\context {
		\Staff \RemoveEmptyStaves
		\consists "Mark_engraver"
		\remove "Instrument_name_engraver"
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
	\context  {
		\Score
		skipBars = ##t 
	}
	\context {
		\Staff
		\override InstrumentName #'stencil = ##f
	}
}
