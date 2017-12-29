\version "2.18.2"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

\header {
    instrument = "Fagotti"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/fagotti.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "fagotti"
    <<
      \barlines
      \theBassoons
    >>
  }
}

mvmt = "mvmt2"
\include #(string-append basedir mvmt "/fagotti.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "fagotti"
    <<
      \barlines
      \theBassoons
    >>
  }
}

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/fagotti.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "fagotti"
    <<
      \barlines
      \theBassoons
    >>
  }
}

