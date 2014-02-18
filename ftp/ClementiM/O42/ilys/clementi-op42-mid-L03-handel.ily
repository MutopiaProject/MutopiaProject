
%LESSON III. Air del'Opera Atalante de HANDEL

\version "2.16.1"

\include "definitions.ily"
\include "articulate.ly"
\include "clementi-op42-mus-L03-handel.ily"

\book {
 \bookOutputName "clementi-op42-les03-handel-air"
 \score { % LESSON III (MIDI)
   \unfoldRepeats \articulate
   \new PianoStaff <<
     \new Staff = "upper" \LessonIIIUpper
     \new Staff = "lower" \LessonIIILower
   >>
   \midi { }	
  }
}
