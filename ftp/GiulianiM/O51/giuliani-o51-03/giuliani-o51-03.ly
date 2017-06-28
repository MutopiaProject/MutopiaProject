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
  mutopiatitle = "18 Progressive Lessons, No. 3"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/06/28-2182"
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

threeT = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \override DynamicTextSpanner.style = #'none

  \once\override DynamicText.X-offset=#-3.8
  a8\mf a4 c'8 |
  c'8 b4 gis8 |
  gis8 a4 c'8 |
  c'8 b4 a8 |
  a8 gis4 f'8 |
  f'8 e'4 d'8 |

  \mbreak
  d'8 c'4 a8 |
  a8 bes4 cis'8~ |
  cis'8 d'4 e'8 |
  g'8 f'4 e'8 |
  e'8 dis'4 dis'8 |
  e'8 b4 d'8 |
  d'8 c'4 bes8 |

  \mbreak
  bes8 a4 gis8 |
  gis8 a4\< a8 |
  a8 g4 f'8 |
  f'8 e'4 g'8\f |
  g'8[ a c' f'] |
  f'8[ g b e'] |
  e'8[ f a d'] |

  \mbreak
  d'8[ e g c'] |
  c'8[ fis a d'] |
  c'8 b4 g'8 |
  g'8 f'4 g'8 |
  f'8 e'4 c'8 |
  e'8 d'4 b8 |
  b8 c'4 e'8 |

  \mbreak
  g8 f4 d'8 |
  f8 e4 c'8 |
  e8 d4 b,8 |
  r8 e[ g c'] |
  \once\override DynamicText.X-offset=#-2
  c'8\p bes4 c'8 |
  bes8 a4 f'8 |
  \once\override DynamicText.X-offset=#-3.8
  f'8\f[ g bes e] |

  \mbreak
  r8 f[ a d'] |
  d'8 c'4\p a8 |
  c'8 b4 g'8 |
  g'8[ a\f c' fis] |
  r8 g[ b e'] |
  e'8 \once\override DynamicText.X-offset=#-2 dis'4\mf e'8 |
  d'8 c'4 a8 |

  \mbreak
  a8 bes4 cis'8~\cresc |
  cis'!8 d'4 e'8 |
  g'8 f'4 e'8 |
  e'8 dis'4 dis'8 |
  e'8\decresc b4 d'8 |
  d'8 a4 bes8 |
  bes8 a4 gis8\mf |

  \mbreak
  a8[ c' b a] |
  a8[ c' b a] |
  a8[ c' b a] |
  b8[ d' gis b] |
  a4 r |
  r4 e'\f |
  <e a c'>2 |

  \bar "|."
}

threeB = \fixed c {
  \voiceTwo

  a,4 c |
  d4 e |
  f4 c |
  d4 dis |
  e4 d |
  c4 b, |

  a,4 c |
  d4 e\cresc |
  f4\! ais, |
  d4 c |
  b,4 a,\decresc |
  gis,4\! e, |
  a,4 d |

  e4 e, |
  a,4 c |
  b,4 g, |
  c4 e |
  a,4 d |
  g,4 c |
  f,4 b, |

  e,4 a, |
  a,4 fis, |
  g,4 g, |
  \once\override TextScript.X-offset=#1
  a,4_"Dol" b, |
  c4 a, |
  f,4 g, |
  c4 g, |

  a,4 b, |
  c4 a, |
  f,4 g, |
  c4 r |
  d4 e |
  f4 d |
  bes,4 c |

 f,4 r |
  fis,4 d |
  g,4 e |
  c4 d |
  g,4 r |
  gis,4 e, |
  a,4 c |

  d4 e |
  f4 cis |
  d4 c |
  b,4 a, |
  gis,4 e, |
  a,4 d |
  e4 e, |

  a,4 c |
  d4 e |
  f4 c |
  d4 e |
  a,8[ e c a,] |
  e,4 <e gis b>4 |
  a,2 |
}


three = {
  <<
    \clef "treble_8"
    \time 2/4 \key c \major
    \tempo "Agitato."
    \context Voice = "Etude 2 treble" \threeT
    \context Voice = "Etude 2 bass" \threeB
  >>
}

three_tabs = \new TabStaff {
  <<
    \clef "moderntab"
    \time 2/4 \key c \major
    \new TabVoice = "Etude 2 treble" \threeT
    \new TabVoice = "Etude 2 bass" \threeB
  >>
}


\score {
  <<
    \new Staff = "midi-guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 3"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \three
    >>
    % \three_tabs
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 110
  }
}
