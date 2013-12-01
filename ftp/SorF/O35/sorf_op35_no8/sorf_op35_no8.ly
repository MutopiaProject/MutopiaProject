\version "2.16.1"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 8"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 8"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 8"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "N. Simrock"
  % From Boije 481-2, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/12/01-1878"
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
  \time 3/8
  \key e \major
}

upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \set fingeringOrientations = #'(up)
  \tempo "Allegretto."

  \partial 8 { b8 } |
  <e,-2>16 b' <gis-1> e' b8 |
  e16 b gis e' b8 |
  <dis,-1>16 b' <a-3> <fis'-4> b,8 |

  dis,16 b' a fis' b,8 |
  <e,-2>16 <gis-1> b e <gis-1>16 <b-4> |
  <b-4>8 <cis,-2> <a'-1> |
  r8 <fis-4 a,-3>8 q |
  <e gis,>8 b\rest

  \repeat volta 2 {
    b8 |
    <ais-2>16 <cis-1> fis, ais cis <e-0> |
    <e-0>8 <dis-4> b |
    ais16 cis fis, ais cis e |
    e8[ dis] <b'-4> |
    <b-4>8 <b,-0> b |

    <b-0>8 <gis'-4> <e-0> |
    <dis-4>8 fis16( e) <cis-1 ais-2>8 |
    <b-0>8 r <b-0> |
    <e,-2>16 b' <gis-1> e' b8_. |
    e,16 b' gis e' b8_. |
    <dis,-1>16 b' <a-3> <fis'-4> b,8_. |

    dis,16 b' a fis' b,8_. |
    <e,-2>16 <gis-1> b e <gis-1>16[ <b-4>16] |
    b4 a8 |
    r8 <fis a,> <fis a,> |
    <e gis,>8 b\rest
  }
  \repeat volta 2 {
    e8 |
    <cis-1>16. <e-0>32 <a-4>8 a |

    cis,16. e32 a8 a |
    <gis-3>16( <e-0>) <d-2>16[( <b-0>16)] <e-0> <d-3> |
    <bis-1>8( <cis-1>) e |
    cis16. e32 a8 a |
    cis,16. e32 a8 a |
    <gis-3>16. <fis-1>32 <e-0>16. <d-2>32 \grace {d16} <cis-1>16. <b-0>32 |

    <a-2>8 b\rest
  }
  \repeat volta 2 {
    <cis-2 a-1>8 |
    <d-2 b-3>8 \times 2/3 { b'16 gis e } <d b>8 |
    <cis-2 a-1>8 e <cis a> |
    <d-2 b-3>8 \times 2/3 { b'16 gis e } <d b>8 |
    <cis-2 a-1>8 e e |
    << { <cis-1>4. } \\ { cis16. e32 <a-4>8 a } >> |

    a16 fis d8[ b] |
    <a-3>16. <cis-4>32 e8 <gis,-1> |
    <a-3>8 b\rest
  }
  \repeat volta 2 {
    b8 |
    e,16 b' gis e' b8 |
    e,16 b' gis e' b8 |

    dis,16 b' a fis' b,8 |
    dis,16 b' a fis' b,8 |
    e,16 gis b e gis[ b] |
    b8 cis, a' |
    r8 <e a,> q |
    <e gis, e,>8 r
  }

  \repeat volta 2 {
    b8 |
    <ais-2>16 <cis-1> fis, ais cis e |
    <dis-4>16 <fis-1> <b,-0> <dis-4> <cis-1> <b-0> |
    ais16 cis fis, ais cis e |
    e8 <dis-4> <fis-1> |
    << { <b-4>4 s8 } \\ { b8 <b,-0> b } >> |

    <b-0>8 <gis'-4> <e-0> |
    <dis-4>8 <fis-1>16( <e-0>16) <cis-1 ais-2>8_. |
    <b-0>8 r <b-0> |
    e,16 b' gis e' b8_. |
    e,16 b' gis e' b8_. |

    dis,16 b' a fis' b,8_. |
    dis,16 b' a fis' b,8_. |
    e,16 gis b e gis[ b] |
    << { b4 a8 } \\ { b8 cis, a' } >> |
    b,8\rest <fis' a,> <fis a,_.> |
    <e gis,>8 b\rest
  }
  b8\rest

  \bar "|."
}

lowerVoice = \relative c {
  \set fingeringOrientations = #'(left)
  \voiceTwo

  \partial 8 { s8 } |
  e8 gis s |
  e8 gis s |
  dis8 a' s |

  dis,8 a' s |
  e4 r8 |
  a,4. |
  <b-2>4. |
  e8 s8

  b'8 |
  r8 fis4 |
  <b,-1>4 r8 |
  r8 fis'4 |
  b,4 r8 |
  <dis-2>4. |

  <e-1>4. |
  <fis-3>4. |
  <b,>8 r b' |
  e,8 gis s |
  e8 gis s |
  dis8 a' s |

  dis,8 a' s |
  e4 r8 |
  a,4. |
  b4. |
  e,8 s
  r |
  a4. |

  a4. |
  e4. |
  a4. |
  a4. |
  a4. |
  e4. |

  a8 s s |
  e4. |
  a4. |
  e4. |
  a4. |
  \once\shiftOn a4. |

  dis4. |
  <e-2>4 e,8 |
  a8 s s |
  e'8 gis s |
  e8 gis s |

  dis8 a' s |
  dis,8 a' s |
  e4 r8 |
  a,4. |
  b4. |
  e,8 s s |

  r8 <fis'-3>4~ |
  fis4. |
  r8 fis4 |
  <b,-1>4 r8 |
  \once\shiftOn <dis-2>4. |

  <e-1>4. |
  <fis-3>4 s8 |
  <b-4>8 b, r |
  e8 gis s |
  e8 gis s |

  dis8 a' s |
  dis,8 a' s |
  e4 r8 |
  \once\shiftOn a,4. |
  b4. |
  e,8 s s
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
      \context TabVoice = "middleVoice" \middleVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 100
  }
}
