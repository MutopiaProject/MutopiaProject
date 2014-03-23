\version "2.18.0"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 13"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 13"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 13"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "N. Simrock, 1924"
  % From Boije 482, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
 footer = "Mutopia-2014/03/23-1945"
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
%    \override Fingering #'add-stem-support = ##t
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

sU = \stemUp
sD = \stemDown
sN = \stemNeutral

upperVoice = \relative c' {
  \voiceOne
  \shiftOn
  \override NoteColumn #'force-hshift = #-1
  e4 c |
  <g'-4>4 e8 c |
  <d-4>4 e8 d |
  <d-4>4 <c-1> |
  e4 c |
  g'4 e8 c |
  b4 c8 e |
  <d-4>2 |

  e4 c |
  g'4 e8 c |
  d4 e8 d |
  d4 c |

  e4 c |
  <g'-4>4 e8 c |
  b4 c8 e |
  d4 r |

  <d-4>4 d |
  d8 c e[ <g-4>] |
  <g-4>8 <f-1> f[ f] |
  <f-1>4 <e-0> |

  d4 d |
  d8 c d[ g] |
  <f-1>8 <d-4> e[ <c-1>] |
  <b-0>16 g <a-2> b <c-1> <cis-2> <d-3> <dis-4> |

  e4 c |
  g'4 e8[ c] |
  <d-1>4 <e-4>8[ <d-1>] |
  <d-4>4 <c-1> |

  <cis-1>4 cis |
  e8 <d-4> <f-1> d |
  s8 <c-1>8 c b |
  <c-1>4 r
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \repeat unfold 6 { c2 | }
  d8 f e c |
  b8 g a b |
  \repeat unfold 6 { c2 | }
  s2 |
  b4 s |

  b2 |
  c2 |
  d4 b |
  c2 |

  b2 |
  c2 |
  s2 |
  <g-3>4 r |

  c2 |
  c2 |
  gis2 |
  a2 |

  g2 |
  f2 |
  g2 |
  c2
}

middleVoice = \relative c {
  \voiceThree
  \shiftOff
  \set fingeringOrientations = #'(down)
  <c-3>16 g' <e-2> g \sD e g e g \sU |
  <c,-3>16 g' e g \sD e g e g \sU |
  <c,-2>16 g' <f-3> g \sD f g f g \sU |
  <c,-3>16 g' <e-2> g \sD e g e g \sU |
  \repeat unfold 2 { c,16 g' e g \sD e g e g \sU | }
  d16[ g] <f-3>16[ g] e[ g] c,[ g'] |
  <b,-2>16[ g'] <g,-3>16[ g'] a,[ g'] b,[ g'] |

  <c,-3>16 g' e g \sD e g e g \sU |
  c,16 g' e g \sD e[ g] e g \sU |
  c,16 g' f g \sD e g c, g' \sU |
  c,16 g' e g \sD e g e g \sU |

  \repeat unfold 2 { c,16 g' e g \sD e g e g \sU | }
  \sD d16 g f g e g c, g' \sU |
  b,16 g' d b g8 \once\sD g' |

  <b,-2>16 g' <f-3> g \sD f g f g \sU |
  <c,-3>16[ g'] \sD <e-2>16[ g] e g e g \sU |
  d16[ b'] \sD g[ b] \once\sU <b,-2>16[ d'] g,[ d] \sU |
  <c-3>16[ \sD d'] g,[ d'] g,[ c e, g] \sU |

  b,16 g' f g \sD f g f g \sU |
  c,16[ g'] \sD e[ g] e g e g |
  d16 g <b,-2> g' <c,-3> g' a, g' \sU |
  s2 |

  \repeat unfold 2 { c,16 g' e g \sD e g e g \sU | }
  <g,-2>16[ b'] \sD <f-1>16[ b] e, b' e, b' \sU |
  a,16[ a'] \sD <e-2>16[ a] e a e a \sU |

  <g,-2>16[ bes'16] \sD e,[ bes'] e, bes' e, bes'|
  <f,-1>16^[ <a'-2>] <f-3>[ a] f a f a |
  <d-4>16^[ g,] <e-2>[ g] d g <f-4> g |
  <c,-3>16^[ g'] <e-2>[ g] c,4
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    }
    <<
      \global
      \clef "treble_8"
      \tempo "Andante."
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
