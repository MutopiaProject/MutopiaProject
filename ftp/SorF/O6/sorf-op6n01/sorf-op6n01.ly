\version "2.19.35"

\header {
  title = "12 Etudes"
  composer = "F. Sor"
  opus = "Op. 6 No. 1"
  style = "Romantic"
  source = "N. Simrock, Berlin. Plate 9106"
  date = "c.1889"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "12 Etudes, No. 1"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/06/06-2119"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #12
}

mbreak = {} % { \break }
global = {
  \time 4/4
  \key d \major
}

% My first attempt with absolute notation with the fixed directive.

upperVoice = \fixed c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  d,8 <d fis> fis, <d fis> g, <d fis> a, <d fis> |
  g,8 <d e> e, <d e> fis, <d e> g, <d e> |
  a,8 <cis e> a,, <cis e> a, <cis e> g, <cis e> |

  \mbreak
  fis,8 <d fis> a,, <d fis> d, <d fis> e, <d fis> |
  fis,8 <d fis> d, <d fis> b, <d fis> a, <d fis> |
  gis,8 <d e> e, <d e> a, <cis e> cis, <e a> |
  d, <b, a> b,, <d a> e, <d gis> e,, <d gis> |

  \mbreak
  a,,8 <cis a> e, <cis a> a, <cis a> a,, <cis g> |
  d,8 <d fis> fis, <d fis> b, <d fis> a, <d fis> |
  g,8 <d e> e, <d e> fis, <d e> g, <d e> |
  a,8 <cis e> a,, <cis e> a, <cis e> g, <cis e> |

  \mbreak
  fis,8 <d fis> a,, <d fis> d, <d fis> e, <d fis> |
  fis,8 <d fis> d, <d fis> b, <d fis> a, <d fis> |
  gis,8 <d e> e, <d e> a, <cis e> cis, <e a> |
  d,8 <b, a> b,, <d a> e, <d gis> e,, <d gis> |

  \mbreak
  a,,8 <cis a> a, <cis a> e, <cis a> cis, <cis a> |
  a,,8 <cis a> e, <cis a> cis, <cis a> a,, <cis g> |
  fis,8 <d fis> d, <d fis> b, <d fis> a, <d fis> |
  a,,8 <cis g> e, <cis g> cis, <e g> a,, <cis g> |
  
  \mbreak
  d,8 <d fis> a, <d fis> fis, <d fis> d, <d fis> |
  c,8 <d fis> a, <d fis> fis, <d fis> c, <d fis> |
  b,,8 <d g> d, <d g> g, <d g> b, <d g> |
  bes,,8 <d gis> f, <d gis> e, <d gis> d, <d gis> |

  \mbreak
  a,,8 <d gis> e, <d gis> a, <cis a> a,, <cis g> |
  d,8 <d fis> fis, <d fis> b, <d fis> a, <d fis> |
  g,8 <d e> e, <d e> fis, <d e>  g, <d e> |
  a,8 <cis e> a,, <cis e> a, <cis e> g, <cis e> |

  \mbreak
  fis,8 <c d> d, <c d> a, <c d> fis, <c d> |
  g,8 <b, d> fis, <b, d> e, <b, g> d, <b, g> |
  cis,8 <e g> a,, <e g> d, <d fis> fis, <d fis> |
  g, <d e> e, <d e> a, <cis e> a,, <cis e> |

  \mbreak
  d,8 <d fis> a,, <d fis> d, <d fis> e, <d fis> |
  fis,8 <d fis> d, <d fis> b, <d fis> a, <d fis> |
  g,8 <d e> e, <d e> fis, <d e> g, <d e> |
  a,8 <cis e> a,, <cis e> a, <cis e> g, <cis e> |

  \mbreak
  fis,8 <d fis> a,, <d fis> d, <d fis> e, <d fis> |
  fis,8 <d fis> d, <d fis> b, <d fis> a, <d fis> |
  g,8 <d e> e, <d e> fis, <d e> g, <d e> |
  a, <d e> gis, <d e> a, <cis e> a,, <cis e> |

  \mbreak
  d,8 <d fis> fis, <d fis> a, <d fis> a,, <cis g> |
  d,8 <d fis> fis, <d fis> a, <d fis> a,, <cis g> |
  d,8 <d fis> fis, <d fis> a, <d fis> fis, <d fis> |
  d,8 <d fis> fis, <d fis> a, <d fis> fis, <d fis> |
  d,2 b,\rest

  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  d4 fis g a |
  g4 e fis g |
  a4 a, a g |

  fis4 a, d e |
  fis4 d  b a |
  gis4 e a cis |
  d4 b, e e, |

  a,4 e a a, |
  d4 fis b a |
  g4 e fis g |
  a4 a, a  g |

  fis4 a, d e |
  fis4 d b a |
  gis4 e a cis |
  d4 b, e e, |

  a,4 a e cis |
  a,4 e cis a, |
  fis4 d b a |
  a,4 e cis a, |

  d4 a fis d |
  c2. c4 |
  b,2. b4 |
  bes,1 |

  a,2. a,4 |
  d4 fis b a |
  g4 e fis g |
  a4 a, a g |

  fis4 d a fis |
  g4 fis e d |
  cis4 a, d fis |
  g4 e a a, |

  d4 a, d e |
  fis4 d b a |
  g4 e fis g |
  a4 a, a g |

  fis4 a, d e |
  fis4 d b a |
  g4 e fis g |
  a4 gis a a, |

  d4 fis a a, |
  d4 fis a a, |
  d4 fis a fis |
  d4 fis a fis |
  s1
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 1"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Allegro moderato."
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    % tabs are not completely developed
    \new TabStaff = "Guitar tabs" \with {
      restrainOpenStrings = ##t
    } <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 80
  }
}
