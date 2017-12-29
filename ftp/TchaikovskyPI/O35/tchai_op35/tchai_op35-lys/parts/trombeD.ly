\version "2.18.2"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

\header {
    instrument = "Trombe (D)"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/trombeD.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "trombe"
    <<
      \barlines
      \theTrumpets
    >>
  }
}

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/trombeD.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "trombe"
    <<
      \barlines
      \theTrumpets
    >>
  }
}

