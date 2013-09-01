\version "2.16.1"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 5"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 5"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 5"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "N. Simrock"
  % From Boije 481-2, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/09/01-1869"
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

global = {
  \time 2/4
  \key g \major
}

upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \set fingeringOrientations = #'(up)
  \tempo "Allegretto."

  \repeat volta 2 {
    g16 b a <c-1> b <d-1> c <e-4> |
    b16 <d-1> g, b a <c-1> b <d-1> |
    c16 <e-4> d <fis-1> e <g-1> c, <e-4> |

    ais,16 <cis-1> g <cis-1> b <d-1> g, <g'-1> |
    g,16 b a <c-1> b <d-1> c <e-4> |
    b16 <d-1> g, <b-0> e <g-1> d <fis-1> |
    c16 e b d  a c g b |

    fis16 <a-1> d, <d'-2> e, <cis'-2> fis, <c'-1> |
    g16 b <a-1> c <b-1> d c <e-4> |
    b16 <d-1> g, <b-0> e <g-1> dis <fis-1> |
    e16 <g-1> d <fis-1> c <e-4> b <dis-4> |

    b16 dis g, dis' c <e-4> r8 |
    e16 <g-1> dis <fis-1> e <g-1> c, <e-4> |
    b16 <d-1> g, <b-0> e <g-1> c, <e-4> |
    <b-2>16 <d-1> g, <b-0> a <c-1> fis, <a-2> |

    g16 b d, g s4 |
  }
  \repeat volta 2 {
    fis16 a d, <d'-2> fis, a d, d' |
    g,16 <b-2> d, <d'-1> g, b d, d' |
    a16 <c-2> d, <d'-1> a c d, d' |

    g,16 <b-2> <d,-0> <d'-1> g, b d, d' |
    fis,16 <a-1> <d,-0> <d'-2> fis, a d, d' |
    g,16 <b-2> <d,-0> <d'-1> g, b d, d' |
    g,16 <cis-1> d, e' g, cis d, e' |

    fis,16 <d'-2> d, d' e, <cis'-2> fis, <c'-1> |
    g16 b a c b d c e |
    b16 d g, b a c b d |
    c16 e d fis e g c, e |

    ais,16 cis g cis b d g, g' |
    g,16 b a c b d c e |
    b16 d g, b e g d fis |
    c16 e b d a c g b |

    fis16 a d, d' e, cis' fis, c' |
    g16 b a c b d c e |
    b16 d g, b g' <b-1> fis <a-1> |
    e16 <g-1> d <fis-1> c <e-4> b <dis-4> |

    b16 <d-4> c <e-4> e <g-1> dis <fis-1> |
    fis16 <a-1> e <g-1> d <fis-1> c <e-4> |
    c16 <e-4> b <d-1> b g' g, <b-0> |
    b16 d a c g b fis a |
    g16 b d, g g,4
  }
}

lowerVoice = \relative c' {
  \set fingeringOrientations = #'(down)
  \voiceTwo
  g8 <a-2> <b-2> <c-3> |
  <b-2>8 g <a-2> <b-2> |
  <c-3>8 <d-2> <e-4> <c-3> |

  <ais-2>8 <g-0> <b-2> <g-3> |
  g8 <a-2> <b-2> <c-3> |
  <b-2>8 <g-0> <e'-3> <d-2> |
  c8 b a g |

  <fis-3>8 d <e-1> <fis-4> |
  g8 <a-2> <b-2> <c-3> |
  <b-2>8 <g-0> <e'-4> <dis-4> |
  e8 <d-1> <c-2> <b-3> |

  b8 g <c-3> <g-0> |
  <e'-4>8 <dis-4> <e-4> <c-3> |
  <b-2>8 <g-0> <e'-4> <c-3> |
  b8 <g-0> <a-2> <fis-4> |

  g8 d <g,-2>4 |
  <fis'-3>8 <d-0> fis d |
  <g-3>8 d g d |
  <a'-4>8 <d,-0> a' d, |

  <g-3>8 d g d |
  <fis-3>8 d fis d |
  <g-3>8 d g d |
  g8 d g d |

  <fis-3>8 d e fis |
  g8 a b c |
  b8 g a b |
  c8 d e c |

  ais8 g b g |
  g8 a b c |
  b8 g e' d |
  c8 b a g |

  fis8 d e fis |
  g8 a b c |
  b8 g <g'-2> fis |
  <e-3>8 <d-2> <c-3> <b-3> |

  <b-3>8 <c-3> <e-4> <dis-3> |
  <fis-3>8 <e-3> <d-2> <c-3> |
  <c-3>8 <b-2> b <g-0> |
  b8 a g fis |
  g8 d s4
}


\score {
  <<
    \new Staff = "Guitar" \with {
      \override DynamicTextSpanner #'style = #'none
      %\override Fingering #'staff-padding = #'()
      \override Fingering #'add-stem-support = ##t
      \override DynamicText #'self-alignment-X = #-1
    }
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
    \tempo 4 = 90
  }
}
