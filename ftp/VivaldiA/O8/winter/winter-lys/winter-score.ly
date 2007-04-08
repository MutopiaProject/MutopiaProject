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
% part=solo
	\context Staff = solo <
		\property Staff.instrument = \markup { \column << "Violino" "Principale" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrincipaleWinterOne
		\SonnetWinterOne
	>
% end
% part=1violin
	\context Staff = violin1 <
		\property Staff.instrument = \markup { \column << "Violino" "Primo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrimoWinterOne
	>
% end
% part=2violin
	\context Staff = violin2 <
		\property Staff.instrument = \markup { \column << "Violino" "Secondo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoSecondoWinterOne
	>
% end
% part=viola
	\context Staff = viola <
		\property Staff.instrument = \markup { \column << "Alto" "Viola" >> }
		\property Staff.midiInstrument = "viola"
		\AltoViolaWinterOne
	>
% end
% part=cello
	\context Staff = cello <
		\property Staff.instrument = \markup { \column << "Organo e" "Violoncello" >> }
		\property Staff.midiInstrument = "cello"
		\VioloncelloWinterOne
	>
% end
>
% part=x
	\midi { \tempo 4 = 140 }
% end
	\paper {}
	\header { piece = "Allegro non Molto" }
}

\score {<
	\property Score.skipBars = ##t
% part=solo
	\context Staff = solo <
		\property Staff.instrument = \markup { \column << "Violino" "Principale" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrincipaleWinterTwo
		\SonnetWinterTwo
	>
% end
% part=1violin
	\context Staff = violin1 <
		\property Staff.instrument = \markup { \column << "Violino" "Primo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrimoWinterTwo
	>
% end
% part=2violin
	\context Staff = violin2<
		\property Staff.instrument = \markup { \column << "Violino" "Secondo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoSecondoWinterTwo
	>
% end
% part=viola
	\context Staff = viola <
		\property Staff.instrument = \markup { \column << "Alto" "Viola" >> }
		\property Staff.midiInstrument = "viola"
		\AltoViolaWinterTwo
	>
% end
% part=cello
	\context Staff = cello <
		\property Staff.instrument = \markup { \column << "Violino" "Principale" >> }
		\property Staff.midiInstrument = "violin"
		\VioloncelloWinterTwo
	>
% end
>
% part=x
	\midi { \tempo 4 = 46 }
% end
	\paper {}
	\header { piece = "Largo" }
}

\score {<
	\property Score.skipBars = ##t
% part=solo
	\context Staff = solo <
		\property Staff.instrument = \markup { \column << "Violino" "Principale" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrincipaleWinterThree
		\SonnetWinterThree
	>
% end
% part=1violin
	\context Staff = violin1 <
		\property Staff.instrument = \markup { \column << "Violino" "Primo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrimoWinterThree
	>
% end
% part=2violin
	\context Staff = violin2 <
		\property Staff.instrument = \markup { \column << "Violino" "Secondo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoSecondoWinterThree
	>
% end
% part=viola
	\context Staff = viola <
		\property Staff.instrument = \markup { \column << "Alto" "Viola" >> }
		\property Staff.midiInstrument = "viola"
		\AltoViolaWinterThree
	>
% end
% part=cello
	\context Staff = cello <
		\property Staff.instrument = \markup { \column << "Violino" "Principale" >> }
		\property Staff.midiInstrument = "violin"
		\VioloncelloWinterThree
	>
% end
>
% part=x
	\midi { \tempo 8 = 150 }
% end
	\paper {}
	\header { piece = "Allegro" }
}
