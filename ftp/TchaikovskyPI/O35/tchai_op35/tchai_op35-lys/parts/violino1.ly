\version "2.18.2"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

\header {
    instrument = "Violino I"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/violino1.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "violino1"
    <<
      \barlines
      \theFirstViolins
    >>
  }
}

mvmt = "mvmt2"
\include #(string-append basedir mvmt "/violino1.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "violino1"
    <<
      \barlines
      \theFirstViolins
    >>
  }
}

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/violino1.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "violino1"
    <<
      \barlines
      \theFirstViolins
    >>
  }
}

