\version "2.18.2"
\include "../util.ily"

\include "../ilys/cembalo.ily"

\header { instrument = "Cembalo" }

\paper {
  page-count = #2
}

\score {
  \cembaloFirstMov
}

\score { \cembaloSecondMov }

\score { \cembaloThirdMov }
