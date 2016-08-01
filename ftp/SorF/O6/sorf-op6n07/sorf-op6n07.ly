\version "2.19.35"

\header {
  title = "12 Etudes"
  composer = "F. Sor"
  opus = "Op. 6 No. 7"
  style = "Romantic"
  source = "N. Simrock, Berlin. Plate 9106"
  date = "c.1889"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "12 Etudes, No. 7"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/08/01-2127"
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

mbreak = { \break }
global = {
  \time 4/4
  \key d \major
}

upperVoiceA = \fixed c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \tuplet 3/2 {fis16 g fis} d8 e cis fis d g e |
  \tuplet 3/2 {a16 b a} fis8 gis eis a fis ais fis |
  b8 g d' b cis' a b g |

  \tuplet 3/2 {a16 b a} fis8 g e fis d a fis |
  \tuplet 3/2 {g16 a g} e8 fis d e cis g e |
  \tuplet 3/2 {fis16 g fis} d8 g e a fis d' fis |
  \tuplet 3/2 {b16 cis' b} g8 \tuplet 3/2 {a16 b a} fis8 \tuplet 3/2 {g16 a g} e8 fis d |

  e8 cis a cis gis b, g cis |
  \tuplet 3/2 {fis16 g fis} d8 e cis fis d g e |
  \tuplet 3/2 {a16 b a} fis8 gis eis a fis ais fis |
  b8 g d' b cis' a b g |
  a8 fis g e fis d a fis |

  \tuplet 3/2 {g16 a g} e8 fis d e cis g e |
  \tuplet 3/2 {fis16 g fis} d8 g e a fis d' fis |
  b8 g \tuplet 3/2 {g16 a g} e8 fis d e cis |
  fis8 d a, fis, d,4 r |
  \tuplet 3/2 {fis16 g fis} d8 a fis gis d b d |

  a8 cis cis' e b d a cis |
  \tuplet 3/2 {gis16 a gis} e8 fis d e cis d b, |
  cis8 a, e a, b, gis, e4 |
  \tuplet 3/2 {e16 fis e} d8 b d \tuplet 3/2 {e16 fis e} d8 b d |

  \tuplet 3/2 {e16 fis e} cis8 a cis \tuplet 3/2 {e16 fis e} cis8 a cis |
  \tuplet 3/2 {e16 fis e} d8 b d \tuplet 3/2 {e16 fis e} d8 b d |
  \tuplet 3/2 {e16 fis e} cis8 a cis \tuplet 3/2 {e16 fis e} cis8 a cis |
  e8 cis cis' e b d a cis |

  \tuplet 3/2 {gis16 a gis} e8 fis8 d a fis fis d |
  e8 cis cis a, d b, b, gis, |
  bis,8 gis, cis a, d b, dis bis, |
  e8 cis cis' e b d a cis |
  b8 gis a fis \tuplet 3/2 {gis16 a gis} e8 fis d |

  \tuplet 3/2 {e16 fis e} cis8 \tuplet 3/2 {d16 e d} b,8 \tuplet 3/2 {cis16 d cis} a,8 b, gis, |
  s1 |
  \tuplet 3/2 {e16 fis e} cis8 a cis e cis a cis |
  a4 gis gis2 |
  g!8 cis e cis a cis g cis |

  g8 d fis d g e gis eis |
  \tuplet 3/2 {a16 b a} fis8b g c' a a fis |
  b8 g cis' a \tuplet 3/2 {d'16 e' d'} b8 \tuplet 3/2 {cis'16 d' cis'} a8 |
  \tuplet 3/2 {b16 cis' b} g8 \tuplet 3/2 {a16 b a} fis8 \tuplet 3/2 {g16 a g} e8 \tuplet 3/2 {fis16 g fis} d8 |

  e8 cis a cis gis b, g cis |
  fis4 s4 s2 |
  e8 cis a cis gis b, g cis |
  fis8 d \tuplet 3/2 {a16 b a} fis8 \tuplet 3/2 {g16 a g} e8 \tuplet 3/2 {fis16 g fis} d8 |
  
  e8 cis a cis gis b, d' gis |
  cis'8 a a cis gis b, d' gis |
  cis'8 a b g! a fis gis e |
  a8 fis fis dis g e e cis |
  \tuplet 3/2 {fis16 g fis} d8 e cis fis d g e |

  \tuplet 3/2 {a16 b a} fis8 gis eis a fis ais fis |
  b8 g d' b cis' a b g |
  a8 fis g e fis d a fis |
  s4 fis e g |

  \tuplet 3/2 {fis16 g fis} d8 g e a fis d' fis |
  b8 g a fis g e fis d |
  e8 cis a cis gis b, g cis |
  \tuplet 3/2 {fis16 g fis} d8 e8 cis fis d g e |

  \tuplet 3/2 {a16 b a} fis8 gis eis a fis b gis |
  c'8 a b gis c' a ais fis |
  b8 g d' b cis' ais d' b |
  e'4 d' cis' b |
  b4 a g fis |

  e8 cis fis d g e e cis |
  fis d g e a fis g e |
  \tuplet 3/2 {fis16 g fis} d8 e cis fis d g e |
  \tuplet 3/2 {a16 b a} fis8 gis eis a fis b gis |
  c'8 a b gis c' a ais fis |

  b8 g d' b cis' ais d' b |
  s1 |
  s4 a d' a |
  a4 g fis e |

  d4 \tuplet 3/2 {a16 b a} fis8 gis eis a fis |
  \repeat unfold 2 {fis8 d \tuplet 3/2 {a16 b a} fis8 gis eis a fis |}
  cis'2( \once \override NoteColumn.force-hshift = #-1.0 cis') |

  <fis d'>4 \tuplet 3/2 {a16 b a} fis8 gis eis a fis |
  \repeat unfold 2 {fis8 d \tuplet 3/2 {a16 b a} fis8 gis eis a fis |}
  cis'1 |
  <d fis d'>2 q |
  q1
  
  \bar "|."
}

upperVoiceB = \fixed c' {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  g,4\rest e fis g |
  g,4\rest gis a ais |
  g,4\rest d' cis' b |

  g,4\rest g fis a |
  g,4\rest fis e g |
  g,4\rest g a d' |
  g,2 r4 gis, |

  e4 a gis g |
  g,4\rest e fis g |
  g,4\rest gis a ais |
  b4 d' cis' b |
  g,4\rest g fis a |

  g,4\rest fis e g |
  g,4\rest g a d' |
  b4 s fis e |
  fis4 a, d, s |
  s4 a gis b |

  a4 cis b a |
  s4 fis e d |
  cis4 e b, e |
  s4 b s b |

  s4 a s a |
  s4 b s b |
  s4 a s a |
  e4 cis' b a |

  s4 fis a fis |
  e4 cis d b, |
  bis,4 cis d dis |
  e4 cis' b a |
  b4 a s fis |

  s1*2 |
  s4 a e a |
  a8 d b, d b, d b, d |
  g4 e a g |

  g4 fis g gis |
  s4 b c' a |
  b4 cis' s2 |
  r4 d, g, gis, |

  s4 a gis g |
  fis8 d \tuplet 3/2 {a16 b a} fis8 \tuplet 3/2 {g16 a g} e8 \tuplet 3/2 {fis16 g fis} d8 |
  e4 a gis g |
  fis4 s s s |

  e4 a gis d' |
  cis'4 a gis d' |
  cis'4 b a gis |
  a4 fis g e |
  s4 e fis g |

  s4 gis a ais |
  b4 d' cis' b |
  a4 g fis a |
  \tuplet 3/2 {g16 a g} e8 fis d e cis g e |

  s4 g a d' |
  b4 a g s |
  s4 a gis g |
  s4 e fis g |

  s4 gis a b |
  c'4 b c' ais |
  b4 d' cis' d' |
  e'8 cis' d' b cis' a b g |
  b8 g a fis g e fis d |

  e4 fis g e |
  fis4 g a g |
  s4 e fis g |
  s4 gis a b |
  s4 b c' ais |

  b4 d' cis' d' |
  \tuplet 3/2 {e'16 fis' e'} cis'8 \tuplet 3/2 {d'16 e' d'} b8 \tuplet 3/2 {cis'16 d' cis'} a8 \tuplet 3/2 {b16 cis' b} g8 |
  \tuplet 3/2 {b16 cis' b} g8 a fis d' fis a fis |
  a8 fis g e fis d e cis |

  s2 gis4 a |
  s2 gis4 a |
  fis4 s gis4 a |
  e!8 g! e g \stemUp e g e g \stemDown |

  d4 s s s |
  s1*2 |
  e!8 g e g \stemUp e g e g |
  s1*2
}

lowerVoiceA = \fixed c {
  \voiceThree
  \repeat unfold 4 {d,1| }
  a,1 |
  d,1 |
  s1 |

  a1 |
  \repeat unfold 4 {d,1} |

  a,1 |
  d,1 |
  s1 |
  s1 |
  s1 |

  a,1 |
  s1*2 |
  gis1 |

  a1 |
  gis1 |
  a1 |
  a,1 |

  d1 |
  s1 |
  a,1 |
  a,1 |
  d1 |

  s1 |
  r8 a e cis a,4 r |
  s1*3 |

  d1 |
  d1 |
  g1 |
  s1 |

  a1 |
  s1 |
  \tieDown a,1~ |
  a,1 |

  \repeat unfold 4 {a,1} |
  d,1 |

  d,1 | d,1 | s1*2 |

  d1 | s1*2 | d,1 |

  d,1 | s1 | g1 | s1 | a,1 |
  a,1 | d1 | d1 | d,1 | d,1 |

  g1 | s1 | a,1 | a,1 |

  \repeat unfold 3 {d,1 |}
  a,1 |

  d,1 | d,1 | s1 | a,1 | s1 | d,1
}

lowerVoiceB = \fixed c {
  \voiceFour
  \repeat unfold 6 {s4 d2. |}
  s1 |

  s1 |
  \repeat unfold 4 {s4 d2. |}
  
  s1 |
  s4 d2. |
  g4 g a a, |
  d,2 s |
  d4 r e r |

  s1 |
  d2 r4 d |
  e2. r4 |
  s1

  s1*4 |

  s1 |
  e2. r4 |
  s1*3 |

  a,4 d e e, |
  a,2 a,4 s |
  \repeat unfold 3 {a,1} |

  \barNumberCheck #36
  s1*8 |

  s1*4 |
  g4\rest d2. |

  \repeat unfold 3 {e4\rest d2. |}
  s1

  s1 | g2. gis4 | a1 | g4\rest d2. |

  g4\rest d2. |
  d,2. d4 |
  s1*3 |

  s1*3 |
  \repeat unfold 2 {g4\rest d2. |}

  s1*4 |

  \repeat unfold 3 {b,4\rest d2. |}
  s2 a |

  s4 d2. | \repeat unfold 2 {g4\rest d2. |}
  s2 a |
  d,2 d |
  s1
}


\score {
  \header {
    piece = #"Tuning: DADGBE"
  }
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 7"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Allegro."
      \context Voice = "upperVoiceA" \upperVoiceA
      \context Voice = "upperVoiceB" \upperVoiceB
      \context Voice = "lowerVoiceA" \lowerVoiceA
      \context Voice = "lowerVoiceB" \lowerVoiceB
    >>
%{
    % tabs are not completely developed
    \new TabStaff = "Guitar tabs" \with {
      restrainOpenStrings = ##t
    } <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoiceA" \upperVoiceA
      \context TabVoice = "upperVoiceB" \upperVoiceB
      \context TabVoice = "lowerVoiceA" \lowerVoiceA
      \context TabVoice = "lowerVoiceB" \lowerVoiceB
    >>
%}
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 88
  }
}
