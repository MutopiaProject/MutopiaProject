\version "1.7.13"
\include "summer1.ly"
\include "summer1a.ly"
\include "summer1b.ly"
\include "summer1c.ly"
\include "summer1d.ly"
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
\include "summer-sonnet.ly"
\include "summer-header.ly"

\score {<
	\property Score.skipBars = ##t
% part=solo
	\context Staff = solo <
		\property Staff.instrument = \markup { \column << "Violino" "Principale" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSummerOne
		\SonnetSummerOne
	>
% end
% part=1violin
	\context Staff = violin1 <
		\ViolinoPrimoSummerOne
		\property Staff.instrument = \markup { \column << "Violino" "Primo" >> }
		\property Staff.midiInstrument = "violin"
	>
% end
% part=2violin
	\context Staff = violin2 <
		\property Staff.instrument = \markup { \column << "Violino" "Secondo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerOne
	>
% end
% part=viola
	\context Staff = viola <
		\property Staff.instrument = \markup { \column << "Alto" "Viola" >> }
		\property Staff.midiInstrument = "viola"
		\AltoViolaSummerOne
	>
% end
% part=cello
	\context Staff = cello <
		\property Staff.instrument = \markup { \column << "Organo e" "Violoncello" >> }
		\property Staff.midiInstrument = "cello"
		\VioloncelloSummerOne
	>
% end
>
% part=x
	\midi { \tempo 8 = 150 }
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
		\ViolinoPrincipaleSummerTwo
		\SonnetSummerTwo
	>
% end
% part=1violin
	\context Staff = violin1 <
		\property Staff.instrument = \markup { \column << "Violino" "Primo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrimoSummerTwo
	>
% end
% part=2violin
	\context Staff = violin2 <
		\property Staff.instrument = \markup { \column << "Violino" "Secondo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerTwo
	>
% end
% part=viola
	\context Staff = viola <
		\property Staff.instrument = \markup { \column << "Alto" "Viola" >> }
		\property Staff.midiInstrument = "viola"
		\AltoViolaSummerTwo
	>
% end
% part=cello
	\context Staff = cello <
		\property Staff.instrument = \markup { \column << "Organo e" "Violoncello" >> }
		\property Staff.midiInstrument = "cello"
		\VioloncelloSummerTwo
	>
% end
>
% part=x
	\midi { \tempo 4 = 45 }
% end
	\paper {}
	\header { piece = "Adagio" }
}

\score {<
	\property Score.skipBars = ##t
% part=solo
	\context Staff = solo <
		\property Staff.instrument = \markup { \column << "Violino" "Principale" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSummerThree
		\SonnetSummerThree
	>
% end
% part=1violin
	\context Staff = violin1 <
		\property Staff.instrument = \markup { \column << "Violino" "Primo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoPrimoSummerThree
	>
% end
% part=2violin
	\context Staff = violin2 <
		\property Staff.instrument = \markup { \column << "Violino" "Secondo" >> }
		\property Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerThree
	>
% end
% part=viola
	\context Staff = viola <
		\property Staff.instrument = \markup { \column << "Alto" "Viola" >> }
		\property Staff.midiInstrument = "viola"
		\AltoViolaSummerThree
	>
% end
% part=cello
	\context Staff = cello <
		\property Staff.instrument = \markup { \column << "Organo e" "Violoncello" >> }
		\property Staff.midiInstrument = "cello"
		\VioloncelloSummerThree
	>
% end
>
% part=x
	\midi { \tempo 4 = 150 }
% end
	\paper {}
	\header { piece = "Presto" }
}

