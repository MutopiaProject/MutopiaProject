\version "2.16.1"
\include "clementi-op42-mus-L43-scarlatti.ily"

% LESSON XLIII: Minuet by Scarlatti

\score {
	\new PianoStaff <<
		\new Staff = "upper"
		<<
			\new Voice = "ufirst" 
			{ \voiceOne \global \LessonXLIIIUpperVoiceOne }
		>>
		\new Staff = "lower"
		<<
			\new Voice = "lfirst" 
			{ \voiceOne \global \LessonXLIIILowerVoiceOne }
			\new Voice = "lsecond"
			{ \voiceTwo \global \LessonXLIIILowerVoiceTwo }
		>>
	 >>
	\layout { }
}
