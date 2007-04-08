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
% part=solo
	\context Staff = solo <
		\property Staff.instrument = \markup { \column << "Violino" "Principale" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSpringOne
		\SonnetSpringOne
	>
% end
% part=1violin
	\context Staff = violin1 <
		\property Staff.instrument = \markup { \column << "Violino" "Primo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrimoSpringOne
	>
% end
% part=2violin
	\context Staff = violin2 <
		\property Staff.instrument = \markup { \column << "Violino" "Secondo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoSecondoSpringOne
	>
% end
% part=viola
	\context Staff = viola <
		\property Staff.instrument = \markup { \column << "Alto" "Viola" >> }
		\property Staff.midiInstrument = "viola"
		\AltoViolaSpringOne
	>
% end
% part=cello
	\context Staff = cello <
		\property Staff.instrument = \markup { \column << "Organo e" "Violoncello" >> }
		\property Staff.midiInstrument = "cello"
		\VioloncelloSpringOne
	>
% end
>
% part=x
	\midi { \tempo 4 = 115 }
% end
	\paper {}
	\header { piece = "Allegro" }
}

\score {<
	\property Score.skipBars = ##t
% part=solo
	\context Staff = solo <
		\property Staff.instrument = \markup { \column << "Violino" "Principale" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSpringTwo
		\SonnetSpringTwo
	>
% end
% part=1violin
	\context Staff = violin1 <
		\ViolinoPrimoSpringTwo
		\property Staff.instrument = \markup { \column << "Violino" "Primo" >> }
		\property Staff.midiInstrument = "violin"
	>
% end
% part=2violin
	\context Staff = violin2 <
		\property Staff.instrument = \markup { \column << "Violino" "Secondo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoSecondoSpringTwo
	>
% end
% part=viola
	\context Staff = viola <
		\property Staff.instrument = \markup { \column << "Alto" "Viola" >> }
		\property Staff.midiInstrument = "viola"
		\AltoViolaSpringTwo
	>
% end
% part=cello
	\context Staff = cello <
		\property Staff.instrument = \markup { \column << "Organo e" "Violoncello" >> }
		\property Staff.midiInstrument = "cello"
		\VioloncelloSpringTwo
	>
% end
>
% part=x
	\midi { \tempo 4 = 50 }
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
		\ViolinoPrincipaleSpringThree
		\SonnetSpringThree
	>
% end
% part=1violin
	\context Staff = violin1 <
		\property Staff.instrument = \markup { \column << "Violino" "Primo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrimoSpringThree
	>
% end
% part=2violin
	\context Staff = violin2 <
		\property Staff.instrument = \markup { \column << "Violino" "Secondo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoSecondoSpringThree
	>
% end
% part=viola
	\context Staff = viola <
		\property Staff.instrument = \markup { \column << "Alto" "Viola" >> }
		\property Staff.midiInstrument = "viola"
		\AltoViolaSpringThree
	>
% end
% part=cello
	\context Staff = cello <
		\property Staff.instrument = \markup { \column << "Organo e" "Violoncello" >> }
		\property Staff.midiInstrument = "cello"
		\VioloncelloSpringThree
	>
% end
>
% part=x
	\midi { \tempo 4 = 144 } % actually 4. = 96
% end
	\paper {}
	\header { piece = "Danza Pastorale" }
}

