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
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassAutumnOne
		\VioloncelloAutumnOne
	>>
% end
>>
  \layout {
  }
	\header { piece = "Allegro" }
}

\score {<<
	\set Score.skipBars = ##t
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassAutumnTwo
		\VioloncelloAutumnTwo
	>>
% end
>>
  \layout {
  }
	\header { piece = "Adagio Molto" }
}

\score {<<
	\set Score.skipBars = ##t
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassAutumnThree
		\VioloncelloAutumnThree
	>>
% end
>>
  \layout {
  }
	\header { piece = "Allegro" }
}

