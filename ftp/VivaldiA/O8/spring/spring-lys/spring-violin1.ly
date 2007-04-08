\version "1.7.13"
\include "spring1.ly"
\include "spring1a.ly"
\include "spring1b.ly"
\include "spring1c.ly"
\include "spring1d.ly"
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
\include "spring-sonnet.ly"
\include "spring-header.ly"

\score {<
	\property Score.skipBars = ##t
% part=1violin
	\context Staff = violin1 <
		\property Staff.instrument = \markup { \column << "Violino" "Primo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrimoSpringOne
	>
% end
>
	\paper {}
	\header { piece = "Allegro" }
}

\score {<
	\property Score.skipBars = ##t
% part=1violin
	\context Staff = violin1 <
		\ViolinoPrimoSpringTwo
		\property Staff.instrument = \markup { \column << "Violino" "Primo" >> }
		\property Staff.midiInstrument = "violin"
	>
% end
>
	\paper {}
	\header { piece = "Largo" }
}

\score {<
	\property Score.skipBars = ##t
% part=1violin
	\context Staff = violin1 <
		\property Staff.instrument = \markup { \column << "Violino" "Primo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrimoSpringThree
	>
% end
>
	\paper {}
	\header { piece = "Danza Pastorale" }
}

