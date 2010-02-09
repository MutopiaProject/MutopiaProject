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

% part=x
%% score-only settings
	#(set-global-staff-size 18)  % or bigger paper for score?
\paper {
	ragged-bottom = ##t
}
% end

\score {<<
	\set Score.skipBars = ##t
% part=solo
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSummerOne
		\SonnetSummerOne
	>>
% end
% part=1violin
	\context Staff = violinone <<
		\ViolinoPrimoSummerOne
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
	>>
% end
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerOne
	>>
% end
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaSummerOne
	>>
% end
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassSummerOne
		\VioloncelloSummerOne
	>>
% end
>>
% part=x
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 150 8)
      }
    }


% end
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
		\ViolinoPrincipaleSummerTwo
		\SonnetSummerTwo
	>>
% end
% part=1violin
	\context Staff = violinone <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoSummerTwo
	>>
% end
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerTwo
	>>
% end
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaSummerTwo
	>>
% end
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\VioloncelloSummerTwo
	>>
% end
>>
% part=x
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 45 4)
      }
    }


% end
  \layout {
% part=solo
    \context {
        \Score
        \remove Mark_engraver
    }
% end
  }
	\header { piece = "Adagio" }
}

\score {<<
	\set Score.skipBars = ##t
% part=solo
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSummerThree
		\SonnetSummerThree
	>>
% end
% part=1violin
	\context Staff = violinone <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoSummerThree
	>>
% end
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerThree
	>>
% end
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaSummerThree
	>>
% end
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassSummerThree
		\VioloncelloSummerThree
	>>
% end
>>
% part=x
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 150 4)
      }
    }


% end
  \layout {
% part=solo
    \context {
        \Score
        \remove Mark_engraver
    }
% end
  }
	\header { piece = "Presto" }
}

