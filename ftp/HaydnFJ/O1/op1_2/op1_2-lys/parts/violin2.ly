\version "2.18.2"
\language "deutsch"

\paper {
  ragged-last-bottom = ##f
}

\include "../header.ily"
\header {
  subtitle = \markup { \abs-fontsize #14 "Violin II" }
}

breakVoice = { \break }

\include "../defs.ily"
\include "../vl_ii_a.ily"
\include "../vl_ii_b.ily"
\include "../vl_ii_c.ily"
\include "../vl_ii_d.ily"
\include "../vl_ii_e.ily"

\score {
  \ViolinII_a
  \header {
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #3 { "I." } } } }
  }
  \layout { indent = 10 \mm }
}

\score {
  \ViolinII_b
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #3 { "II. Menuetto" } } } }
  }
  \layout { indent = 10 \mm }
}

\pageBreak

\score {
  \ViolinII_c
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #2 { "III." } } } }
  }
  \layout { indent = 10 \mm }
}

\pageBreak

\score {
  \ViolinII_d
  \header {
    opus = " "
piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #3 { "IV. Menuetto" } } } }
  }
  \layout { indent = 10 \mm }
}

\score {
  \ViolinII_e
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #1 { "V." } } } }
  }
  \layout { indent = 10 \mm }
}