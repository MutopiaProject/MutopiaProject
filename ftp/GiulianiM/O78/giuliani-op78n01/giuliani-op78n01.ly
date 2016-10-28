\version "2.19.48"

\header {
  title = "Divertissements, No. 1"
  composer = "Mauro Giuliani"
  opus = "Op. 78 No. 1"
  style = "Classical"
  source = "Pietro Mechetti"
  date = "ca.1817"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Divertissements, No. 1"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/10/28-2140"
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
  \time 3/4
  \key c \major
}

upperVoice = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  e'4.\mf d'16 c' b8  c'  |
  cis'4 d'8 g' fis'[ f'] |
  e'4 r16 g d' c' b a f' d' |

  \mbreak
  c'4 b16 g fis g a b c' d' |
  e'4. d'16 c' b8  c'  |
  cis'4 d'8 g' fis'[ f'] |
  e'16 c' a d' c'4 b |

  \mbreak
  d'2 c'8 r |
  \repeat unfold 2 { e'4. \grace{g'16} f'16 e' e'8 e' |}
  r16 b d' e' gis' e' b' a'( gis') f'_. e'_. d'_. |

  \mbreak
  c'16 e a c' b e gis b a b c' cis' |
  \repeat unfold 2 {d'4. \grace{fis'16} e'16 d' d'8 d' |}
  d'4 r16 d a' g' fis' e' d' c' |

  \mbreak
  ais4 b16 d g a b c' d' e' |
  f'4. e'16 f' e' f' g' f' |
  dis'4 e'8 g' fis'[ e'] |
  e'16\rest <g d'>16[ e'\rest <a c'>16] e'\rest g b g' e'\rest a d' fis' |

  \mbreak
  \repeat unfold 2 {g4. gis8 a16 d' c' a |}
  g8\sf a g\sf[ a] g\sf a |
  r16 g b g g b d' c' b d' f' e' |

  \mbreak
  d'16 c' b a g fis a g f e f d |
  e'4. d'16 c' b8 c' |
  cis'4 d'8 g' fis' f' |
  e'4 r16 g d' c' b a f' d' |

  \mbreak
  c'4 b16 g fis g a b c' d' |
  e'4. d'16 c' b8 c' |
  cis'4 d'8 g' fis' f' |
  e'16 c' a d' c'4 b |

  \mbreak
  \repeat unfold 2 {c'4. e'8 d' g' |}
  c'4 c' c' |
  <e g c'>2 r4

  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  \repeat unfold 3 {c16 g e g} |
  b,16 g c g b, g g, g a, g b, g |
  c16 g e g c4 f, |

  g,16 g e g g,4 r |
  \repeat unfold 3 {c16 g e g} |
  b,16 g c g b, g g, g a, g b, g |
  c8 f, g,16 g e g g, g d g |

  g,16 g f g b, g f g c8 r |
  \repeat unfold 3 {e,16 b gis b} |
  \repeat unfold 3 {a, c' a c} |
  e,4 e, r |

  a,4 e, a,8 r |
  \repeat unfold 3 {fis,16 d a, d} |
  \repeat unfold 3 {g,16 d b, d} |
  fis,16 d a, d fis,4 r |

  g,16 d b, d g,4 r |
  \repeat unfold 3 {b,16 g d g} |
  c16 g e g c g e g d g c g |
  b,8 c d4 d |

  \repeat unfold 2 {g,16 d b, d g, e b, d fis,4 |}
  g,16 d fis, d g, d fis, d g, d c d |
  g,4 r r |

  R2. |
  \repeat unfold 3 {c16 g e g} |
  b,16 g d g b, g g, g a, g b, g |
  c16 g e g c4 f, |

  g,16 g e g g,4 r |
  \repeat unfold 3 {c16 g e g} |
  b,16 g d g b, g g, g a, g b, g |
  c8 f, \repeat unfold 2 {g,16 g e g} |

  \repeat unfold 2 {\repeat unfold 2 {c16 g e g} b, g g, g |}
  c16 g e g g, g e g e, g e g |
  c2 r4
  
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
      \tempo "Grazioso."
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
    \tempo 4 = 84
  }
}
