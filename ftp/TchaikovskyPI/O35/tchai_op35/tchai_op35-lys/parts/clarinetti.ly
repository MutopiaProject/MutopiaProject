\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "../header.ily"

\header {
  instrument = "Clarinetti (A)"
}

basedir = "../"
mvmt = "mvmt1"
\include #(string-append basedir mvmt "/clarinettiA.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "clarinetti"
    <<
      \barlines
      \theClarinets
    >>
  }
}

mvmt = "mvmt2"
\include #(string-append basedir mvmt "/clarinettiB.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \header {
    instrument = \markup { "Clarinetti (B" \flat ")" }
  }
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "clarinetti"
    <<
      \barlines
      \theClarinets
    >>
  }
}

mvmt = "mvmt3"
\include #(string-append basedir mvmt "/clarinettiA.ily")
\include #(string-append basedir mvmt "/global.ily")

\bookpart {
  \include #(string-append basedir mvmt "/header.ily")
  \score {
  \context Staff = "clarinetti"
    <<
      \barlines
      \theClarinets
    >>
  }
}

