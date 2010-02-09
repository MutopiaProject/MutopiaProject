\version "2.12.3"
\include "autumn1.ly"
\include "autumn2.ly"
\include "autumn3.ly"
\include "autumn1a.ly"
\include "autumn2a.ly"
\include "autumn3a.ly"
\include "autumn1b.ly"
\include "autumn2b.ly"
\include "autumn3b.ly"
\include "autumn1c.ly"
\include "autumn2c.ly"
\include "autumn3c.ly"
\include "autumn1d.ly"
\include "autumn2d.ly"
\include "autumn3d.ly"
\include "autumn1f.ly"
\include "autumn2f.ly"
\include "autumn3f.ly"
\include "autumn-sonnet.ly"
\include "autumn-header.ly"



\score {<<
	\set Score.skipBars = ##t
% part=1violin
	\context Staff = violinone <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoAutumnOne
	>>
% end
>>
  \layout {
  }
	\header { piece = "Allegro" }
}

\score {<<
	\set Score.skipBars = ##t
% part=1violin
	\context Staff = violinone <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoAutumnTwo
	>>
% end
>>
  \layout {
  }
	\header { piece = "Adagio Molto" }
}

\score {<<
	\set Score.skipBars = ##t
% part=1violin
	\context Staff = violinone <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoAutumnThree
	>>
% end
>>
  \layout {
  }
	\header { piece = "Allegro" }
}

