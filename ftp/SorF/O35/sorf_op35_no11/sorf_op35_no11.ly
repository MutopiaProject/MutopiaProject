\version "2.18.0"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 11"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 11"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 11"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "N. Simrock, 1924"
  % From Boije 481-1, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2014/03/08-1942"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = 7\mm
  bottom-margin = 6\mm
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
  \key d \minor
}


upperVoice = \relative c' {
  \tempo "Allegretto."
  \set fingeringOrientations = #'(left)

  \oneVoice
  r4 <d-3 f-2 a-1>8 r |
  <cis-2 e-1 a-1>8 r <e-3 g-2 a-1> r |
  <d-3 f-2 a-1>8 r <c-1 e-1 a-1> r |
  <bis-1 d-1 a'-4>8 r <bis-2 d-3 f-1> <bis d g-4> |
  \voiceOne <a'-4>8 s <a-1> s |

  <a-4>8 r <a-4> r |
  <a-4>8 r <g-4> r |
  <g-4>8 <f-1> e4 |
  <d-3>8 r s r |
  s8 r <g-1> <a-4> |
  <bes-4>8 r <f-1> r |

  <a-4>8 r <g-4> f |
  <e-0 g,-0>8 r <c-1 e,-2> r |
  <d-4 e,-3>8 r <e-0 g,> <f-1 bes,-2> |
  <g-4 bes,-3>8 r <f-1 a,-2> r |
  <f-1>8 r <e-0 c-1> <e-0 bes-4> |
  <f-1 a,-2 f,>8 r <c-3> r |
  <a'-4>8\noBeam r <g-4> r |

  <c,-1 fis-2>4 <bes-3 g'-4>8 r |
  <a-1 g'-4>8 r <a-1 fis'-1> q |
  <bes-1 g'-1>8 r s4 |
  s2*3 |

  <e-0>8 s <a-1> s |
  <a-1>4 s |
  r4 a8 s |
  a4 s |
  s2*2 |

  s2 |
  bis4 f8 g |
  <a-4>4 e8 <fis-3> |
  <g-4>4 <d-1>8 <e-4> |
  <f-1>4 <e-1> |
  <d-3 f,-2>4 <cis-1 e,>8 q |
  <d-1>4 b\rest
  \bar "|."
}

lowerVoice = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(left)

  s2*4 |
  <a-1 cis-1>8 b\rest <d, f'-2> b'\rest |

  <cis,-1 e'-3>8 r <c-1 ees'-2> r |
  <b-1 d'-2>8 r <bes d'-3> r |
  << { a2 | }
     \new Voice
     {
       \voiceThree\stemDown
       \set fingeringOrientations = #'(left)
       <cis'-2>8 <d-3>4 <cis-2>8 |
     } >>
  d,8 s <f'-2 a-1> s |
  <c-1 e-1 c'-4>8 s <c-3 ees-2> q |
  <bes-1 d-1>8 s <bes-3 d-4> s |

  <c-3 f,-1>8 r <bes-3 bes,-1> <a b,> |
  <c,-2>8 s <c-3>4 |
  <c-2>8 s <c-3> c |
  <c-2>8 s d s |
  <bes-1 d'-4>4 c8 c |
  s2 |
  <f-1 c'>8\noBeam s <ees-1 c'> s |

  <d-0>4 <ees-1>8 s |
  <c-2>8 s <d-0> d |
  <g,-1>8 s <d''-1>4 |
  <bis'-4 d, g,>8 r <a-4 d,-1 f,-1> r |
  <gis-4 d e,-1>8 r <g-1 e-4 cis,-2>8 r |
  <fis-1 d d,>8 r <f-1 d gis,> q |

  <cis-2 a-1>8 r <e-1 cis-2 a,> r |
  << {
    a,,2~ |
    a8 r <a cis' e> r |
    a2 |
  } \new Voice {
    \voiceThree\stemDown
    \set fingeringOrientations = #'(left)
    <f''-2 d-3>4 <e-2 cis>8 <d-1 b> |
    <e-1 cis-2>8 <a,-3> s4 |
    <f' d-3>4 <e-2 cis>8 <d-3 b> |
  } >>
  <e-1 cis-2 a,-3>8 r <a-1 f d-3> r |
  <a e cis>8 r <a g e> r |

  <a-1 f d>8 r <a-1 e c> r |
  <d, bes>4 q8 q |
  <cis a>4 <c a>8 q |
  <b-0 g-0>4 <bes-1 g-3>8 q |
  <a-2 e-3>4 <bes-2 g-4> |
  <a-1>4 a,8 a |
  <f'-1 d-3>4 s |
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    }
    <<
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
    \tempo 4 = 100
  }
}
