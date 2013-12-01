\version "2.16.1"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 9"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 9"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 9"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "N. Simrock"
  % From Boije 481-2, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/12/01-1882"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
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
  \key a \major
}

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \tempo "Andante."

  <a-2>8 <cis-3> <e-0> cis <gis-1> b e b |
  <fis-3>8 <a-1> <d-2> a <e-1> <a-1> <cis-1> a |
  <d,-0>8 <a'-1> <fis'-2> a, <cis,-4> <a'-1> e' a, |
  <b,-2>8 <gis'-1> <e'-0> <d-4> <a,-0> <a'-2> <cis-3> <a-2> |

  e,8 <gis'-1> b gis a, <a'-2> <cis-3> <a-2> |
  <b,-1>8 <a'-2> <dis-4> <a-2> <cis,-4> <gis'-1> <e'-0> gis, |
  a,8 <fis'-3> <e'-0> <cis-1> <b,-1> <a'-1> <fis-3> <dis'-4> |
  e,,8 e'' <gis,-1> b <e,-2> gis b e |
  <a,-3>8 <cis-4> e cis <gis-1> b e b |

  fis8 a d a e a cis a |
  d,8 a' fis' a, cis, a' e' a, |
  <b,-1>8 <d'-2> <gis-4> <d-2> <a,-0> <cis'-1> <a'-4> <cis,-1> |
  <d,-0> <d'-2> <fis-1> <d-2> <b-3\3> d fis d |
  <gis,-1> <d'-4> e d <a-2> <cis-3> <e-0> <cis-3> |

  <d,-0>8 <b'-2\3> <d-1> <b-2\3> <e,-2> <gis-1> b gis |
  <a-3>8 <cis-4> <e,-2> <a-3> s4 b\rest |
  \bar "||"
  e,,8 <gis'-1> b gis <e-2> gis b gis |
  e,8 <a'-3> <cis-4> <a-3> <e-2> cis' <e-0> cis |
  e,,8 <b''-3\3> <d-2> <b-3\3> <e,-1> <a-1> <cis-1> <a-1> |

  e,8 a' cis a e gis b gis |
  e,8 gis' b gis e gis b gis |
  e,8 a' cis a e cis' e cis |
  e,,8 b''\3 d b\3 e, a cis a |
  e,8 gis' b gis e gis b e |

  a,,8 <a'-2> <cis-3> <a-2> b, <a'-2> <d-4> a |
  <cis,-4>8 <a'-2> <e'-0> a, cis, <a'-2> <eis'-1> a, |
  <d,-0>8 <a'-2> <fis'-1> <a,-2> <b,-2> <ais'-3> e' ais, |
  <b,-1>8 <b'-3>\3 <dis-4> <b-3>\3 dis, <a'-3> <fis'-4> <a,-3> |
  <e-2>8 <gis-1> e' gis,e gis <d'-4> gis, |

  <eis-3>8 <gis-1> <cis-2> <gis-1> <fis-3> <a-1> <cis-1> <a-1> |
  <d,-0>8 <a'-1> <b-0> a <dis,-1> <a'-2> <b-0> <a-2> |
  <e-2>8 b' <gis-1> b e b gis b |
  a8 cis e cis gis b e b |
  fis a d a e a cis a |

  d,8 a' fis' a, cis, a' fis' a, |
  b,8 gis' e' d a, a' cis a |
  e8 gis b gis a, <a'-1> <cis-1> <a-1> |
  <b,-1>8 <fis'-3> <d'-2> <fis,-3> <e,-4> <gis'-1> b gis |
  a, <a'-2> <cis-2> <a-2> <d,-0> <b'-2> <e-4> <d-1> |

  e,8 <a-3> <cis-4> <a-3> <gis-1> b e b |
  a8 cis e cis gis b e b |
  <fis-2>8 <a-1> <a'-4> a, <e-1> <a-1> <gis'-4> a, |
  <d,-0>8 <a'-1> <fis'-2> a, <cis,-4> <a'-1> <e'-0> a, |

  <b,-2>8 gis' <e'-0> <d-4> a, <cis'-4> <e,-2> <a-3> |
  <dis,-1>8 <a'-3> <b-0> <a-3> <d,-0> <gis-1> <e'-3> <gis,-1> |
  <cis,-4>8 <a'-1> <e'-0> a, <d,-0> <b'-3\3> <d-2> <b-3\3> |
  <e,-2>8 <a-3> <cis-4> <a-3> <e,-0> <gis'-1> <b-0> gis |
  <a,-0>8 <a'-1> <e-1> <cis-3> <a-0>4 r |

  \bar "|."
}

lowerVoice = \relative c' {
  \set fingeringOrientations = #'(down)
  \voiceTwo
  a2 gis |
  fis2 e |
  d2 cis |
  b2 a |

  e2 a |
  b2 cis |
  a2 b |
  e,2 e' |
  a2 gis |

  fis2 e |
  d2 cis |
  b2 a |
  d2 b'\3 |
  gis2 a |

  d,2 e |
  s2 a,4 s |			%||
  \repeat unfold 3 {e2 e' |}

  \repeat unfold 5 {e, e' | }

  a,2 b |
  cis2 cis |
  d2 b |
  b2 dis |
  e2 e |

  eis2 fis |
  d2 dis |
  e2 e' |
  a,2 gis |
  fis2 e |

  d2 cis |
  b2 a |
  e'2 a, |
  b2 e, |
  a2 d |

  e2. r4 |
  a2 gis |
  fis2 e |
  d2 cis |

  b2 a4 e' |
  dis2 d |
  cis2 d |
  e2 e, |
  a2 s
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
    \tempo 4 = 180
  }
}
