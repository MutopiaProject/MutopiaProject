\version "2.19.32"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 24"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 24"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 24"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "N. Simrock"
  % From Boije 481-2, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/23-2087"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2015 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

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

global = {
  \time 4/4
  \key e \minor
}

mbreak = { \break }

upperVoice = \relative c {
  \voiceOne
%  \set fingeringOrientations = #'(up)
  \tempo "Allegro moderato."

  e16 e' g, b g b g b e, e' g, b e, e' g, b |
  e,16 g' g, b g b g b e, g' g, b g b g b |
  \mbreak

  dis,16 <fis'-4> <a,_3> b a b a b <b,_2> <g''-4> a, b dis, fis' a, b |
  <e,-2>16 <fis'-4> g, b g b g b  e, e' g, b g b g b |
  <e,_2>16 <g'-4> g, b g b g b <e,_2> <g'-4> g, b <e,_1> g' g, <cis-3> |
  \mbreak

  d,16 <fis'-2> <a,_1> <d_3> a d a d <b,-1> <fis''-2> <g,-0> <d'-3> g, d' g, d' |
  c,16 e' g, c g c g c a, <fis''-3> <a,_1> <cis_1> a, <e''_0> a, cis |
  b,16 <dis'-4> <fis,_2> <b_3> fis b fis b s2 |
  \mbreak

  e,16 e' g, b g b g b e, e' g, b e, e' g, b |
  e,16 g' g, b g b g b e, g' g, b g b g b |
  <dis,_1>16 <fis'-4> <a,_3> b a b a b <b,_2> <g''-4> a, b dis, <fis'-4> a, b |
  \mbreak

  e,16 fis' g, b g b g b e, e' g, b g b g b |
  e,16 g' g, b g b g b e,, g'' g, b e, g' g, b |
  a, <g''-4> <a,-2> <c-1> a <fis'-3> a, c a <f'-1> a, c a, c' a c |
  \mbreak

  <b,_1>16 e' g, b g b g b b, <dis'-4> <fis,_3> <a-1> fis a fis a |
  e,16 e'' b e b e g, e' s4 r |
  e,16 g' g, b g b g b e, g' g, c e, g' g, cis |
  \mbreak

  d,16 g' a, d a d a d d, fis' a, d a d a d |
  d, a'' c, d c d c d fis, a' c, d d, a'' c, d |
  g,16 a' b, d b d b d g, g' b, d b d b d |
  \mbreak

  <g,_1>16 <b'-4> <d,_3> <f_2> d f d f g, b' d, f gis, b' d, f |
  a,16 b' c, e c e c e a,, c'' c, e c e c e |
  d, fis' a, c a c a c d, fis' a, c dis, fis' a, c |
  \mbreak

  e,16 fis' g, b g b g b e, g' g, b g b g b |
  cis, e' g, ais g ais g ais cis, e' g, ais cis, e' g, ais |
  d, d' g, b g b g b d, g' b, d b d b d |
  \mbreak

  d,16 g' bes, cis bes cis bes cis d, fis' a, c d, fis' a, c |
  g16 g' d, b' b, g' d g s4 r |
  g16 b' b, d b d b d g, b' b, d g, b' b, d |
  \mbreak

  fis,16 ais' cis, e cis e cis e fis, ais' cis, e cis e cis e |
  fis,16 a' c, e c e c e fis, a' b, dis fis, a' b, fis' |
  e,16 g' b, e b e b e e, g' b, e b e b e |
  \mbreak

  g,,16 e'' e, b' e, b' e, b' g, e'' e, b' g, e'' e, b' |
  a,16 fis'' e, c' e, c' e, c' a, fis'' e, c' e, c' e, c' |
  ais,16 fis'' e, cis' e, cis' e, cis' ais, fis'' e, cis' ais, fis'' e, cis' |
  \mbreak

  b,16 fis'' dis, b' dis, b' dis, b' b,8 b' a b |
  e,16 e' g, b g b g b e, e' g, b e, e' g, b |
  e,,16 g'' g, b g b g b e, g' g, b g b g b |
  \mbreak

  dis,16 fis' a, b a b a b b, g'' a, b dis, fis' a, b |
  e,16 fis' g, b g b g b  e, e' g, b g b g b |
  e,,16 b''' g, b g b g b g e' g, b g e' g, b |
  \mbreak

  a,16 g'' a, c a fis' a, c a f' a, c a, c' a c |
  b,16 e' g, b g b g b g, dis'' fis, a g, dis'' fis, a |
  e,16 e'' g, b g b g b e,8 b' e, g' |
  \mbreak

  g,16 b' b, e b e b e g, b' b, e g, b' b, e |
  fis,16 b' c, e c e c e c a' c, e fis, e' c e |
  b,16 a'' b, dis b dis b dis b a' b, dis b, a'' b, dis |
  \mbreak

  e,,16 a'' b, dis b dis b dis b g' b, e b e b e |
  c,16 e' g, c g c g c c, e' g, c c, e' g, c |
  \mbreak

  a,16 g'' a, c a c a c a, fis'' a, c a c a c |
  b,16 e' g, b g b g b b, dis' fis, a b, dis' e, a |
  e,16 e'' e, g b, g' e g s4 r_"Fine."

  \bar "|."
}

lowerVoice = \relative c {
%  \set fingeringOrientations = #'(down)
  \voiceTwo
  e2 e4 e |
  e2 e2 |

  dis2 b4 dis |
  e2 e |
  e2 e4 e |

  d2 b |
  c2 a4 a |
  b2 b8 <b'-3> <a-1> <fis-2>  |

  e2 e4 e |
  e2 e |
  dis2 b4 dis |

  e2 e |
  e2 e,4 s |
  a2 s4 a |

  b2 b |
  e,2 <e'-2>4 s |
  e2 e4 e |

  d2 d |
  d2 fis4 d |
  g2 g |

  g2 g4 gis |
  a2 a, |
  d2 d4 dis |

  e2 e |
  cis4 s cis cis |
  d2 d |

  d2 d4 d |
  g8 d b d g,4 s |
  g'2 g4 g |

  fis2 fis |
  fis2 fis4 fis |
  e2 e |

  g,2 g4 g |
  a2 a |
  ais2 ais4 ais |

  b2 b |
  e2 e4 e |
  e,2 e' |

  dis2 b4 dis |
  e2 e |
  e,2 s |

  a2 s4 a |
  b2 g4 g |
  e2 s |

  g'2 g4 g |
  fis2 s4 fis |
  b,2 s4 b |

  e,2 s |
  c'2 c4 c |

  a2 a |
  b2 b4 b |
  e,4 b' e, s
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
    >>
%{
    \new TabStaff = "Guitar tabs"
    <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 94
  }
}

% markup from the bottom of the first page of the score.
\markuplist {
  \wordwrap-lines { \italic {
    n.b. Le doigt qui fait la plus haute note doit la conserver tant qu'il n'est
    pas obligé d'en faire une autre.
  }}
  \wordwrap-lines { \italic {
    Der Finger welcher die höchste Note greift muss sie so lange anhalten bis es nöthig wird eine andere zu nehmen.
  }}

}
