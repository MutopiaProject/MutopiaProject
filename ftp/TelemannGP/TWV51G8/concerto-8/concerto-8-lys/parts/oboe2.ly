\version "2.18.2"
\include "../util.ily"

\include "../ilys/oboe2.ily"

\header { instrument = "Oboe II" }


\paper {
  page-count = #2
}

\score {
  \oboeIIFirstMov
}
\score {
  \oboeIISecondMov
}

\score { \oboeIIThirdMov }
