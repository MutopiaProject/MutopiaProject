\version "2.16.1"
\header {
  title = "Etude 14"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 14"
  mutopiatitle = "25 Studies: No. 14"
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

 footer = "Mutopia-2013/09/22-1874"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

global = {
  \time 2/4
  \key d \major
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
    \override DynamicTextSpanner #'style = #'none
    \override Fingering #'staff-padding = #'()
    \override Fingering #'add-stem-support = ##t
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  }
}


upperVoice = \relative c' {
  \voiceOne
  \tempo "Allegretto moderato."
  d16\mf fis e d cis b a g |
  <fis-3>16 g a b cis d e fis |
  g16 fis e fis g e a g |
  fis16 g a g fis g e fis |
  <d-3>16 e fis e d cis b a |

  dis16 a b cis d <e-0> fis gis |
  a16 cis b a gis b a gis |
  a16 cis e cis a8 r |
  a,16\f cis b a gis a b cis |
  d8 r r4 |

  r16 d cis b ais b cis d |
  e8 r r4 |
  r16 e d cis b a a' gis |
  fis e d cis d cis b a |

  gis16 a b cis d e fis gis |
  a16 b\< cis d dis\> e d cis\! |
  d16 cis b a gis fis <e-0> <d-2> |
  cis16 e a gis gis fis e d |

  cis16 e d cis b d cis b |
  a16 b cis d e fis g e |
  d16\mf fis e d cis b a g |
  <fis-3>16 g a b a g fis e |

  d16 e fis g a b c a |
  b8\f r r4 |
  r16 b ais b cis dis e fis |
  g8 r r4 |

  r16 b, g' fis e d cis b |
  cis16 gis a b cis d e fis |
  g16\mf fis e fis g e a g |
  fis16 <a-2> gis a gis a b a |

  g16 fis e fis g <e-0> <a-4> <g-2> |
  fis16 a\< d cis\! cis b\> a g\! |
  fis16 a g fis <e-0> g fis e |
  d16 cis b a g fis e d |

  e16 fis\< g a b cis d e\! |
  fis16\f g gis a e g fis e |
  d16 fis e d cis e d cis |
  d4 r |
  <cis e a>8\ff r <e g cis> r |
  <d fis d'>2

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(left)
  d2 |
  <d-4>2 |
  a2 |
  d2 |
  <b-1>2 |

  e,2 |
  a4 e4 |
  a2 |
  a2 |
  r16 b d cis b a gis fis |

  e8 r r4 |
  r16 cis' e d cis d b cis |
  a2 |
  d2 |

  e,2 |
  a2 |
  e2 |
  a4 d |

  e,4 e |
  a2 |
  d2 |
  <d-4>8 r r4 |
  s2 |
  r16 g, a b c d e fis |
  g8 r r4 |
  r16 e, fis g a b cis dis |

  fis8 r r4 |
  a,2 |
  a2 |
  d2 |

  a2 |
  d4 g |
  a,4 a |
  d2 |

  a2 |
  d4 g |
  a,4 a |
  d4 r |
  a8 r a r |
  d2
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
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}
