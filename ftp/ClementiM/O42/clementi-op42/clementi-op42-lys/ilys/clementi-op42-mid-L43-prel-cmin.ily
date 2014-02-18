\version "2.16.1"
\include "clementi-op42-mus-L43-prel-cmin.ily"

% LESSON XLIII: Prelude in C minor

\book {   \bookOutputName "clementi-op42-les43-prel-cmin"
  \score {
	\new PianoStaff <<
		\new Staff = "upper"
		<<
			\new Voice = "ufirst" 
			{ \voiceOne \global \LessonXLIIIUpperPrelvoiceOne }
			\new Voice = "usecond"
			{ \voiceTwo \global \LessonXLIIIUpperPrelvoiceTwo }
		>>
		\new Staff = "lower"
		<<
			\new Voice = "lfirst" 
			{ \voiceOne \global \LessonXLIIILowerPrelvoiceOne }
			\new Voice = "lsecond"
			{ \voiceTwo \global \LessonXLIIILowerPrelvoiceTwo }
		>>
	 >>
	\midi { }
  }
}
