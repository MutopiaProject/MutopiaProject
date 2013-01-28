\version "2.16.1"

\header {
  title = "Caprice No. 3"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  % Boije 91
  composer = "Mateo Carcassi"
  opus = "Op. 26 No. 3"
  year = "19th Century"
  mutopiacomposer = "CarcassiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
 footer = "Mutopia-2012/12/28-0"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
  line-width = 18.0\cm
  markup-system-spacing #'padding = #2
%{ uncomment for note entry
  ragged-bottom = ##t
  ragged-last = ##t
%}
}

commonVar = {
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
  \override TextSpanner #'staff-padding = #6
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}

\layout {
  \context {
    \Voice
    \override StringNumber #'stencil = ##f
  }
}


upperVoice = \relative c, {
  \voiceOne
  e8^\markup{"Moderato con espressione"} g' b e g, b e, g b e, a c |
  e,,8 g' b e g, b g' g, b b, g' b |
  e,,8 g' b e g, b e, g b e, a c |
  \barNumberCheck #4
  e,,8 g'-3 b e-2 g, b g'-4 g, b b, g'-2 b |
  dis,8 a'-3 b eis-2 a, b fis'-4 a, b b,-2 a' b |
  e,8-2 g b fis'-3 g, b g'-4 g, b b, g' b |
  fis8-4 b\3 dis-2 a'-4 b,\3 dis e, g d\5 g' g, b |
  \barNumberCheck #8
  fis'8 b, e, d b' c, b b' a, g b' fis, |
  e8 g' b e g, b e, g b e, a c |
  e,,8 g' b e g, b g' g, b b, g' b |
  e,,8 g' b e g, b e, g b e, a c |
  \barNumberCheck #12
  e,,8 g' b e g, b g' g, b e, g b |
  d,8\mf c'\3 d gis\> c,\3 d a' c,\3 d\! d, c' fis |
  g,8 b g' d, b' g' b,, b' g' g,, b' g' |
  d,8 c'\3 d gis\> c,\3 d a' c,\3 d\! d, c' fis |
  \barNumberCheck #16
  g,8 b g' d, b' g' b,, b' g' g,, b' g' |
  d,8 a' b eis\> a, b fis' a, b\! b, a' d |
  e8 g, b b, g' b g, g' b e,, g' b |
  d,8 a' b eis\> a, b fis' a, b\! b, a' d |
  \barNumberCheck #20
  e8 g, b b, g' b g, g' b e,, g' b |
  a,8\sf a' c f\> a, c f a, c e a, c\! |
  a,8 a'-4\4 c-2\3 dis-1 c\3 a\4 g, g' b e b g |
  a,8\sf a' c f\> a, c f a, c e\! a, c |
  \barNumberCheck #24
  a,8 a' c dis c a g, g' b e b g |
  a,8 a'-3 c-1 f-2 a, c a' a, c a, a' c |
  b,8 g' b e g, b g' g, b b, g' b |
  b,8 fis'-3 a-1 dis-4 fis, a fis'-1 fis, a b, fis' a |
  \barNumberCheck #28
  e,8\sf g' b e g, b e,\p g b e, a c |
  e,,8 g' b e g, b g' g, b b, g' b |
  e,,8\sf g' b e g, b e,\p g b e, a c |
  e,,8 g' b e g, b b' g, b b,\6 g' b |
  \barNumberCheck #32
  e,,8 g' b e g, b e' g,, b b,\6 g' b |
  e,,8 g' b e g, b g'' g,, b b,\6 g' b |
  e,,8 g' b e g, b e, g b, e g, b |
  e,2_\fermata g'1\rest
  \bar "||"
}

lowerVoice = \relative c, {
  \voiceTwo
  e2\sf s4 e'4 s8 e4 s8 |
  e,2 s2 s8 b'4 s8 |
  e,2\sf s4 e'\p s8 e4 s8 |

  e,2. s4. b'4 s8 |
  dis2. s4. b4 s8 |
  e2.  s4. b4 s8 |
  fis'2\f s4 e2 s4 |

  dis4 e8 d4 c8 b4 a8 g4 fis8 |
  e2\sf s4 e'4\p s8 e4 s8 |
  e,2. s4. b'4 s8 |
  e,2\sf s4 e'4\p s8 e4 s8 |

  e,2. s4. e'4 s8 |
  d2. s4. d4 s8 |
  g4 s8 d4 s8 b4 s8 g4 s8 |
  d'2 s2 s8 d4 s8 |

  g4 s8 d4 s8 b4 s8 g4 s8 |
  dis'2 s2 s8 b4 s8 |
  e4 s8 b4 s8 g4 s8 e4 s8 |
  dis'2. s4. b4 s8 |

  e4 s8 b4 s8 g4 s8 e4 s8 |
  a2 s2 s2 |
  a2 s4 g2 s4 |
  a2 s2*2 |

  a2 s4 g2 s4 |
  a2. s4. a4 s8 |
  b2. s4. b4 s8 |
  b2. s4. b4 s8 |

  e,2 s4 e'4 s8 e4 s8 |
  e,2. s4. b'4 s8 |
  e,2 s4 e'4 s8 e4 s8 |
  e,2. s4. b'4\6 s8 |
  \override DynamicTextSpanner #'style = #'none
  e,2.\dim s4. b'4\6 s8 |
  e,2.\pp s4. b'4\6 s8 |
  e,2 s4 e' s8 e4 s8
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      midiMinimumVolume = #0.3
      midiMaximumVolume = #0.6
    } <<
      \commonVar
      \clef "treble_8"
      \key e \minor \time 12/8
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "guitar tab" \with {
      restrainOpenStrings = ##t
    }
    <<
      \clef moderntab
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}
