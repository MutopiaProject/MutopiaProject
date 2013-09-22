\version "2.16.1"
\header {
  title = "Etude 11"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 11"
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

 footer = "Mutopia-2013/09/22-1871"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

global = {
  \time 2/4 \key d \minor
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
  \tempo "Agitato"

  \partial 8. { a16[ b cis] } |
  d8 r r16 a d e |
  f8 r r16 a, d f |
  a8 r r16 f e d |
  e8 r r16 a, cis d |

  e8 r r16 a, e' f |
  g8 r r16 a, cis e |
  a8 r r16 g f e |
  f8 r r16 f e d |
  c8 r r16 <bes'-4> <a-3> <g-1> |

  f8 r r16 f e f |
  <g-4>8 r r16 f e f |
  a8 r r16 f e d |
  cis8 r r16 g' f e |
  f8 r r16 d f a |

  gis8 r r16 f e d |
  a'8 r r16 a g a |
  bes8 r r16 g f e |
  a8 r r16 f e d |
  cis8 r r16 g' f e |

  d8\p r r16 a b cis |
  d8 r r16 a d e |
  f8 r r16 a, d f |
  a8 r r16 f e d |
  ees8 r r16 <bes-1> \<<ees-2> <g-1>\! |

  <bes-4>8 r r16 g f ees |
  d8 r r16 a d f |
  a8 r r16 g f e |
  d8 r r4

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \partial 8. { r16\pf r8 } |
  r16 d f a d,8 r |
  r16 d f a d,8 r |
  r16 d f a d,8 r |
  r16 cis e a a,8 r |

  r16 a cis e a,8 r |
  r16 a cis e a,8 r |
  r16 cis e a a,8 r |
  r16 d f a d,8 r |
  r16\mf e f g c,8 r |

  r16 a' bes c f,8 r |
  r16 e g c c,8 r |
  r16 f a c f,8 r |
  r16 e f g a,8 r |
  r16 f' g a d,8 r |

  r16 bes d e f8 r |
  r16 a, e' cis a8 r |
  r16\mf cis e g a,8 r |
  r16 d f a a,8 r |
  r16\> bes' g e\! cis8\dim a |

  r16\! d a' f d8 r |
  r16\mf d f a d,8 r |
  r16 d f a d,8 r\cresc |
  r16\! d f a d,8 r |
  r16\f g, bes e g,8 r |

  r16\f ees' g bes ees,8 r |
  r16 a, d f a,8 r |
  r16\mf cis e a a,8 r |
  r16\p d a' f d8 r
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
  \layout {
    \override Voice.StringNumber #'stencil = ##f
  }
  \midi {
    \tempo 4 = 100
  }
}
