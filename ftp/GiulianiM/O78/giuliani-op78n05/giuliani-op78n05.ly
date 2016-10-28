\version "2.19.48"

\header {
  title = "Divertissements, No. 5"
  composer = "Mauro Giuliani"
  opus = "Op. 78 No. 5"
  style = "Classical"
  source = "Pietro Mechetti, plate 495"
  date = "ca.1817"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Divertissements, No. 5"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/10/28-2144"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  top-margin = #8
  bottom-margin = #12
%  system-count = #8
}

mbreak = {} % { \break }
global = {
  \time 2/4
  \key g \major
}

upperVoice = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 8 {b16\mf( c')} |
  d'8 d' g' g' |
  b8 b d' d' |
  g8 g a a |
  b4 g16 a b c' |
  d'8 d' g' g' |

  \mbreak
  b8 b d' d' |
  g8 g a[ b16 a] |
  g4 r8 fis16 g |
  a16 d a d b d b d |
  c'16( d') c' b a d gis a |
  b16 g b g c' g c' g |

  \mbreak
  d'16 e' d' c' b g g' g  |
  e'16 g g' e' d' g g' g |
  e'16 g c' e' d' g e' d' |
  c'16 d d' c' b d c' b |
  a16 d e fis g a b c' |
  d'8 d' g' g' |

  \mbreak
  b8 b d' d' |
  g8 g a a |
  b4 g16( a) b c' |
  d'8 d' g' g' |
  b8 b  d' d' |
  g8 g a8[ b16 a] |

  \mbreak
  g4 r16 g c' d' |
  \repeat unfold 2 {e'16 g c' g d' g g' g |}
  e'8 e' f'16( e') d' c' |
  b16( g) fis g a b c' d' |
  e'16 g c' g d' g g' g |

  \mbreak
  e'16 g c' g d' g g' g |
  e'16 g f' e' d' g e' d' |
  c'4 r16 e'[ \grace{g'16} f' e'] |
  e'4 r16 b e' d' |
  c'4 r16 a b c' |
  b16 d g b d' d c' a |

  \mbreak
  r16 g fis g a b c' d' |
  \repeat unfold 2 {e'16 g c' g d' g g' g |}
  e'16 g f' e' d' g e' d' |
  c'4 r8 b16 c' |
  d'8 d' g' g' |

  \mbreak
  b8 b d' d' |
  g8 g a a |
  b4 g16 a b c' |
  d'8 d' g' g' |
  b8 b d' d' |
  g8 g a[ b16 a] |

  \mbreak
  g4 r8 fis16 g |
  a16 d a d b d b d |
  c'16( d') c' b a d gis a |
  b16 g b g c' g c' g |
  d'16 e' d' c' b g g' g |
  e'16 g g' g d' g g' g |

  \mbreak
  e'16 g g' e' d' g e' d' |
  c'16 d d'( c') b g c'( b) |
  a16 d e fis g a b c' |
  d'8 d' g' g' |
  b8 b d' d' |
  g8 g a a |

  \mbreak
  b4 g16 a b c' |
  d'8 d' g' g' |
  b8 b d' d' |
  g8 g a[ b16 a] |
  g4 a |
  b4 d'16 d c' a |

  \mbreak
  g4 a |
  b4 d'16 d c' a |
  \repeat unfold 2 {g8 b d'16 d c' a |}
  g8 <g b g'> q q |
  q4 q |
  q2\fermata

  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  \partial 8 {r8} |
  \repeat unfold 2 {
    \repeat unfold 2 {g,16 d b, d} |
  }
  g,16 d b, d fis, d c d |
  g,16 d b, d g,4 |
  \repeat unfold 2 {g,16 d b, d} |

  \repeat unfold 2 {g,16 d b, d} |
  g,16 d b, d fis, d c d |
  g,16 d b, g g,8 r |
  fis,8 fis, g, g, |
  a,4 fis, |
  g,8 g, a, a, |

  b,4 g, |
  c4 b, |
  c4 b, |
  a,4 g, |
  fis,4 r |
  g,16 d b, d g, d b, d |

  \repeat unfold 2 {g,16 d b, d} |
  g,16 d b, d fis, d c d |
  g,16 d b, d g,4 |
  \repeat unfold 2 {
    \repeat unfold 2 {g,16 d b, d} |
  }
  g,16 d b, d fis, d c d |

  g,16 d b, d g,8 r |
  c8 e b, g, |
  c8 e b, g, |
  c16 g e g c4 |
  g,4 r |
  c8 e b, g, |

  c8 e b, g, |
  c4 b, |
  c16 g e g c4 |
  r16 e,( gis,) b,^. e,4 |
  r16 a,( c) e^. a,4 |
  g,4 fis, |

  g,4 r |
  c8 e b, g, |
  c8 e b, g, |
  c4 g, |
  c16 g e g c8 r |
  g,16 d b, d g, d b, d |

  \repeat unfold 2 {g,16 d b, d} |
  g,16 d b, d fis, d c d |
  g,16 d b, d g,4 |
  \repeat unfold 2 {
    \repeat unfold 2 {g,16 d b, d} |
  }
  g,16 d b, d fis, d c d |

  g,16 d b, d g,8 r |
  fis,8 fis, g, g, |
  a,4 fis, |
  g,8 g, a, a, |
  b,4 g, |
  c4 b, |

  c4 b, fis,4 g, |
  fis,4 r |
  \repeat unfold 2 {
    \repeat unfold 2 {g,16 d b, d} |
  }
  g,16 d b, d g, d c d |        % correction: fis, ==> g,

  g,16 d b, d g,4 |
  \repeat unfold 2 {
    \repeat unfold 2 {g,16 d b, d} |
  }
  g,16 d b, d fis, d c d |
  g,16 d b, d fis, d a, d |
  g,16 d b, d fis,4 |

  g,16 d b, d fis, d a, d |
  g,16 d b, d fis,4 |
  \repeat unfold 2 {g,16 d b, d fis,4|}
  g,8 g d b, |
  g,4 g, |
  <g, b, d>2
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 5"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Allegretto."
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
    \tempo 4 = 90
  }
}
