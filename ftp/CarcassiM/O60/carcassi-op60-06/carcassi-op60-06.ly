\version "2.16.1"
\header {
  title = "Etude 6"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 6"
  mutopiacomposer = "CarcassiM"
  mutopiaopus = "O 60"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Mayence, B. Schott's Söhne"
  % From Boije 94
  date = "1853"
  enteredby = "Glen Larsen"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/09/01-1867"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

global = {
  \time 4/4
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

upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \tempo "Moderato"
  e2\f c |
  f2 r |
  <d-4>2 b |
  c2 r |

  e2 <c-2> |
  <d-2>2 b4 <g'-4> |
  <g-4>2 <fis-2> |
  g4 r r2 |

  g,8\mf b c <d-4> e d c b |
  c8 gis a b c b a g |
  fis8 a b c <d-4> c b a |
  b8 <fis-4> g a b c d b |
  g8 b c d e f! e d |

  c8 a b c <d-2> e d c |
  b8 g <g'-4> fis e d c b |
  b8 a g fis g4\< r |
  e'2\f c |
  f2 r |

  d2 b |
  c2 r |
  e2 <cis-2> |
  <d-4>8 cis d e f4 d |

  <c e>2 <b f'> |
  <c e>8 e\pf f g <a-4>4. <g-2>8 |
  f8 d e f <g-4>4. f8 |
  <e c>2\f q4 q |

  q2 <b f'> |
  <e c>8 e\pf f g a4. g8 |
  f8 d e f g4. f8 |
  e2\< f8 c fis\! c |

  g'8\> e c a\! <b g>2 |
  c8\mf e d c bes d c bes |
  c8 e d c d f e d |
  e8 e d c bes d\dim c\! bes |

  c8 e d c d f e d |
  <e c>4\p <aes, b> c f |
  <e c>4_\markup{\italic rall.} <aes, b> c f |
  < e c g>4 r8.\f c16_\markup{\italic "a tempo."} e4 g |
  c4 r\sf^\markup{\italic lento.} <c, aes f>2 |
  <e c>2\fermata r |

  \bar "|."
}


lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  c8 e f g a g f e |
  d8 e f e d e d c |
  <b-2>8 d e f g a g f |
  e8 f g f e f e d |

  c8 e f g <a-3> <gis-1> a g |
  <fis-3>8 d e fis g dis <e-2> b |
  <c-3>8 a b c d <c-3> b a |
  g8 b d <fis-4> g4 r |

  <b,-2>2 g |
  a2 r |
  <d-4>2 <fis,-2> |
  <g-3>4 r r2 |
  b2 <gis-4>4 e |

  a2 <fis'-3>4 d |
  <g,-3>4 e <d'-3> a |
  d8 c b a g f'! e d |
  c8 e f g a g f e |
  d8 e f e d e d c |

  b8 d e f g a g f |
  e8 f g f e f e d |
  c8 e f g <a-1> <bes-3> a g |
  <f-3>8 g f e d e f d |

  g8 g, c e g g, b g |
  c4 r r8 a8 <b-1> <cis-3> |
  d2 r8 <g,-3> a b |
  c8 b c b a gis a fis |

  <g-3>8 g' e <c-4> g d' b g |
  c4 r r8 a b cis |
  d2 r8 g, a b |
  c8 e g bes a4 aes |

  g2 g,8 f' e d |
  <g c,>2 <a c,> |
  <g c,>2 q |
  q2 <a c,> |

  <g c,>2 q |
  \repeat unfold 2 { g8 c, f c <e g> c <b' g> c, | }
  c4 s8. c16 e4 g |
  c4 s <f, c f,>2 |
  <g e c>2 s |
}

middleVoice = \relative c' {
  \voiceThree
}


\score {
  <<
    \new Staff = "Guitar" \with {
      \override DynamicTextSpanner #'style = #'none
      \override Fingering #'staff-padding = #'()
      \override Fingering #'add-stem-support = ##t
    }
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \global
      \clef "treble_8"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      %\context Voice = "middleVoice" \middleVoice
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
  \layout {
    \override Voice.StringNumber #'stencil = ##f
  }
  \midi {
    \tempo 4 = 180
  }
}
