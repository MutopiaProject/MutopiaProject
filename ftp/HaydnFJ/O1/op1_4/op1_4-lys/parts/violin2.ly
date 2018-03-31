\version "2.18.2"
\language "deutsch"

\paper {
  ragged-bottom = ##f
}

\header {
  title = "String Quartet in D major"
  subtitle = \markup { \abs-fontsize #14 "Violin II" }
  composer = "Joseph Haydn (1732-1809)"
  opus = "Op. 1 No. 3"

  mutopiacomposer = "HaydnFJ"
  mutopiainstrument = "String Quartet"
  date = "ca. 1757-62"
  source = "Trautwein & Comp, Berlin"
  style = "Classical"
  license = "Creative Commons Attribution 4.0"
  maintainer = "Urs Metzger"
}

breakVoice = { \break }

\include "defs.ily"
\include "vl_ii_a.ily"
\include "vl_ii_b.ily"
\include "vl_ii_c.ily"
\include "vl_ii_d.ily"
\include "vl_ii_e.ily"

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
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #1 { "III." } } } }
  }
  \layout { indent = 10 \mm }
}

\score {
  \ViolinII_d
  \header {
    opus = " "
piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #1 { "IV. Menuetto" } } } }
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