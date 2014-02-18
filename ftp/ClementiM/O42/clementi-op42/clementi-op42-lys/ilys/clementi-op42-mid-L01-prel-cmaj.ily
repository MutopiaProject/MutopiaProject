\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L01-prel-cmaj.ily"

\book {
  \bookOutputName "clementi-op42-les01-prel-cmaj"
  \score {
   	   %LESSON I PRELUDE 
		  \new PianoStaff <<
		    \new Staff = "upper" \LessonIPreludeupper
		    \new Staff = "lower" \LessonIPreludelower
		  >>
	  \midi { }
  }
}

