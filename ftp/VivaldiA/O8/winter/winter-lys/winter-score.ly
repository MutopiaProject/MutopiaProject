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


% part=x
%% score-only settings
	#(set-global-staff-size 18)  % or bigger paper for score?
\paper {
	ragged-bottom = ##t
}
% end

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
% part=1violin
	\context Staff = "violinone" <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoWinterOne
	>>
% end
% part=2violin
	\context Staff = "violintwo" <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoWinterOne
	>>
% end
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaWinterOne
	>>
% end
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassWinterOne
		\VioloncelloWinterOne
	>>
% end
>>
% part=x
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 140 4)
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
		\ViolinoPrincipaleWinterTwo
		\SonnetWinterTwo
	>>
% end
% part=1violin
	\context Staff = "violinone" <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoWinterTwo
	>>
% end
% part=2violin
	\context Staff = violintwo<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoWinterTwo
	>>
% end
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaWinterTwo
	>>
% end
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassWinterTwo
		\VioloncelloWinterTwo
	>>
% end
>>
% part=x
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 46 4)
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
% part=1violin
	\context Staff = "violinone" <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoWinterThree
	>>
% end
% part=2violin
	\context Staff = "violintwo" <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoWinterThree
	>>
% end
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaWinterThree
	>>
% end
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassWinterThree
		\VioloncelloWinterThree
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
	\header { piece = "Allegro" }
}
