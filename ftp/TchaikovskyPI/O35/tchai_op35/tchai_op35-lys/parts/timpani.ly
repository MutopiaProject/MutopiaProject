\version "2.18.2"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

\header {
    instrument = "Timpani in E/H"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/timpani.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "timpani"
    <<
      \barlines
      \theTimpani
    >>
  }
}

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/timpani.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "timpani"
    <<
      \barlines
      \theTimpani
    >>
  }
}

