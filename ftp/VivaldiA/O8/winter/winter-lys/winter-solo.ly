\version "2.12.3"
\include "winter1.ly"
\include "winter1a.ly"
\include "winter1b.ly"
\include "winter1c.ly"
\include "winter1d.ly"
\include "winter1f.ly"
\include "winter2.ly"
\include "winter2a.ly"
\include "winter2b.ly"
\include "winter2c.ly"
\include "winter2d.ly"
\include "winter2f.ly"
\include "winter3.ly"
\include "winter3a.ly"
\include "winter3b.ly"
\include "winter3c.ly"
\include "winter3d.ly"
\include "winter3f.ly"
\include "winter-sonnet.ly"
\include "winter-header.ly"



\score {<<
	\set Score.skipBars = ##t
	% doesn't change mark size?
	%\override Score.RehearsalMark   #'font-size = #10
% part=solo
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleWinterOne
		\SonnetWinterOne
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
	\header { piece = "Allegro non Molto" }
}

\score {<<
	\set Score.skipBars = ##t
% part=solo
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleWinterTwo
		\SonnetWinterTwo
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
		\ViolinoPrincipaleWinterThree
		\SonnetWinterThree
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
