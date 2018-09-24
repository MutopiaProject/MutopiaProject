\version "2.18.2"
\include "../util.ily"

\include "../ilys/oboe1.ily"

\header { instrument = "Oboe I" }

\paper {
  page-count = #2
}

\score {
  \oboeIFirstMov
}

\score { \oboeISecondMov }

\score { \oboeIThirdMov }
