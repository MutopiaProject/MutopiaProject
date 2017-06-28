\version "2.19.51"

\header {
  title = "18 Progressive Lessons"
  composer = "Mauro Giuliani"
  opus = "Op. 51"
  style = "Classical"
  source = "Chez Richault, Paris. Plate 3307 R."
  date = "c.1827"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "18 Progressive Lessons, No. 4"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/06/28-2183"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  line-width = 18.0\cm
  top-margin = 4\mm
  top-markup-spacing.basic-distance = #6
  markup-system-spacing.basic-distance = #10
  top-system-spacing.basic-distance = #12
  last-bottom-spacing.padding = #2
}

% mbreak = { \break }
mbreak = {} % {\break}

fourT = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \override DynamicTextSpanner.style = #'none

  \once\override DynamicText.X-offset=#-3.8
  d'2\mf e' |
  d'2 e'8 d' c' b |
  a4 g c' b |
  a8 d cis d e fis g a |

  \mbreak
  b8 d g b c' a d' c' |
  b8 d g b c' a d' c' |
  r8 b c' d' dis' e' c' a |
  r8 g b g a4 r |
  d'2 e' |

  \mbreak
  d'2 e'8 d' c' b |
  a4 g c' b |
  a8 d cis d e fis g a |
  b8 g e' cis' d' d a c' |
  b8 g e' cis' d' d a c' |

  \mbreak
  b8 d' c' a r g[ r fis] |
  g8 d g gis a d a ais |
  b8 d g b d' cis' c' a |
  g8 d gis d a d ais d |
  b8 d g b c' a c' fis' |
  g'2 r |

  \bar "|."
}


fourB = \fixed c {
  \voiceTwo

  b,8 g fis g c g fis g |
  b,8 g fis g r g, a, b, |
  c8 d b, d a, d g, d |
  fis,4 r r2 |

  g,2 fis,4 d |
  g,2 fis,4 d |
  g,2 c4 r |
  d2 <d fis>8 c b, a, |
  b,8 g fis g c g fis g |

  b,8 g fis g r g, a, b, |
  c8 d b, d a, d g, d |
  fis,4 r r2 |
  g,2 fis, |
  g,2 fis, |

  g,4 a,8 c d4 4 |
  g,4 r fis, r |
  g,4 r fis, r |
  g,4 b, c fis, |
  g,2 d |
  <g, g b>2 r |
}


four = {
  <<
    \clef "treble_8"
    \time 4/4 \key g \major
    \tempo "Maestoso."
    \context Voice = "Etude 2 treble" \fourT
    \context Voice = "Etude 2 bass" \fourB
  >>
}

four_tabs = \new TabStaff {
  <<
    \clef "moderntab"
    \time 4/4 \key g \major
    \new TabVoice = "Etude 2 treble" \fourT
    \new TabVoice = "Etude 2 bass" \fourB
  >>
}

\score {
  <<
    \new Staff = "midi-guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 4"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \four
    >>
    % \four_tabs
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 110
  }
}
