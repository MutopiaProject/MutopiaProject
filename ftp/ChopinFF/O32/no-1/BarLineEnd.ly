%{
  Problems with the articulate function with grace notes, barchecks and
  explicit contexts.  On line 19, the barcheck will fail.

  Comment out any one of the lines with "this line" at the end and the
  problem disappears.
%}

\version "2.19.82"
\language "english"
\include "articulate.ly" % this line

rightHand = \relative {
  <<
    \context Voice = "1" { \voiceOne s4 ds''2.( }
    \context Voice = "2" { \voiceTwo s4 e,2. } % this line
  >> |
  \context Voice = "1" { \voiceOne \grace { ds'8) } } % this line
    \oneVoice ds4 e8. ds16 cs4 ds4 |
}

% this is just for diagnostics 
\score {
  \new Staff \rightHand 
}

\score {
  \articulate { % this line and its closing brace
    \new Staff \rightHand
  }
  \midi {
  }
}