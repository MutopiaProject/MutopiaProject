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
% part=solo
	% helps sonnet lines
	\override Score.PaperColumn #'keep-inside-line = ##t
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSpringOne
		\SonnetSpringOne
	>>
% end
>>
  \layout {
% part=solo
    \context {
	\Score
	\remove Mark_engraver 
    }
% end
  }
	\header { piece = "Allegro" }
}

\score {<<
	\set Score.skipBars = ##t
% part=solo
	\override Score.PaperColumn #'keep-inside-line = ##t
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSpringTwo
		\SonnetSpringTwo
	>>
% end
>>
	\layout {
		% seems to need both to make cello mmrest fill line
		ragged-last = ##f
		ragged-right = ##f
% part=solo
    \context {
	\Score
	\remove Mark_engraver 
    }
% end
	}
	\header { piece = "Largo" }
}

\score {<<
	\set Score.skipBars = ##t
% part=solo
	\override Score.PaperColumn #'keep-inside-line = ##t
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSpringThree
		\SonnetSpringThree
	>>
% end
>>
  \layout {
% part=solo
    \context {
	\Score
	\remove Mark_engraver 
    }
% end
  }
	\header { piece = "Danza Pastorale" }
}

