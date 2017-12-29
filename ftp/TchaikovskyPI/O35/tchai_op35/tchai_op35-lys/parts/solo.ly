\version "2.18.2"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

#(ly:set-option 'relative-includes #t)

\header {
    instrument = "Violino Solo"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/solo.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "vs"
    <<
      \barlines
      \theSolo
    >>
  }
}

mvmt = "mvmt2"
\include #(string-append basedir mvmt "/solo.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "vs"
    <<
      \barlines
      \theSolo
    >>
  }
}

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/solo.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "vs"
    <<
      \barlines
      \theSolo
    >>
  }
}

