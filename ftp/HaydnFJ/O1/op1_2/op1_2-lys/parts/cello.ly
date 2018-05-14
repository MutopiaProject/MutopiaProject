\version "2.18.2"
\language "deutsch"

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\include "../header.ily"
\header {
  subtitle = \markup { \abs-fontsize #14 "Violoncello" }
}
\include "../defs.ily"
\include "../vc_a.ily"
\include "../vc_b.ily"
\include "../vc_c.ily"
\include "../vc_d.ily"
\include "../vc_e.ily"

\score {
  \Cello_a
  \header {
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #2 { "I." } } } }
  }
  \layout { indent = 10 \mm }
}

\pageBreak

\score {
  \Cello_b
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #3 { "II. Menuetto" } } } }
  }
  \layout { indent = 10 \mm }
}

\score {
  \Cello_c
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #2 { "III." } } } }
  }
  \layout { indent = 10 \mm }
}

\pageBreak

\score {
  \Cello_d
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #3 { "IV. Menuetto" } } } }
  }
  \layout { indent = 10 \mm }
}

\score {
  \Cello_e
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #2 { "V." } } } }
  }
  \layout { indent = 10 \mm }
}