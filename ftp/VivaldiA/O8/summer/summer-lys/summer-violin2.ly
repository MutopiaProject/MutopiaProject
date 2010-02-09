\version "2.12.3"
\include "summer1.ly"
\include "summer1a.ly"
\include "summer1b.ly"
\include "summer1c.ly"
\include "summer1d.ly"
\include "summer1f.ly"
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
\include "summer3f.ly"
\include "summer-sonnet.ly"
\include "summer-header.ly"


\score {<<
	\set Score.skipBars = ##t
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerOne
	>>
% end
>>
  \layout {
  }

	\header { piece = "Allegro non Molto" }
}

\score {<<
	\set Score.skipBars = ##t
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerTwo
	>>
% end
>>
  \layout {
  }
	\header { piece = "Adagio" }
}

\score {<<
	\set Score.skipBars = ##t
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerThree
	>>
% end
>>
  \layout {
  }
	\header { piece = "Presto" }
}

