\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L37-handel.ily"

% LESSON XXXVII. Minuet in Ariadne, by Handel.

\book {   \bookOutputName "clementi-op42-les37-handel-minuet"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff <<
		\set PianoStaff.connectArpeggios = ##t
		\new Staff = "upper" {	\LessonXXXVIIUpperA
					\LessonXXXVIIUpperB
					\LessonXXXVIIUpperASegnoToFine}
		\new Staff = "lower"{	\LessonXXXVIILowerA
					\LessonXXXVIILowerB
					\LessonXXXVIILowerASegnoToFine}
	  >>
	  \midi { }
  }
}
