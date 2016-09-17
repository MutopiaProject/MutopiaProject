\version "2.19.35"

\header {
  title = "12 Etudes"
  composer = "F. Sor"
  opus = "Op. 6 No. 11"
  style = "Romantic"
  source = "N. Simrock, Berlin. Plate 9106"
  date = "c.1889"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "12 Etudes, No. 11"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/09/17-2134"
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
%  system-count = #8
}

mbreak = {} % { \break }
global = {
  \time 4/4
  \key e \minor
}

upperVoice = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \omit TupletBracket \omit TupletNumber
  \tuplet 3/2 {
    b8\rest e g b e g e' e g e' e g |
    e'8 g b b e g b e g b e g |
    b8\rest e g b e g e' e g g' e g |
    g'8 e a c' e a fis' e a c' e a |

    \mbreak
    b8\rest e a fis' e a fis' e a fis' e a |
    fis'8 dis a b dis a b dis a fis, dis a |
    b8\rest dis a fis' dis a g' dis a fis' dis a |
    fis'8 e a b e a e' e g b e g |

    \mbreak
    b8\rest e b g' e b g' e c' g' e cis' |
    g' a d' fis' a d' fis' a d' d a d' |
    fis8 c' d' a' c' d' a' c' d' a' c' d' |
    a'8 b d' g' b d' g' b d' g b d' |

    \mbreak
    b8\rest b d' \stemDown \repeat unfold 3 { b' b d' } |
    \stemUp b'8 c' e' \stemDown a' c' e' a' c' e' \stemUp c c' e' |
    b8\rest bes e' g' bes e' g' bes e' g' bes e' |
    g'8 a d' fis' a d' fis' a d' d a d' |

    \mbreak
    b8\rest a d' fis' a d' fis' a d' fis' a d' |
    fis'8 g d' g' g d' g' g  d' b, g d' |
    b8\rest d c' a' d c' a' d c' a' d c' |
    ais'8 d b b' d b b' d b g, d b |

    \mbreak
    e,8 g b g' d b g' g b g' g b |
    c8 c' e' a' c' e' a, c' e' c'' c' e' |
    d8 a c' fis' a c' fis' a c' fis' a c' |
    fis'8 a c' g' g b g' g b e g b |

    \mbreak
    b8\rest gis d' f' gis d' f' gis d' f' gis d' |
    f'8 a d' e' a c' a, c' e' a' c' e' |
    a'8 b d' g' b d' g' a c' fis' a c' |
    g'8 g b d g b b, g b d g b |

    \mbreak
    s8*12 |
    a'8 e b d' e b gis' e b d' e g |
    b8\rest b d' e' b  d' fis' b d' gis' b d' |
    b' gis d' e' gis d' a' a c' e' a c' |
    b8\rest a c' e' a c' a' a c' g' a c' |

    \mbreak
    g'8 a c' fis' a c' fis' a c' d a c' |
    b8\rest a c' fis' a c' e' a c' fis' a c' |
    a'8 fis c' d' fis c' g' g b d' g b |
    b8\rest b d' g' b d' g' b d' g' b d' |

    \mbreak
    g'8 dis a b dis a fis' dis a b dis a |
    b8\rest dis a fis' dis a fis' dis a fis' dis a |
    fis'8 e g b e g e' e g b e g |
    b8\rest e g g' g b g' g b g' e g |

    \mbreak
    g'8 dis a b dis a fis' dis a b dis a |
    b8\rest dis a fis' dis a fis' dis a fis' dis a |
    fis'8 e g b e g e' e g b e g |
    b8\rest g b e' g b e' g b e' g b |

    \mbreak
    g'8 e a c' e a fis' e a c' e a |
    b8\rest e a fis' e a fis' e a fis' e a |
    a'8 e b d' e b gis' e b d' e b |
    b8\rest b d' gis' b d' gis' b d' gis' b d' |

    \mbreak
    b'8 c' e' a' c' e' a' b d' g' b d' |
    g'8 a c' fis' a c' fis' g cis' e' g cis' |
    e'8 fis b dis' fis b dis' fis b b, fis b |
    b8\rest g ais \repeat unfold 3 {e' g ais} |

    \mbreak
    e'8 e b dis' e b dis' e b b, e b |
    b8\rest g ais \repeat unfold 3 {e' g ais} |
    e'8 fis b dis' fis b dis' fis b b, fis b |
    s8*12 |
    \bar "||" \key e\major
    b8 e gis gis' e gis gis' e gis e, e gis |

    \mbreak
    b8\rest a dis' fis' a dis' fis' a dis' fis' a dis' |
    fis'8 a dis' e' gis cis' e' gis cis' cis gis cis' |
    b8\rest a cis' e' a cis' dis' e b cis' e a |
    cis'8 e a \repeat unfold 3 {b e gis} |

    \mbreak
    b8\rest fis a \repeat unfold 3 {dis' fis a} |
    dis'8 fis a e' e gis e' e gis b e gis |
    b8\rest e gis \repeat unfold 3 {b e gis} |
    b8 e gis gis' e gis gis' e gis e, e gis |

    \mbreak
    b8\rest a dis' \repeat unfold 3 {fis' a dis'} |
    fis'8 a dis' e' gis cis' e' gis cis' cis gis cis' |
    b8\rest a cis' e' e cis' dis' e b cis' e a |
    cis'8 e a b e a b e a b, e a |

    \mbreak
    b8\rest fis a \repeat unfold 3 {dis' fis a} |
    fis'8 e gis gis' e gis fis' e gis e' e gis |
    fis'8 e dis' e' e cis' dis' e b cis' e a |
    cis'8 e gis b e gis b e gis b, e gis |

    \mbreak
    b8\rest fis a \repeat unfold 3 {dis' fis a} |
    e'8 gis b \repeat unfold 3 {e gis b} |
    b8\rest fis a b fis a e' fis a dis' fis a |
    b8\rest e gis b e gis fis' e gis e' e gis |

    \mbreak
    b8\rest dis a b dis a gis' dis a fis' dis a |
    b8\rest e gis b e gis fis' e gis e' e gis |
    b8\rest dis a b dis a e' dis a dis' dis a |
    b8\rest e gis b e gis  fis' e gis e' e gis |

    \mbreak
    b8\rest dis a b dis a gis' dis a fis' dis a |
    \repeat unfold 2 {b8\rest e gis b e gis e' e gis b, e gis |}
    e, e gis b e gis e' e gis b e gis |
  }
  e'2 b\rest |

  \bar "|."
}


lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t
  \stemDown
  s4 b e' e' |
  e'4 b b b |
  s4 b e' g' |
  g'2 fis' |

  s4 fis' fis' fis' |
  fis'4 b b fis, |
  s4 fis' g' fis' |
  fis'2 e' |

  s4 g' g' g' |
  g'4 fis' fis'2 |
  s4 a'4 a' a' |
  a'4 g' g'2 |

  s4 \stemUp b' b' b' |
  \once\stemDown b'4 a' a'2 |
  s4 \stemDown g' g' g' |
  g'4 fis' fis'2 |

  s4 fis' fis' fis' |
  fis'4 g' g'2 |
  s4 a' a' a' |
  ais'4 b' b'2 |

  s4 g' g' g' |
  s4 a' s c'' |
  s4 fis' fis' fis' |
  fis'4 g' g'2 |

  s4 f' f' f' |
  f' e' s a' |
  a'4 g' g' fis' |
  g'2 s |

  \once\stemUp g,4 d' b' a' |
  a'2 gis' |
  s4 e' fis' gis' |
  b'2 a' |
  s4 e' a' g' |

  g'4 fis' fis'2 |
  s4 fis' e' fis' |
  a'2 g' |
  s4 g' g' g' |

  g'2 fis' |
  s4 fis' fis' fis' |
  fis'2  e' |
  s4 g' g' g' |

  g'2 fis' |
  s4 fis' fis' fis' |
  fis'2  e' |
  s4 e' e' e' |

  g'2 fis' |
  s4 fis' fis' fis' |
  a'2 gis' |
  s4 gis' gis' gis' |

  b'4 a' a' g' |
  g'4 fis' fis' e' |
  e'4 dis' dis'2 |
  s4 e' e' e' |

  e'4 dis' dis'2 |
  s4 e' e' e' |
  e'4 dis' dis'2 |
  \once\stemUp b,4^\fermata b b b |
  b4 gis' gis'2 |               % e \major

  s4 fis' fis' fis' |
  fis'4 e' e'2 |
  s4 e' dis' cis' |
  cis'4 b b2 |

  s4 dis' dis' dis' |
  dis' e' e'2 |
  s4 b b b |
  b4 gis' gis'2 |

  s4 fis' fis' fis' |
  fis'4 e' e'2 |
  s4 e' dis' cis' |
  cis'4 b b2 |

  s4 dis' dis' dis' |
  e'4 gis' fis' e' |
  fis'4 e' dis' cis' |
  cis'4 b b2 |

  s4 dis' dis' dis' |
  e'4 s4*3 |
  s4 b e' dis' |
  s4 b fis' e' |

  s4 b gis' fis' |
  s4 b fis' e' |
  s4 b e dis' |
  s4 b fis' e' |

  s4 b gis' fis' |
  \repeat unfold 2 {s4 b e'2 |}
  s4 b e' b |
}


middleVoice = \fixed c, {
  \voiceThree
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t
  \stemDown

  \repeat unfold 4 {e1 |}
  e1 |
  fis2. s4 |
  b1 |
  e1 |

  e1 |
  d'2. d'4 |
  fis'2. fis'4 |
  g'2. g'4 |

  g1 |
  c'2. c'4 |
  cis'1 |
  d'2. d'4 |

  c'1 |
  b2. b4 |
  fis1 |
  g2. g4 |

  e2. e'4 |
  c'2 a |
  d'2. dis'4 |
  e'2. e'4 |

  b1 |
  c'2 a |
  d'1 |
  g4 d' b d' |

  s1 |
  e1 |
  e1 |
  a1 |
  a1 |

  d'2. d'4 |
  d'1 |
  g1 |
  g1 |

  \repeat unfold 2 {
    b1 |
    b1 |
    e1 |
    e1 |
  }

  \repeat unfold 4 { e1 | }

  a1 |
  a2 ais |
  b2. b4 |
  b1 |

  b2. b4 |
  b1 |
  b2. b4 |
  s1
  e2. e4 |                      % e \major

  b1 |
  cis'2. cis'4 |
  a1 |
  b2 s |

  b1 |
  e1 |
  e1 |
  e2. e4 |

  b2 bis |
  cis'2. cis'4 |
  a1 |
  b2. b4 |

  b1 |
  e1 |
  a1 |
  b2. b4 |

  b1 |
  \repeat unfold 3 {e1 |}

  \repeat unfold 4 {e1 |}

  e1 |
  e2. b4 |
  e2. b4 |
  e2 e |
  e2 s
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 11"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Allegro moderato."
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      \context Voice = "middleVoice" \middleVoice
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
    \tempo 4 = 74
  }
}
