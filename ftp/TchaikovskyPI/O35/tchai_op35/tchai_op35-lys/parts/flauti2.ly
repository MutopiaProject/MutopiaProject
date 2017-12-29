\version "2.18.2"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

\header {
    instrument = "Flauti II"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/flauti2.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "flauti2"
    <<
      \barlines
      \theFlutessecond
    >>
  }
}

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/flauti2.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "flauti2"
    <<
      \barlines
      \theFlutessecond
    >>
  }
}

