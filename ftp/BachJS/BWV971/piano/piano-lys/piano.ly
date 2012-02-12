\version "2.14.2"

\include "defs.ily"
\include "outline.ily"
\include "piano.ily"

instrument = "Piano"

\include "header.ily"

\pageBreak \allowPageTurn

\score
{
  \new PianoStaff
  <<
    \new Staff=upper << \rightMvtI \outlineMvtI >>
    \new Staff=lower \leftMvtI
  >>
  \layout {}
  \midi {}
}

\score
{
  \new PianoStaff
  <<
    \new Staff=upper << \rightMvtII \outlineMvtII >>
    \new Staff=lower \leftMvtII
  >>
  \layout {}
  \midi {}
}

\score
{
  \new PianoStaff
  <<
    \new Staff=upper << \rightMvtIII \outlineMvtIII >>
    \new Staff=lower \leftMvtIII
  >>
  \layout {}
  \midi {}
}
