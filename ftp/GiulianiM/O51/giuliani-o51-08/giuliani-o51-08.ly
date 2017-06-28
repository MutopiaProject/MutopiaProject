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
  mutopiatitle = "18 Progressive Lessons, No. 8"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/06/28-2187"
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

eightT = \fixed c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \override DynamicTextSpanner.style = #'none

  r8\sf a, fis, d a,\mf fis d a |
  r8\sf b, g, d b,\mf g d b |
  r8 a fis d g e fis d |
  e8 cis a, b, a,4 r |

  \mbreak
  r8\sf a, fis, d a, fis d a |
  gis8 b gis e d fis b, d |
  cis8 a e cis e d b, gis, |
  a,8\f cis fis dis e e, b, d |
  cis8 a, fis dis e e, b, d |

  \mbreak
  cis8 a, fis dis e b, e cis |
  d8 a, d bis, cis gis, cis ais, |
  \slashedGrace{cis8} b,8 ais, b, cis d2 |
  r8 fis8 e d cis a e cis |
  ais,8 b, d fis e d b, gis, |

  \mbreak
  a,4 r r2 |
  r8\sf e, cis, a, e, cis a, e |
  r8\sf fis, d, a, fis, d a, fis |
  r8\sf e cis a, d b, cis a, |
  b,8 gis, e, fis, g,2 |

  \mbreak
  r8\sf fis, d, a, fis,\mf d a, fis |
  r8\sf g, d, b, g,\mf d b, g |
  fis8 a fis d cis a, g, e, |
  r8 a, fis g r a, e a |

  \mbreak
  fis8 a, fis g r a, e a |
  fis8 d b, e r <fis, d>8[ r <e, cis>8] |
  d2 e |
  fis8 a fis d cis a, g, e, |
  d,2\f <a, d fis> |
  <fis, a, d>2 r |

  \bar "|."
}


eightB = \fixed c {
  \voiceTwo

  d2 r |
  d2 r |
  d2 cis4 d |
  a,2 r8 g e cis |

  d2 r |
  e,2 r |
  a,2 e, |
  a,2 gis, |
  a,2 gis, |

  a,2 gis,4 g, |
  fis,2 eis,4 e, |
  d4 r r8 cis b, a, |
  gis,2 a, |
  d2 e, |

  a,8 e fis e d cis d b, |
  a,2 r |
  a,2 r |
  a,2 gis,4 a, |
  g,4 r r8 a, b, cis |

  d2 r |
  d2 r |
  d2 a, |
  d2 cis |

  d2 cis |
  d4 g, a, a, |
  d8 a fis d cis e a, cis |
  d2 a, |
  d2 d |
  d2 r |
}


eight = {
  <<
    \clef "treble_8"
    \time 4/4 \key d \major
    \tempo "Allegro."
    \new Voice = "Etude 8 treble" \eightT
    \new Voice = "Etude 8 bass" \eightB
  >>
}

eight_tabs = \new TabStaff {
  <<
    \clef "moderntab"
    \time 3/4 \key d \major
    \new TabVoice = "Etude 8 treble" \eightT
    \new TabVoice = "Etude 8 bass" \eightB
  >>
}

\score {
  <<
    \new Staff = "midi-guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 8"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \eight
    >>
    % \eight_tabs
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 110
  }
}
