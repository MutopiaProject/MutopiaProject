\version "2.18.2"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 16"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 16"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 16"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "N. Simrock, 1924"
  % From Boije 482, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2014/04/27-1953"
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
  \time 3/4
  \key d \minor
}

upperVoice = \relative c'' {
  \global
  \clef "treble_8"
  % add a spacer to beginning of measure to provide time for beginning grace note
  \set Timing.measureLength = #(ly:make-moment 4/4)
  s4
  \slashedGrace <g-4>8
  \voiceOne
  \set fingeringOrientations = #'(left)
  <f-1 d-3>8[ r16 <e-0 cis-2>16] <f-1 d>8 r <a-1 f> r |
  \set Timing.measureLength = #(ly:make-moment 3/4)
  \slashedGrace a8 <g e>8[ r16 <fis-1 dis-3>16] <g e>8 r <e cis-2> r |
  \slashedGrace g8 <f-1 d-3>8[ r16 <e-0 cis-2>16] <f-1 d-3>8 r <g-4 d-3>4 |

  <a-4 cis,>2 r4 |
  \slashedGrace <g-4>8 <f-1 d-3>8[ r16 <e-0 cis-2>16] <f-1 d>8 r <a-1 f> r |
  \slashedGrace a8 <g e>8[ r16 <f-1 dis-3>16] <g e>8 r <bis-1 g-2> r |
  <a-1 f-2>8[ r16 <g e-3>16] <f-1 d-3>8 r <e cis-2 g>4 |
  <e cis g>4 <d-4 f,-3> b\rest |

  \slashedGrace <g'-4>8 <f-1 a,-2>8. <e g,>16 <f a,>8 r <g-4 bes,-3>8 r |
  <f g,>4( e8.) <d-4 f,>16 <c-1 e,>8 r | % review measure
  <c-1 g>8. e16 <g-4>8 r g r |
  <g-4 bes,>2 <f-1 a,-2>4 |
  <f-1 d-4>8[ r16 <e-0 cis-2>16] <f-1 d-4>8 r <d-4 bes-3>8 r |

  <c-1 a-2>8[ r16 <a e-3>16] <c a>8 r <cis-3 a-2> r |
  <d-4 bes-3>8[ r16 <e-0 cis-2>16] <f-1 d-4>8 r <d-4 bes-3> r |
  <c a>8 r r4 r |
  \slashedGrace <g'-4>8 <f-1 a,>8[ r16 <e g,>16] <f a,>8 r <f a,> r |
  <g-4 d-3>2 <f-1 d-4>8 r |

  <e g,>8[ r16 <f a,-2>16] <g-4 bes,-3>8 r <e g,> r |
  <f a,>8 r r4 r |
  <f-1 a,-2>8 r r4 <fis-4>4 |
  <g-4 d-3 bes-2>8 r <bes-4 d,-1 bes-1> r r4 |
  <f-4 a,>8. <g-1 bes,-3>16_( <a-4 c,-3>8) r <g-4 bes,-3>8 r |

  <f-1 a,-2>8 r r r4 r8 |
  \oneVoice
  <a-1 f-2>8. <gis-1 e-2>16 <a-1 f-2>8 r <b-4 f-2 d-3 g,-1>4 |
  <c-4 e,-1 c-1>8 r <g-1> r <a-4 ees-2 c-3 f,-1>4 |
  <bes-4 d,-1 bes-1>8 r <f-1> r <g-4 d-3 bes-2 e,-1>4 |
  <a-4 cis,-1 a-1>8 r <e-0> r <fis-2 c-1 a d,-2>4 |

  \voiceOne
  <g-4 b,>8 r <d-4> r <e-0 b>4 |
  <f-1 a,-2>8 r c r <f a,>4 |
  <f-1>8. <e-0>16 e4 <d-1 b-3>4 |
  <cis a>4 r r |
  <d-4 f,>8. <cis-2 e,-1>16 <d-4 f,-3>8 r <f-1 a,> r |

  <e-0 g,>8. <dis-4 fis,-3>16 <e g,>8 r <cis-2 e,-1>8 r |
  <d-4 f,-3>8. <e-0 g,-0>16 <f-1 a,-2>8 r <d-4 f,-3> r |
  <cis e,-1>8 r <a'-4 a,>4 r |
  <f-1 a,-2>8. <e-0 g,-0>16 <f-1 a,-2>4 <g-4 bes,-3>8. <f-4 a,-2>16 |
  \slashedGrace{f8} <e g,>8. <dis-4 fis,-3>16 <e g,>4 <f-1 a,-2>8. <e g,>16 |

  <d-4 f,-3>8. <cis-2 e,>16 <d-4 f,-3>4 <e g,>8. <d-4 gis,-1>16 |
  <cis-3 a>8 r <e-0>2 |         % review, not clear in source
  <b'-3>8. <cis-4>16 <b-3>8 r b r |
  <a-1>8 r <e-0>2 |
  b'8. cis16 b8 r b r |
  <a-1>4 <gis-1> <g-2> |

  <f-1 d-3>8. <e-0 cis>16 <f-1 d>8 r <a-1 f> r |
  <g e>8. <fis dis>16 <g e>8 r <e cis> r |
  <f d>8. <e cis>16 <f d>8 r <g-4 d-3>4 |
  <a-4 cis,>2 r4 |
  <a-4 c,-3>8. <gis-4 b,-3>16 <a-4 c,-3>4 q |

  <a c,-3>4 <g-1 b,-2>2 |
  <g-1 bes,-3>8. <fis a,>16 <g bes,>4 q |
  <g-4 bes,-3>4 <f-1 a,-2>2 |
  <e-0>8. <f-1>16 <g-4>4 <e g,-0> |
  <d-4 e,>8. <e g,>16 <f a,>4 <d f,> |
  <cis-2 e,>8. <d-4 f,-3>16 <e g,-0>4 <cis e,> |

  <d-1 f,-1>2 r4 |
  \repeat unfold 2 {
    <e-0 g,>8. <dis-4 eis,-3>16 <e-4 g,-3>4 q |
    <d-1 f,-1>2. |
  }
  \repeat unfold 2 { <d-1 f,-1>2. | }
  \bar "|."
}

lowerVoice = \relative c {
  \set Timing.measureLength = #(ly:make-moment 4/4)
  s4
  \voiceTwo
  \set fingeringOrientations = #'(left)
  d4 s s |
  \set Timing.measureLength = #(ly:make-moment 3/4)
  a4 s s |
  d4 s bis |

  a4 a' a, |
  d4 s s |
  g4 r g8 r |
  <a-3>4 r a, |
  d4 r s |

  d4 r <g,-2>8 r |
  <c-3>4. r8 r4 |
  <e-2>4 <bes'-3>8 r <bes e,-2> r |
  <f-2>4 <f,-1>2 |
  <f-1>4 r <f-1>8 r |

  <f-1>4 r <f-1>8 r |
  <f-1>4 r <f-1>8 r |
  f4 <f'-3> <e-2> |
  d4 r d8 r |
  <bes-1>8. a16 bes8 r b r |

  <c-3>8 r r4 c8 s |
  <f-3>8. <e-3>16 <f-3>8 r <e-2> r |
  <d-0>8. <cis-4>16 <d-0>8 r <c a'-1 ees'> r |
  <bes-1>8 r g s s4 |
  <c-3>8 r r4 <c-2>8 s |

  <f,-1>8 r <f'-3> r f, r |
  s2.*4 |

  <g'-0>8 s s4 <c,-3>4 |
  <f-3>8 s s4 s4 |
  <bes-3 bes,-2>2 <gis,-2>4 |
  a-4 a a |
  <a-3>4 r a |

  a4 r4 a8 s |
  \repeat unfold 4 { a4 r a | }

  \repeat unfold 2 { a4 r a | }
  <d'-2 gis, a,>4 r q |
  <cis-2 a a,-3>8 r r4 q8 r |
  <d gis, a,>4 r q8 r |
  << { a,2 s4 } \new Voice {\voiceThree <cis' a>4 b cis } >> |

  d,4 r r |
  a4 r r |
  d4 r <bes-1> |
  <a-0>4 <a'-1> <g-0> |
  <fis-2>4 r <d-0> |

  <g,-1>4 <g'-3> <f-1> |
  <e-2>4 s <c-2> |
  <f,-1>4 <f'-3> <f,-1> |
  <bes'-3 g,-2>2 <g,-2>4 |
  a2 a4 |
  a2 a4 |

  <d-3>8. <cis-2>16 <d-3>4 <a-0> |
  <cis-2>2 <a-0>4 |
  <d-3>8. cis16 d4 a |
  <cis-2>2 <a-0>4 |
  <d-3>8. <cis-2>16 d4 a |
  d8. cis16 d4 a |
  d2. |
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    }
    <<
      \tempo "Moderato"
      \new Voice = "upperVoice" \upperVoice
      \new Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "Guitar tabs"
    <<
      \clef "moderntab"
      \global
      \new TabVoice = "upperVoice" \upperVoice
      \new TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 96
  }
}
