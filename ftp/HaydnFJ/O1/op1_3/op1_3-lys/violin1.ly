\version "2.18.2"
\language "deutsch"

\paper {
  ragged-last-bottom = ##t
}

\header {
  title = "String Quartet in D major"
  subtitle = \markup { \abs-fontsize #14 "Violin I" }
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
\include "vl_i_a.ily"
\include "vl_i_b.ily"
\include "vl_i_c.ily"
\include "vl_i_d.ily"
\include "vl_i_e.ily"

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