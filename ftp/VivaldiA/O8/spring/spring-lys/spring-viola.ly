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
% part=viola
	\context Staff = viola <
		\property Staff.instrument = \markup { \column << "Alto" "Viola" >> }
		\property Staff.midiInstrument = "viola"
		\AltoViolaSpringOne
	>
% end
>
	\paper {}
	\header { piece = "Allegro" }
}

\score {<
	\property Score.skipBars = ##t
% part=viola
	\context Staff = viola <
		\property Staff.instrument = \markup { \column << "Alto" "Viola" >> }
		\property Staff.midiInstrument = "viola"
		\AltoViolaSpringTwo
	>
% end
>
	\paper {}
	\header { piece = "Largo" }
}

\score {<
	\property Score.skipBars = ##t
% part=viola
	\context Staff = viola <
		\property Staff.instrument = \markup { \column << "Alto" "Viola" >> }
		\property Staff.midiInstrument = "viola"
		\AltoViolaSpringThree
	>
% end
>
	\paper {}
	\header { piece = "Danza Pastorale" }
}

