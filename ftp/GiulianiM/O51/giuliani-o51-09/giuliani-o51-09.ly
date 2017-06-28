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
  mutopiatitle = "18 Progressive Lessons, No. 9"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/06/28-2188"
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

nineT = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  r16 a\sf( b\3) a\p e a cis a e a cis a |
  r16 a( b\3) a \fixed c' {cis8 e\p a gis} |
  << {a16\rest a\sf( b\3) a fis a d\p a fis a d a} \\
     {\voiceThree fis'4 r r} >>  |

  \mbreak
  r16 a\sf( b\3) a \fixed c' {d8 fis a fis} |
  << {a16\rest a\sf( b\3) a e a cis\p a e a cis a} \\
     {\voiceThree e'4 r r} >> |
  r16 a\sf( b) a \fixed c' {cis8 e fis e} |

  \mbreak
  << {a16\rest e\sf( fis) e\p b, e gis, e b, e gis, e} \\
     {\voiceThree d'4 r r} >> |
  a16\rest e( fis) e\sf gis e b e e' e d' e |
  cis'16_! e'( fis') e' d' e'_! b e' gis e' b e' |

  \mbreak
  cis'16 e'\sf( fis') e'_! d' e' b e' gis e' b e' |
  r16 a cis' e' eis'( fis') gis'_! fis'_! cis' d' fis b |
  a16\rest cis e a gis8 r8 r4 |

  \mbreak
  r16 a\sf( b\3) a_! e\p a cis a e a cis a |
  r16 a\sf( b\3) a \fixed c' {cis8\p e a gis} |
  << {a16\rest a\sf( b\3) a\p fis a d a fis a d a} \\
     {\voiceThree fis'4 r r} >>  |

  \mbreak
  r16 a\sf( b\3) a_! \fixed c' {d8 fis\p a fis} |
  << {a16\rest a\sf( b\3) a e a cis a e a cis a} \\
     {\voiceThree e'4 r r} >> |
  r16 a\sf( b\3) a_! \fixed c' {cis8 e\p fis e} |

  \mbreak
  \fixed c' {
    d16 b,\3 d e\2 gis e\2 b d\3 cis\3 a e\2 cis\3 |
    gis16( e) d_! b,_! fis( e) cis_! a,_! e\2( d) b,_! gis,_! |
    r16 a, cis e dis[ e \slashedGrace{gis} fis e] d e b, e |
    \mbreak
    cis16 a, cis e a( gis) fis e d e b, e |
    cis16( b,) a, b, cis d e fis gis( a) e cis |
    \mbreak
    ais,16 b, d fis dis( e\2) cis ais, e\2( d) b, gis, |
  }
  a16 e' cis' a e cis' a e cis a e cis |
  a,4 <a cis' a'> r |

  \bar "|."
}


nineB = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(Down)
  \override Fingering.add-stem-support = ##t

  a,4 e8 cis e cis |
  a,4 cis'16 a e' a a' a gis' a |
  a,4 fis8 d fis d |

  a,4 d'16 a fis' a a' a fis' a |
  a,4 e8 cis e cis |
  a,4 cis'16 a e' a fis' a e' a |

  e,4 b,8 gis, b, gis, |
  e,4 r r |
  a,4 e,8 gis, b, d |

  cis4 e,8 gis, b, d |
  cis4 d2 |
  e,4 <e, b,>16 dis( fis) e \slashedGrace{e8} d16 cis d b, |

  a,4 e8 cis e cis |
  a,4 cis'16 a e' a a' a gis' a |
  a,4 fis8 d fis d |

  a,4 d'16 a fis' a a' a fis' a |
  a,4 e8 cis e cis |
  a,4 cis'16 a e' a fis' a e' a |

  e,4 e, a, |
  d4 e, e, |
  a,2 e,8 gis, |

  a,2 e,8 gis, |
  a,2 a,4 |

  d4 e, e, |
  a,4 r r |
  s4 <a, e> r |
}

nine = {
  <<
    \clef "treble_8"
    \time 3/4 \key a \major
    \tempo "Allegretto."
    \context Voice = "Etude 9 treble" \nineT
    \context Voice = "Etude 9 bass" \nineB
  >>
}

nine_tabs = {
  <<
    \clef "treble_8"
    \time 3/4 \key a \major
    \context TabVoice = "Etude 9 treble" \nineT
    \context TabVoice = "Etude 9 bass" \nineB
  >>
}


\score {
  <<
    \new Staff = "guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 9"
      \override StringNumber #'stencil = ##f
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \nine
    >>
%    \new TabStaff { \nine_tabs }
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 80
  }
}
