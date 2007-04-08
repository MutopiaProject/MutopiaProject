\version "1.7.13"
\include "summer1.ly"
\include "summer1a.ly"
\include "summer1b.ly"
\include "summer1c.ly"
\include "summer1d.ly"
\include "summer2.ly"
\include "summer2a.ly"
\include "summer2b.ly"
\include "summer2c.ly"
\include "summer2d.ly"
\include "summer3.ly"
\include "summer3a.ly"
\include "summer3b.ly"
\include "summer3c.ly"
\include "summer3d.ly"
\include "summer-sonnet.ly"
\include "summer-header.ly"

\score {<
	\property Score.skipBars = ##t
% part=solo
	\context Staff = solo <
		\property Staff.instrument = \markup { \column << "Violino" "Principale" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSummerOne
		\SonnetSummerOne
	>
% end
>
	\paper {}
	\header { piece = "Allegro non Molto" }
}

\score {<
	\property Score.skipBars = ##t
% part=solo
	\context Staff = solo <
		\property Staff.instrument = \markup { \column << "Violino" "Principale" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSummerTwo
		\SonnetSummerTwo
	>
% end
>
	\paper {}
	\header { piece = "Adagio" }
}

\score {<
	\property Score.skipBars = ##t
% part=solo
	\context Staff = solo <
		\property Staff.instrument = \markup { \column << "Violino" "Principale" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSummerThree
		\SonnetSummerThree
	>
% end
>
	\paper {}
	\header { piece = "Presto" }
}

