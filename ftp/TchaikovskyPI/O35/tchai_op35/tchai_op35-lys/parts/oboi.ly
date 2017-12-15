\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

\header {
    instrument = "Oboi"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/oboi.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "oboi"
    <<
      \barlines
      \theOboes
    >>
  }
}

mvmt = "mvmt2"
\include #(string-append basedir mvmt "/oboi.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "oboi"
    <<
      \barlines
      \theOboes
    >>
  }
}

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/oboi.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "oboi"
    <<
      \barlines
      \theOboes
    >>
  }
}

