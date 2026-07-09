\version "2.24.3"
\pageBreak
\markuplist \table-of-contents
\pageBreak

\include "titles.ily"
\include "facsimile-front-matter.ily"
\include "facsimile-definitions.ily"

subsubtitleMarkup = \markup \center-column {
  \line {
    \italic { Fagotti Secundo }
    \line { }
  }
}  



\include "duet1/FacsimilePlayer2.ily"
\include "duet2/FacsimilePlayer2.ily"
\include "duet3/FacsimilePlayer2.ily"
\include "duet4/FacsimilePlayer2.ily"
\include "duet5/FacsimilePlayer2.ily"
\include "duet6/FacsimilePlayer2.ily"

\duetOne
\duetTwo
\duetThree
\duetFour
\duetFive
\duetSix

\include "facsimile-notes.ily"