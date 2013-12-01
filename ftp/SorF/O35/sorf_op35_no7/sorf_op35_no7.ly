\version "2.16.1"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 7"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 7"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 7"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "N. Simrock"
  % From Boije 481-2, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/12/01-1877"
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
  \time 12/8
  \key e \minor
}

upperVoice = \relative c, {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \tempo "Andante."
  e16( <g-3>) <b-1> <e-2> g b e4.~ e8 e e e e e |
  e,,16( <g-4>) <b-2> <e-3> <g-1> b e4.~ e8 e e e e e |

  e,,16( g) <c-4> <e-2> <a-3> <c-1> e4.~ e8 e e e e e |
  e,,16( g) c e a c e4.~ e8 e e e e e |

  e,,16 a( <b-2>) <dis-1> <a'-3> <b-0> <fis'-4>4.~ fis8 fis fis fis fis fis |
  e,,16( <g-4>) <b-2> <e-3> g b e4.~ e8 e e e e e |

  <c,-4>16 e g e c' g e'4.~ e8 e e e e e |
  <b,-2>16 e g e b' g e'4.~ e8 e e e e e |

  <ais,,-1>16 <e'-3> g e <cis'-4> g e'4.~ e8 e e e e e |
  <dis-4>4.~ dis8 <b-0> b <b dis,>4. r4 r8 |

  <g,-3>16 b d b g' d b'4.~ b8 b b b b b |
  <g,-3>16 <c-4> <e-2> c g' e <c'-1>4.~ c8 c c c c c |

  <fis,,-2>16 a d a <a'-3> d, <c'-1>4.~ c8 c c c c c |
  <g,-3>16 b d b g' d b'4.~ b8 <b g> <c-1 a-2> <cis-1 ais-2>8( <d-1 b>) q |

  g,,16 <g'-2> <c-3> <g-2> <e'-4> <c-3> g'4. g,8 g' g g g g |
  g,,16 <g'-3> <b-2> <g-3> <d'-1> <b-2> <g'-1>4. g,8 g'8 g g g g |

  <g,,-1>16 <g'-3> <c-4> <g-3> <des'-2> <c-4> g'4. g,8 g' g g g g |
  g,,16 <g'-3> <b-2> <g-3> <d'-1> <g,-2> <g'-1>4. g,8 g' g g g g |

  e,,16 <e'-2> g e b' g g'4.~ g8 g g g g g |
  <c,,-3>16 <e-2> g e c' g e'4. s <a-4>4.~ |

  a4. <g-1> r4 r8 <fis-3>4. |
  g4. g g,, b'4\rest b8\rest |

  <g,-1>16 <d'-3> <g-4> <b-2> <d-1> <b-2> <g'-1>4. g,8 <b d> q q q q |
  <d,-4>16 <fis-3> <a-1> <fis-3> <d'-2> <a-1> <fis'-1>4. <d,-0>8 <fis'-4 c> q <fis b,> <fis b, a> q |

  e,16 g b g e' b g'8( e) b~ b <e-0 ais,-3> q q q q |
  <dis-4 b-3>2. r2. |

  e,,16( <g-4>) <b-2> <e-3> g b e4. <e,-2>8 <gis e' d> q q q q |
  a,16 <e'-2> <a-3> <e-2> <c'-1> <a-3> e'4. e,8 <c' a> q <fis-4>4. |

  b,,16 <e-3> <g-0> <e-3> <b'-0> <g-0> e'4. b,16 <dis-1> <a'-3> dis, b' a fis'4. |
  <e,,-0>16 <b'-2> <e-3> g b e c, <e-3> g <c-1> e c a, <e'-2> <a-3> <c-1> <fis-4> <c-1> <b,-2> <dis-1> <a'-3> <b-0> <fis'-4> <b,-0> |

  e,,16 b' e g b e c, e g c e c a, e' a c fis c b, dis a' b fis' b, |
  e,,16( <g-4> <b-2>) <e-3> g b e b g b e, g e,( g b) e g b e b g b e, g |
  e,2. r |

  \bar "|."
}


lowerVoice = \relative c, {
  \set fingeringOrientations = #'(down)
  \voiceTwo
  \repeat unfold 4 { e2. e' | }
  e,2. dis' |
  e,2. e' |
  c2. c |
  b2. b |
  ais2. ais |
  b2. r8 <b-2> b b c a |
  \repeat unfold 2 { g2. g | }
  fis2. fis |
  g2. g4. r4 r8 |
  \repeat unfold 4 { g2. g' | }
  e,2. e' |
  c2. c4. a |
  d2. d |
  g,2 s2 s2 |
  g2. g' |
  d2. d4. dis |
  <e-1>2. <c-2> |
  <b-1>8 <ais-1> <b-1> <c-2> <b-1> <ais-1> <b-1> <c-2> <b-1> \grace {b} a <g-2> <fis-1> |
  e2. e' |
  a,2.~ a4. a |
  b2. b |
  e,4. c' a b |
  e,4. c' a b |
  s2. s |
  s2. s |
}

middleVoice = \relative c' {
  \set fingeringOrientations = #'(down)
  \voiceThree
  \stemDown

  \repeat unfold 2 { s4. e8 g, c e, <b' g> q q q q | }

  \repeat unfold 2 { s4. e8 a, c e, <c' a> q q q q | }

  s4. fis8 a, b dis, <a' b> q q q q |
  s4. e'8 g, b e, <g b> q q q q |

  s4. e'8 c g c, <g' c> q q q q |
  s4. e'8 g, b b, <g' b> q q q q |

  s4. e'8 g, cis ais, <g' cis> q q q q |
  b,8 <fis' b> q q <dis-1> dis s4. s4. |

  s4. b'8 g d g, <g' d> q q q q |
  s4. c8 e, g g, <g' e> q q q q |

  s4. c8 a d, fis, <a' d,> q q q q |
  s4. b8 g d s4. s |

  s4. g'8 e c s <e c> q q q q |
  s4. g8 b, d s <d b> q q q q |

  s4. g8 e c s <e c> q q q q |
  s4. g8 b, d s <d b> q q q q |

  s4. g8 g, b e, <g b> q q q q |
  s4. e'8 <c g> q c, <a' c> q a' <e-3 c-2> <e c> |

  d,16 <b'-2> <d-1> b d b g'8 <g b> q d,16 a' c a c a fis'8 <c a> q |
  <g,-2>16 <b-1> d g b g g' b, g b d, b' s4. s |

  s4. g'8 b, d s2. |
  s4. fis8 d a s2. |

  s2. s |
  s2. s |

  s4. e'8 g, b s2. |
  s4. e8 c a s4. fis'8 <c a> q |

  s4. e8 <b g> q s4. fis'8 <b, a> q |
  \repeat unfold 4 { s2. s | }
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
    \tempo 4 = 110
  }
}
