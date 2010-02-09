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
% part=1violin
	\context Staff = violinone <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoSpringOne
	>>
% end
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSpringOne
	>>
% end
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaSpringOne
	>>
% end
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassSpringOne
		\VioloncelloSpringOne
	>>
% end
>>
% part=x
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 115 4)
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
% part=1violin
	\context Staff = violinone <<
		\ViolinoPrimoSpringTwo
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
	>>
% end
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSpringTwo
	>>
% end
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaSpringTwo
	>>
% end
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\VioloncelloSpringTwo
	>>
% end
>>
% part=x
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 50 4)
      }
    }


% end
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
% part=1violin
	\context Staff = violinone <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoSpringThree
	>>
% end
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSpringThree
	>>
% end
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaSpringThree
	>>
% end
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassSpringThree
		\VioloncelloSpringThree
	>>
% end
>>
% part=x
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 144 4)
      }
    }

 % actually 4. = 96
% end
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

