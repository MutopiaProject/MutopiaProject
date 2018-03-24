\version "2.18.2"
\language "deutsch"

\paper {
  ragged-bottom = ##f
}

\header {
  title = "String Quartet in D major"
  subtitle = \markup { \abs-fontsize #14 "Viola" }
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
\include "vla_a.ily"
\include "vla_b.ily"
\include "vla_c.ily"
\include "vla_d.ily"
\include "vla_e.ily"

\score {
  \Viola_a
  \header {
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #3 { "I." } } } }
  }
  \layout { indent = 10 \mm }
}

\score {
  \Viola_b
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #3 { "II. Menuetto" } } } }
  }
  \layout { indent = 10 \mm }
}

\pageBreak

\score {
  \Viola_c
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #1 { "III." } } } }
  }
  \layout { indent = 10 \mm }
}

\score {
  \Viola_d
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #3 { "IV. Menuetto" } } } }
  }
  \layout { indent = 10 \mm }
}

\pageBreak

\score {
  \Viola_e
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #1 { "V." } } } }
  }
  \layout { indent = 10 \mm }
}