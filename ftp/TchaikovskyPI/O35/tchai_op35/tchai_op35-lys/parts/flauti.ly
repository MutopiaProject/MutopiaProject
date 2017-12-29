\version "2.18.2"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

\header {
    instrument = "Flauti"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/flauti.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "flauti"
    <<
      \barlines
      \theFlutes
    >>
  }
}

mvmt = "mvmt2"
\include #(string-append basedir mvmt "/flauti.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "flauti"
    <<
      \barlines
      \theFlutes
    >>
  }
}

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/flauti.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "flauti"
    <<
      \barlines
      \theFlutes
    >>
  }
}

