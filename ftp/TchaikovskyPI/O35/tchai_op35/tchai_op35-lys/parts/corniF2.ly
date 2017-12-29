\version "2.18.2"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

\header {
    instrument = "Corni III/IV in F"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/corniF2.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "corni2"
    <<
      \barlines
      \theHornssecond
    >>
  }
}

% tacet in second movement

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/corniF2.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "corni2"
    <<
      \barlines
      \theHornssecond
    >>
  }
}

