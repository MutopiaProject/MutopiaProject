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
  mutopiatitle = "18 Progressive Lessons, No. 7"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/06/28-2186"
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

dynamics = {
  \once\override DynamicText.X-offset=#-3.8
  s8\f s8\> s8 s8\! s8\> s8\! |
  s4\> s8\! s8 s8\> s8\! |
  s2. | s4 s8\mf s8 s4 |

  s4\> s8\! s8 s8\> s8\! |
  s4\> s8\! s8 s8\> s8\! |
  s4\> s8\! s4. |
  s4\> s8\! s8 s8\> s8\! |
  s2. |

  s2.*2 | s4\sf s4\sf s4\sf | s2.*2 |

  s4\p s2 | s4\f s8 s8\sf s4 | s4 s8 s8\sf s4 | s2.*2 |

  s2.*3 | s4\p s2 | s2.*2 |

  s2.*4 | s8\f\> s8 s8\! s8 s8\> s8\! |

  s4\> s8\! s8 s8\> s8\! |
  s4\mf s4 s4 |
  s8 s4\sf s8\p s4 |
  s8 s4\sf s8\p s4 |
  s2.*2
}

sevenT = \fixed c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \override DynamicTextSpanner.style = #'none

  d4 cis8 b, ais, b, |
  g4 fis8 e dis e |
  fis4 e8 cis d b, |
  ais,4. g8 fis e |

  \mbreak
  d4 cis8 b, ais, b, |
  g4 fis8 e dis cis |
  cis4 b,8 a, b, a, |
  fis4 e8 d cis d |
  b,8 c b, dis e_. fis |

  \mbreak
  g4. e8 fis d |
  <g, b,>8 e r <fis, d>8[ r <e, cis>8] |
  a4 fis g |
  e4 fis8 e d cis |
  <g, b,>8 <g, e>4 <fis, d> <e, cis>8 |

  \mbreak
  d8 a, b, a, g, e, |
  d4 a,2 |
  e4 a,2 |
  fis4 e8 d b, e |
  d4 cis8 g fis e |

  \mbreak
  d8 cis b, ais, b, a, |
  gis,8 fis e d cis a, |
  fis,8 b, r <cis, a,>8[ r <b,, gis,>8] |
  a,4 r r |
  a,8 c b, a, g,4~ |
  g,8 b, a, g, fis,4~ |

  \mbreak
  fis,8 a, g, fis, e,4~ |
  e,8 g, fis, e, d,4 |
  r8 ais, b, cis d b, |
  ais,4. g8 fis e |
  d4 cis8 b, ais, b, |

  \mbreak
  g4 fis8 e dis e |
  d4 cis cis |
  b,4 fis8 d cis e |
  d8 fis4 b,8 ais,8 cis |
  b,4 <fis, b, d> q |
  b,2.

  \bar "|."
}


sevenB = \fixed c {
  \voiceTwo

  r8 b,8\noBeam cis d e d |
  r8 e\noBeam fis g a g |
  r8 d\noBeam cis ais, b, eis |
  fis8 g fis e d cis |

  r8 b,\noBeam cis d e d |
  r8 e\noBeam fis g a g |
  r8 a,8\noBeam b, cis d cis |
  r8 d8\noBeam e fis g fis |
  g8 a g fis e dis |

  e8 d cis a, d fis |
  g,4 a, a, |
  fis8 e dis b, e d |
  cis8 a, d e fis a, |
  g,4 a, a, |

  d8 fis g fis e a, |
  r8 d e fis e d |
  r8 a, b, cis b, a, |
  r8 d e fis g g, |
  r8 gis, a,4. ais,8 |

  b,8 cis d e d dis |
  e4. gis,8 a, cis |
  d4 e, e, |
  r8 a, b, bis, cis d |
  dis2 e8 d |
  cis2 d8 cis |

  b,2 cis8 b, |
  ais,2 b,8 cis |
  d8 cis d_. ais, b, eis |
  fis8 g fis e d cis |
  r8 b, cis d e d |

  r8 e fis g a g |
  fis8 b fis[ b] fis ais |
  b,8 fis,4 b8 ais fis |
  b4 fis,8 d cis e |
  d4 b, b, |
  <d fis>2.
}


seven = {
  <<
    \clef "treble_8"
    \time 3/4 \key d \major
    \tempo "Andantino."
    \new Voice = "Etude 7 treble" \sevenT
    \new Voice = "Etude 7 bass" \sevenB
    \new Dynamics \dynamics
  >>
}

seven_tabs = \new TabStaff {
  <<
    \clef "moderntab"
    \time 3/4 \key d \major
    \new TabVoice = "Etude 7 treble" \sevenT
    \new TabVoice = "Etude 7 bass" \sevenB
  >>
}

\score {
  <<
    \new Staff = "midi-guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 7"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \seven
    >>
    % \seven_tabs
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 100
  }
}
