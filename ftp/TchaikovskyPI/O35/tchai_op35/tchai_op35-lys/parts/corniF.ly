\version "2.18.2"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

\header {
    instrument = "Corni I/II in F"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/corniF.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "corni"
    <<
      \barlines
      \theHornsfirst
    >>
  }
}

mvmt = "mvmt2"
\include #(string-append basedir mvmt "/corniF.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "corni"
    <<
      \barlines
      \theHorns
    >>
  }
}

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/corniF.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "corni"
    <<
      \barlines
      \theHornsfirst
    >>
  }
}

