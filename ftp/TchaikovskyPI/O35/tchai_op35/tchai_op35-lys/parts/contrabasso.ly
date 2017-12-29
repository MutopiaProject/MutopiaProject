\version "2.18.2"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

\header {
  instrument = "Contrabasso"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/contrabasso.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "contrabasso"
    <<
      \barlines
      \theBass
    >>
  }
}

mvmt = "mvmt2"
\include #(string-append basedir mvmt "/contrabasso.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "contrabasso"
    <<
      \barlines
      \theBass
    >>
  }
}

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/contrabasso.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "contrabasso"
    <<
      \barlines
      \theBass
    >>
  }
}

