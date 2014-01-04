\version "2.16.2"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 10"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 10"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 10"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "N. Simrock"
  % From Boije 481-2, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2014/01/04-1897"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
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
  \time 2/4
  \key f \major
}

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(up)

  \partial 8 { <c-1>8 } |
  a16 <c-2> f, c' e, <c'-1> <bes-4> <g-0> |
  f16 <a-2> <c-1> <f-1> <a-4> <f-1> <c-1>16[ <a-2>16] |
  bes16 <d-4> a c g <bes-2> f <a-2> |
  e16 g d b' s4 |

  a16 <c-1> f, c' g c e, c' |
  f,16 <a-2> <c-1> <f-1> <a-4> <g-2> <f-1> <e-0> |
  <d-4>16 <c-1> <bes-4> <a-2> <g-0> <bes-4> <e,-2> <g-0> |
  <f-3>16 <a-2> <c-1> <f-1> s4 |
  r16 <f-1> f, f' s4 |

  r16 <f-1>16 f, f' s4 |
  r16 <f-1>16 f, f' s4 |
  r16 <f-1>16 f, f' s4 |
  b,16 g <f'-1> <d-4> b <g-0> <f-3> g |
  <e-2>16 g <c-1> e <g-4>8 c, |

  c16 b <g'-4> <f-1> <d-4> b g f |
  e16 g c e g8 g |
  a,16 f' g, e' f, <d'-1> e, <cis'-2> |
  g16 e' <f,-3> d' a <f'-3> f, d' |
  e,16 c' g <e'-3> f, <d'-4> g, b |

  e,16 c' g e' c,8 a' |
  e'4 bes16[ c] <g'-4>8 |
  <f-1>4 f,16 c' a c |
  <bes-4>16 c g c a c <f,-4> <c'-1> |
  <e,-2>16 <c'-1> g c r8 c |

  e4 bes16[ c] <g'-4>8 |
  s4 f,16 c' a c |
  g16 c bes c a c f, c' |
  e,16 g \slashedGrace{d'8} c16. b32 c8 c |

  a16 c f, c' e, c' bes g |
  f16 a c f a f c a |
  bes16 d a c g bes f a |
  e16 g <f-2> b c8 c |

  a16 c f, c' e, c' bes g |
  f16 a c f a g f e |
  d16 c bes a g bes e, g |
  f16 a c f f,,8 r |

  \bar "|."
}

lowerVoice = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(right)

  \partial 8 { s8 } |
  <a-2>8 <f-3> <e-2> bes' |
  <f-3>4 s |
  <bes-3>8 <a-2> g <f-3> |
  <e-2>8 d <c-3> c' |

  <a-2>8 <f-3> <g-0> <e-2> |
  <f-3>4 r8 a,8 |
  <bes-1>4. <c-3>8 |
  <f,-1>4 f'8 f' |
  s8 <f,-2> <f,-1>4 |

  r8 <f'-3> f,4 |
  r8 f'8 f,4 |
  r8 f'8 f,4 |
  <g-3>4 r8 <b-1>8 |
  <c-3>4. e8 |

  d4. b8 |
  c4 r |
  a'8 g f e |
  g8 f a f |
  e8 g f g |

  e8 g c,4 |
  r8 g' <bes-3>4 |
  r8 a <f-3>4 |
  s4 a8[ f] |
  e8[ g] s4 |
  
  r8 g <bes-3>4 |
  r8 a f[ a] |
  c,2 |
  c4 s |

  a'8 f s4 |
  f4 s |
  bes8 a g f |
  e8 <d-4> <e-2 c-3> r |

  a8 f e4 |
  f4 r8 a, |
  bes4. c8 |
  f4 s |
}

middleVoice = \relative c' {
  \voiceThree
  \stemDown
  \set fingeringOrientations = #'(left)
  \partial 8 {s8} |
  s2*4 |
  s2*4 |
  <bes-3 d>4. q8 |

  <a-2 c-1>4. <a f'>8 |
  <bes d>4. q8 |
  <a c>4. c8 |
  \repeat unfold 8 { s2 | }
  \stemDown e16[ c] \stemUp g[ c] s8 \stemDown g'16[ c,] |
  f16[ c] \stemUp a[ c] s4 |
  \stemDown <c,-3>2_( |
  \once \override NoteColumn #'force-hshift = #-1.4 c4) c8 r |

  \stemDown e'16[ c] \stemUp g[ c] s8 \stemDown g'16[ c,] |
  f16[ c] \stemUp a[ c] s4 |
  s4 \stemDown a8 f |
  s2 |
  \repeat unfold 8 { s2 }
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
    \tempo 4 = 90
  }
}
