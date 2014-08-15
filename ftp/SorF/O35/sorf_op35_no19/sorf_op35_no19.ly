\version "2.18.2"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 19"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 19"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 19"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "N. Simrock, 1924"
  % From Boije 482, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2014/08/15-1992"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
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
  \key c \major
}

%mybreak = { \break }
mybreak = { }

hideTuplets = {
  \override TupletBracket.bracket-visibility = ##f
  \omit TupletNumber
}

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(left)
  <c g e c-3>2 |
  <b g>2 |
  <c g e c-3>2 |
  <d-4 g,>2 |
  <e c-2 g bes,>2 |
  <f-1 c-1 a-2 a,>2 |
  <fis c a d,>2 |
  <g-4 b, g g,-2>2 |

  \mybreak
  \oneVoice
  <g-1>8 \tuplet 3/2 { g16 g g } \hideTuplets g8 \tuplet 3/2 { g16 g g } |
  g8 \tuplet 3/2 { g16 g g } g8 \tuplet 3/2 { g16 g g } |
  \voiceOne
  <g-1>8 \tuplet 3/2 { g16 g g } g8 g |
  <g-4>8 \tuplet 3/2 { g16 g g } g8 <g-1> |
  <g-1>8 g <g-4> <g-1> |

  \mybreak
  <g-1>8 g4 r8 |
  r8 \tuplet 3/2 { g16 g g } g8 g |
  g8 \tuplet 3/2 { g16 g g } g8 g |
  g8 g4 g8 |
  r8 \tuplet 3/2 { <g-4>16 g g } g8 <g-1> |
  g8 \tuplet 3/2 { g16 g g } g8 g |

  \mybreak
  <g-1>8 \tuplet 3/2 { g16 g g } g8 g |
  <g-1>8 g g <g-4> |
  <g-1>8 \tuplet 3/2 { g16 g g } g8 g |
  \repeat unfold 2 { g8 \tuplet 3/2 { g16 g g } g8 g | }

  \mybreak
  g8 g g <g-4> |
  <g-1>8 \tuplet 3/2 { g16 g g } g8 g |
  <g-4>8 \tuplet 3/2 { g16 g g } g8 g |
  <g-4>8 \tuplet 3/2 { g16 g g } g8 <g-1> |
  g8 g <g-4> <g-1> |
  <g-1>8 \tuplet 3/2 { g16 g g } g8 g |

  \mybreak
  g8 \tuplet 3/2 { g16 g g } g8 <g-1> |
  <g-4>8 \tuplet 3/2 { g16 g g } g8 <g-1> |
  g8 g g g |
  <g-4 c,-1>8 r r4 |
  << { <e-0>2 } \\ { \voiceThree g,4. bes8 } >> |

  \mybreak
  <f'-1 a,-2>2 |
  << { \set fingeringOrientations = #'(left) <d-4>4. b8 }
     \\ { \voiceThree \set fingeringOrientations = #'(left) <f-3>2 } >> |
  <c'-1 e,-2>2 |
  <c-4 bes e,-2>2 |
  <c-1 a-2 f-4>2 |

  \mybreak
  <b-0 aes-1 f-4>2 |            % marked correction from original <bes a f>
  <c-1 g e-2>2 |
  <c e,>2 |
  <c g e>2 |
  <c g e>2 |
  <c g e>2 |

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(left)
  s2 |
  <f d-2>2 |
  s2 |
  <f-3 b,-2>2 |
  s2*4 |

  s2*2 |
  <e'-4 c-3>4. <d-1 g,>8 |
  <c-1 e,-2>4. <d g,>8 |
  <e-4 c-3>8 <d-1 g,> <c-1 e,-2> <e-4 c-3> |

  <d-1 g,-0>8. <e-4 c-3>16 <d g,>8 g, |
  <e' c>4. <d g,>8 |
  <c e,>4. <d g,>8 |
  <e c>8 q <d g,>8 q |
  <c e,>4. r8 |
  <d-1 g,>4. q8 |

  <e-3 c-2>4. q8 |
  <f d-4>8 <d-1 g,-0> <e-1 c-3> <c-1 e,-2> |
  <d-1 g,>4 g, |
  <d' g,>4. q8 |
  <e c>4.  q8 |

  d8 <d g,> <e c> <c e,> |
  <d-1 g,>4. r8 |
  <e c-4>4. <d-1 g,-0>8 |
  <c e,>4. <d-1 g,>8 |
  <e-4 c-3>8 <d-1 g,-0> <c-1 e,-2> <e c-3> |
  <d-1 g,-0>4 <g,-0> |

  <e c>4. <d g,>8 |
  <c e,>4. <d g,>8 |
  <e c>8 q <d g,> q |
  \hideTuplets
  <e-2>8 \tuplet 3/2 { <d-3>16 d d } d8 d |
  <d-3>8 \tuplet 3/2 { d16 d d } d8 d |

  d8 \tuplet 3/2 { d16 d d } d8 d |
  <d-2>8 \tuplet 3/2 { d16 d d } d8 d |
  \repeat unfold 3 { <d_3>8 \tuplet 3/2 { d16 d d } d8 d | }

  \repeat unfold 2 { <d_3>8 \tuplet 3/2 { d16 d d } d8 d | }
  \repeat unfold 3 { d8 \tuplet 3/2 { d16 d d } d8 d | }
  c2
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    }
    <<
      \global
      \clef "treble_8"
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
    \tempo 4 = 90
  }
}
