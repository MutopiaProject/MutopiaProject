\version "2.18.2"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

\header {
    instrument = "Viola"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/viola.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "viola"
    <<
      \barlines
      \theViolas
    >>
  }
}

mvmt = "mvmt2"
\include #(string-append basedir mvmt "/viola.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "viola"
    <<
      \barlines
      \theViolas
    >>
  }
}

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/viola.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "viola"
    <<
      \barlines
      \theViolas
    >>
  }
}

