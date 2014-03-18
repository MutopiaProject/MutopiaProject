\version "2.18.0"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 12"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 12"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 12"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "N. Simrock, 1924"
  % From Boije 481-1, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
 footer = "Mutopia-2014/03/18-1944"
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

%\makeDefaultStringTuning #'guitar-open-f-tuning \stringTuning <f, a, d g b e'>
tuning = \markup {
  \score {
    \new Staff \with { \remove "Time_signature_engraver" }
    {
      \clef "treble_8"
      <f, a, d g b e'>1
    }
    \layout {
      ragged-right = ##t
      indent = 0\cm
    }
  }
}
\header {
  subsubtitle = \markup { "Low E tuned to F: " \raise #0.5 \tuning }
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
  \time 6/8
  \key f \major
}


upperVoice = \relative c'' {
  \oneVoice
  \tempo "Andantino moderato."
  \set fingeringOrientations = #'(left)
  \partial 4. { <a-4 c,-3>8 <gis-4 b,-3> <a-4 c,-3> }
  \voiceOne
  <f-1 a,-2>8 <e g,> <f a,> <f-4> <d-3> e |
  <f-1 a,-2>4 <c-1>8 c f <a-4> |
  <a-4 c,>8 <gis-4 b,> <g-4 bes,> <f-1 a,-3> <g bes,-3> <f a,> |
  <e g,>4 r8 <a-4 c,-3>8 <gis-4 b,> <a-4 c,> |

  <f a,>8 <e g,> <f a,> g d e |
  <g-4 bes,-3>4 <f-1 a,-2>8 \stemDown <a-4 c,-3> <g-1 b,-2> <f-1 a,-2> \stemUp |
  <e g,>8 <c-1 e,-3> q q <d-4 f,-3> <b g> |
  <c-1 e,-2>4 r8 <c e,> <e g,> <g-4 bes,-3> |
  <f-1 a,-2>8 <e g,> <f a,> <a-4 c,> <g-1 bes,-1> <f-1 a,> |

  <e g,>8 <c-1 e,-2>16_( <d f,-3>) <e g,-0> <f-1 a,-2> s4. |
  <f-1 a,-2>8 <e-0 g,> <f-1 a,> <a-1 c,-3> <g-1 bes,-1> <f-1 a,-2> |
  <e g,>4 r8 <f a,> q q |
  \slashedGrace{g8} <f a,>8 <e g,> <f-1 a,> <g-4 bes,-3> <a-4 c,-3> <bes-4 d,-1> |
  <gis-4 b,>8 <a-4 c,> q q4 <gis-1 b,-1>8 |

  \stemDown
  <g-4 bes,-3 c,-2>4 <f-1 a,>8[ <f a,-2> <g-4 bes,-3>8]( <e-0 g, c,-3>8) |
  \stemUp
  <f-1>8 <c-1> c <g'-4 bes,-3> <fis-1 a,-1> <g bes,> |
  <f-1 a,-2>8 <e g,> <f a,> <a-4 c,> <g-1 bes,-1> <f-1 a,-2> |
  <e g,>8 <c e,(>16_( <d f,>) <e g,> <f a,> <g bes,>8 <fis a,> <g bes,> |
  \slashedGrace{g8} <f a,>8 <e g,> <f a,> <a c,> <g bes,> <f a,> |

  <e g,>4 r8 <f a,>8 q q |
  \slashedGrace{g8} <f a,>8 <e g,> <f a,> <g bes,> <a c,> <bes d,> |
  <gis b,>8[ <a c,> q] q4 <gis b,>8 |
  <g bes,>4 <f a,>8 q[ <e g,> q ] |
  <bes'-4 d,>4-> <a-4 c,-3>8 q4-> <g bes,>8 |
  <g bes,>4 <f a,>8 <f a,-2>8[ <g bes,-3>8] <e g, c,-3>8 |

  s4. <c'-4>4. |
  <e,-0>8 <c'-4> c c4. |
  <e,>8 <c'> c <c-4>4. |
  c8 bes g f4 e8 |
  <f a,-2>4 b,8\rest b4\rest b8\rest
  \bar "|."
}

lowerVoice = \relative c, {
  \voiceTwo
  \set fingeringOrientations = #'(left)
  \partial 4. {s4.}
  << { <f-0>2. | }
     \new Voice="middleVoice"
     { \voiceThree\stemDown
       \set fingeringOrientations = #'(left)
       s4. <bes'-2>8 bes bes |
     } >>
  << { f,2. | }
     \new Voice="middleVoice"
     { \voiceThree\stemDown
       \set fingeringOrientations = #'(left)
       s4. a'4 <c-3>8 |
     } >>
  <c,-1>4 r8 <c-3>8 r4 |
  <c-3>8 c' c r4 r8 |

  f,,4. <bes' f,>4 bes8 |
  f,2. |
  <g-2>4. r4 r8 |
  <c-3>8 c c c4 r8 |
  c4 r8 c4 r8 |

  <c-3>4 s8 <g''-4 bes,-3 c,-2>8 <fis-1 a, c,-2> <g-4 bes,-3 c,-2> |
  <c,,-3>4 r8 <c-1>4 r8 |
  <c-3>4 r8 r4 r8 |
  f,4. f |
  f4 r8  <bes-2>4 r8 |

  s4*3 |
  <a'-2 f,>4 r8 c,4 r8 |
  c4 r8 c c c |
  c4 r8 <c-3>4 r8 |
  <c-3>4 r8 c c c |

  <c-3>4 r8 r4 r8 |
  f,4. f |
  f4. bes4 s8 |
  c4 r8 c4 r8 |
  f,4. <bes-2>4  s8 |
  c4 r8 r4 s8 |

  << { <f' a, f,>4 r8 a,8 f' f |
       <g-3 bes,-2>4 r8 a,8 f' f |
       <g bes,>4 r8 <f-1> <e-1>
       \set fingeringOrientations = #'(down) <ees-3> |
       \set fingeringOrientations = #'(left)
       <d bes-3>4 <bes-4 bes,>8 <a-2 c,-3>4 <bes bes,>8 |
     }
     \new Voice="middleVoice"
     {
       \voiceThree s4. a4. |
       s4. a4. |
       s4. <a>4. |
       s4. f'8 <c-1>8 r |
     } >>
  f,,4 s4*2
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
  >>
  \layout {}
  \midi {
    \tempo 4 = 90
  }
}
