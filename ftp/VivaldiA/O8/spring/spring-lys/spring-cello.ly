\version "2.12.3"
\include "spring1.ly"
\include "spring1a.ly"
\include "spring1b.ly"
\include "spring1c.ly"
\include "spring1d.ly"
\include "spring1f.ly"
\include "spring2.ly"
\include "spring2a.ly"
\include "spring2b.ly"
\include "spring2c.ly"
\include "spring2d.ly"
\include "spring3.ly"
\include "spring3a.ly"
\include "spring3b.ly"
\include "spring3c.ly"
\include "spring3d.ly"
\include "spring3f.ly"
\include "spring-sonnet.ly"
\include "spring-header.ly"


\score {<<
	\set Score.skipBars = ##t
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassSpringOne
		\VioloncelloSpringOne
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
		\VioloncelloSpringTwo
	>>
% end
>>
	\layout {
		% seems to need both to make cello mmrest fill line
		ragged-last = ##f
		ragged-right = ##f
	}
	\header { piece = "Largo" }
}

\score {<<
	\set Score.skipBars = ##t
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassSpringThree
		\VioloncelloSpringThree
	>>
% end
>>
  \layout {
  }
	\header { piece = "Danza Pastorale" }
}

