\version "2.16.2"
\header {
  title = "Etude 19"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 19"
  mutopiatitle = "25 Studies: No. 19"
  mutopiacomposer = "CarcassiM"
  mutopiaopus = "O 60"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Mayence, B. Schott's Söhne"
  % From Boije 94
  date = "1853"
  enteredby = "Glen Larsen"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
  footer = "Mutopia-2013/08/06-0"
}

global = {
  \time 3/4
  \key e \minor
}

pf = #(make-dynamic-script "pf")
gpos = #(define-music-function (parser location text) (string?)
	 #{ \mark\markup{\teeny\italic #text } #})

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

\layout {
  \context {
    \Voice
    \override StringNumber #'stencil = ##f
  }
  \context {
    \Staff
    \override Fingering #'staff-padding = #'()
    \override Fingering #'add-stem-support = ##t
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  }
  \context {
    \Dynamics
    \override DynamicTextSpanner #'style = #'none
  }
}

upperVoice = \relative c' {
  \voiceOne
  \tempo "Allegretto moderato."
  e4 g e |
  b'2. |
  g4 a g |
  <fis-3>2. |

  fis4 g fis |
  dis2. |
  dis4 fis dis |
  e2. |

  e4 g e |
  b'2. |
  g4 fis e |
  d2. |

  d4 e d |
  b2. |
  fis'4 e fis |
  g2. |

  g4 g g |
  <g-4>2. |
  <g-4>4 g g |
  g2. |

  fis4 g fis |
  e2. |
  g4 fis e |
  s2. |

  e4 g e |
  b'2. |
  g4 a g |
  f2. |

  e4 g e |
  f2. |
  e4 g e |
  f2. |

  e4 fis e |
  e4 g e |
  <b'-1> <a-4>\2 <fis-1>\2 |
  <e b g>2 b4\rest

  \bar "|."
}

lowerVoice = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(up)
  e16\mf b a b g' b, g b e b g b |
  b'16 b, g b g b g b g b g b |
  g'16 b, g b a' b, g b g' b, g b |
  fis'16 c a c a c a c a c a c |

  fis16 c a c g' c, a c fis c a c |
  dis16 a fis a fis a fis a fis a fis a |
  dis16 a fis a fis' a, fis a dis a fis a |
  e'16 b g b g b g b g b g b |

  e16 b g b g' b, g b e b g b |
  b'16 b, g b g b g b g b g b |
  g'16 b, g\< b fis' b, g b e b\! g b |
  d16\f a d, a' d, a' d, a' d, a' d, a' |

  d16 a d, a' e' a, d, a' d a d, a' |
  b16 g\> d g d g d g d g d\! g |
  fis'16\mf c a c e c a c fis c a c |
  g'16 b,\> g b g b g b g b g\! b |

  g'16\p b, g b g' b, g b g' b, g b |
  g'16 <c,-1>\< g c g c g c g c g\! c |
  g'16\mf <cis,-2> g cis g' cis, g cis g' cis, g cis |
  g'16 d g,\cresc d'\! g, d' g, d' g, d' g, d' |

  \override TextSpanner #'(bound-details left text) = #"II "
  fis16\f\startTextSpan dis a dis g dis a dis fis dis a dis\stopTextSpan |
  e16 c g c g c g c g c g c |
  g'16\sf cis, g cis fis cis g cis e cis g cis |
  \override TextSpanner #'(bound-details left text) = #"VII "
  b'16\startTextSpan fis\2 dis\3 fis\2 b,8\4\stopTextSpan dis8\rest dis4\rest |

  e16\f b g b g' b, g b e b g b |
  b'16 b, g b g b g b g b g b |
  g'16 b, g b a' b, g b g' b, g b |
  f'16\sf c a c a c a c a c a c |

  e16\sf c g c g' c, g c e c g c |
  f16\sf c a c a c a c a c a c |
  e c g c g' c, g c e c g c |
  f16 c a c a c a c a c a c |

  e16\sf cis g cis fis cis g cis e cis g cis |
  e16 b g b g' b, g b e b g b |
  \override TextSpanner #'(bound-details left text) = #"VII "
  b'16\mf\startTextSpan <dis,-2>\3 <b-3>\4 dis\>\3 a'\2 dis,\3 b\4 dis\3 fis\2 dis\3 b\4\! dis\3\stopTextSpan |
  s2.
}

middleVoice = \relative c, {
  \voiceThree
  \stemDown
  \repeat unfold 11 { e2. | }
  fis2. |
  fis2. |
  g2. |
  d'2. |
  g,2. |
  g2. |
  a2. |
  ais2. |
  b2. |
  b2. |
  c2. |
  ais2. |
  b4.\6 a8\6 g fis |
  e2. |
  e2. |
  e2. |
  a2. |
  bes2. |
  a2. |
  bes2. |
  a2. |
  ais2. |
  b2. |
  b2.\6 |
  e,2 s4 |
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \global
      \clef "treble_8"
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      \context Voice = "middleVoice" \middleVoice
    >>
%{
    \new TabStaff = "Guitar tabs"
    <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
      \context TabVoice = "middleVoice" \middleVoice
    >>
%}
  >>
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}
