\version "2.16.1"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 4"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 4"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 4"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "N. Simrock"
  % From Boije 481-2, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/09/01-1868"
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
  \time 3/4 \key g\major
}


upperVoice = \relative {
  \voiceOne
  \slurDown
  \set fingeringOrientations = #'(up)
  g4. d8 g b |
  <d-4>4. <g,-0>8 <b-0> <d-3> |
  <g-4>8 <fis-2> <e-0> <d-4> <c-1> <b-0> |
  <d-4>4 <c-1> r |

  <c-1>2 c4 |
  b2 b4 |
  <a-2>8 <gis-1> a[ e'] <c-1> a |
  g4 <e-3>8 d <e-1> <fis-3> |

  g4 r8 d g b |
  <d-4>4 d,8 <g-0> <b-0> <d-3> |
  s2. |
  <d-4>4 <c-1> r |
  <c-1>2 c4 |
  b8 <c-1> <d-3> <e-0> <fis-2> <g-4> |
  e8 c a[ c] <fis,-3> <a-1> |
  s2. |

  <g b>4 c8\rest g b e |
  <a,-3 c-1>4 r8 c e c |
  <b-0>4 d8\rest <a-3> <fis'-4> <a,-3> |
  g4 g8\rest <b,-2> <e-3> g |

  b4. b8 e d |
  <cis-2>8 e <g-4> <cis,-2> <d-3>8[ <fis-1>8] |
  <fis-1>8( <e-0>) d\rest b <d-2>16( <cis-1>) <b-0> <cis-1> |
  e4 <d-3>8 <c-1> <a-2> <fis-4> |

  g4. d8 g b |
  <d-4>4. g,8 b d |
  <g-4>8 <fis-2> <e-0> <d-4> <c-1> <b-0> |
  <gis d'-4>4 <a-3 c-1> r |

  <c-1>2 c4 |
  <b-2>2 b4 |
  <gis-1>8( <a-2>8) <c-1>8[  e] <fis,-2> <d'-1> |
  <c-1 a-2>4 <b g>8 d,[ g b] |

  <d-3>4. g,8 <g'-4> d |
  e4 <e,-2>8 g <c-1> e |
  <d-4>4. <b-0>8 <c-1>8[ <fis-3>8] |
  <g-4 b,>2.

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  r8 <g-2>8~ <g b-1>2 |
  r8 <b-1>8~ <b d>2 |
  s2. |
  a4 r8 <e'-2> <a-3> <g-0> |

  <fis-4>8 <g-0> <a-2> <d,-0> <e-2>8[ <fis-4>8] |
  <g-0>8 <fis-4> g[ fis] <e-2> d |
  <c-3>2 a4 |
  d4 r r |

  r8 <e,-2>8( <b'-1>2) |
  s8 <b-1>8( b2)  |
  <g''-4>8 <fis-2> <e-0> <d-3> <c-1> <b-0> |
  a,4 r8 <e'-2> <a-3> <g-0> |

  <fis-4>8 g <a-2> d, <e-2>8[ <fis-4>8] |
  g2 b,4-1 |
  <c-3>4 r <d-4> |
  <g-0>8[ <d-0> <b-1> <d-0>8] \once\stemUp g, r |

  c8\rest <b-2>~ <b e-3>2 |
  e8\rest <e-2> <a-3>2 |
  r8 <b,-2>~ <b dis-1>2 |
  r8 e,8( <g-4>4) r |

  r8 <e'-2>~ <e g>2 |
  a2. |
  <g b>4 <g,-3> a |
  d4. r8 r4 |

  g8 \once\stemUp g,~ <g-2 b-1>2 |
  d''8 \once\stemUp b,~ <b d>2 |
  r4 r e, |
  a4. <e'-2>8 <a-3>8[ <gis-0>8] |

  <fis-4>8 <g-0> <a-2>8[ <d,-0>8] <e-2> <fis-4> |
  <g-0>8 <fis-4> <e-2>8[ <dis-1>8] <e-2> <d-0> |
  <c-3>2 <d-3>4 |
  <g,-3>4. r8 r4 |

  d''8 \once\stemUp b,~ <b d>2 |
  e'8 \once\stemUp c,~ c2 |
  d'8 \once\stemUp d, <d g>4 <d a'-2> |
  r8 g d <b-1> <g-2>4
}

middleVoice = \relative c' {
  \voiceThree
  \stemDown
  \set fingeringOrientations = #'(down)
  s2.*4 |
  s2.*4 |

  g8 \once\stemUp e, s2 |
  d''8 \once\stemUp b, s2 |
  s2.*2 |

  s2.*4 |

  e,2 s4 |
  a2 s4 |
  s2.*2 |

  s2. |
  g4\rest a d |
  s2.*2 |

  s8 <g,> s2 |
  s8 <b-1> s2 |
  s2.*2 |

  s2.*4 |

  s8 b s2 |
  s8 <c-3> s2 |
  s8 d s2 |
  s2.
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
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      \context Voice = "middleVoice" \middleVoice
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
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}
