\version "1.7.13"
\include "winter1.ly"
\include "winter1a.ly"
\include "winter1b.ly"
\include "winter1c.ly"
\include "winter1d.ly"
\include "winter2.ly"
\include "winter2a.ly"
\include "winter2b.ly"
\include "winter2c.ly"
\include "winter2d.ly"
\include "winter3.ly"
\include "winter3a.ly"
\include "winter3b.ly"
\include "winter3c.ly"
\include "winter3d.ly"
\include "winter-sonnet.ly"
\include "winter-header.ly"


\score {<
	\property Score.skipBars = ##t
	% doesn't change mark size?
	%\property Score.RehearsalMark \set #'font-relative-size = #+5
% part=2violin
	\context Staff = violin2 <
		\property Staff.instrument = \markup { \column << "Violino" "Secondo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoSecondoWinterOne
	>
% end
>
	\paper {}
	\header { piece = "Allegro non Molto" }
}

\score {<
	\property Score.skipBars = ##t
% part=2violin
	\context Staff = violin2<
		\property Staff.instrument = \markup { \column << "Violino" "Secondo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoSecondoWinterTwo
	>
% end
>
	\paper {}
	\header { piece = "Largo" }
}

\score {<
	\property Score.skipBars = ##t
% part=2violin
	\context Staff = violin2 <
		\property Staff.instrument = \markup { \column << "Violino" "Secondo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoSecondoWinterThree
	>
% end
>
	\paper {}
	\header { piece = "Allegro" }
}
