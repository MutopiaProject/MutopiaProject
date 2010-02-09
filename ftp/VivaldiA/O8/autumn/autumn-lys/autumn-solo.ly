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
% part=solo
	\override Score.PaperColumn #'keep-inside-line = ##t
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleAutumnOne
		\SonnetAutumnOne
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
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleAutumnTwo
		\SonnetAutumnTwo
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
	\header { piece = "Adagio Molto" }
}

\score {<<
	\set Score.skipBars = ##t
% part=solo
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleAutumnThree
		\SonnetAutumnThree
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

