\version "2.18.2"
\language "deutsch"

\paper {
  ragged-last-bottom = ##t
}

\include "../header.ily"
\header {
  subtitle = \markup { \abs-fontsize #14 "Violin I" }
}

breakVoice = { \break }

\include "../defs.ily"
\include "../vl_i_a.ily"
\include "../vl_i_b.ily"
\include "../vl_i_c.ily"
\include "../vl_i_d.ily"
\include "../vl_i_e.ily"

\score {
  \ViolinI_a
  \header {
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #1 { "I." } } } }
  }
  \layout { indent = 10 \mm }
}

\score {
  \ViolinI_b
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #3 { "II. Menuetto" } } } }
  }
  \layout { indent = 10 \mm }
}

\pageBreak

\score {
  \ViolinI_c
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #2 { "III." } } } }
  }
  \layout { indent = 10 \mm }
}

\score {
  \ViolinI_d
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #3 { "IV. Menuetto" } } } }
  }
  \layout { indent = 10 \mm }
}

\pageBreak

\score {
  \ViolinI_e
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #2 { "V." } } } }
  }
  \layout { indent = 10 \mm }
}