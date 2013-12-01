\version "2.16.1"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 6"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 6"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 6"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "N. Simrock"
  % From Boije 481-2, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/12/01-1876"
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
  \key d \major
}

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(up down)

  \partial 4 { <d-2 fis-1>8 <e-3 g-1> | }
  <cis-1 e-0>4 <d fis-1>8 <e g-1> |
  <fis a-1>4 <g b-1>8 <fis a-1> |
  <e-0 g-3>8 <cis-1 e-0> <d-2 fis-1>
    \once\override Fingering #'extra-offset = #'(0 . 1.0)
    \acciaccatura {a'-4} <e-3 g-1> |
  <d-2 fis-1>8 <cis-1 e-0> <d-2 fis-1> <e-3 g-1> |

  <cis-2 e-0>4
    \once\override Fingering #'extra-offset = #'(0 . .35)
    <d-2 fis-1>8 <e-4 g-2> |
  <fis-4 a-1>4 <e-3 g-1>8 <d-2 fis-1> |
  \once\override Fingering #'extra-offset = #'(0 . .35)
  <cis-2 e-0>8 <a-1 cis> <b-3 d-2> <gis-1 b-0> |
  <a-2>8 r <fis'-3 a-1> <fis a-1> |
  <dis-3 fis-1>4 <e-3 g-1>8 <e g-1> |

  <cis e-0>4 <d-2 fis-1>8 <d fis> |
  <b-3 d-1>8 <b d> <e gis,-1> <e gis,> |
  <cis-3 a-2>8 a <fis'-3 a-1> <e-1 ais-2> |
  <dis b-4>8 <fis-3 a-1> <e-3 g-1> <dis gis-2> |
  <cis-1 a'-4>8 <e-3 g-1> <d-2 fis-1> <cis-1 e-0> |

  <d-2>8[ e <fis-1> <gis-4>8] |
  <a-4 cis,-1 a-1>8 r <fis d> <g e> |
  <e cis>4 <fis d>8 <g e> |
  <a fis>4 <b g>8 <a fis> |
  <gis eis>8 <g e> <fis d> <f d> |

  << { e4 <fis-2 d-3>8 <g-1 e-3> } \\
     { \once\override Fingering #'extra-offset = #'(0 . 1.0)
       \stemDown\shiftOn <cis,-2>8[ <a-1>8] s4 } >> |
  <e'-0 cis-2>4 <fis-1 d-2>8 <g-2 e-4> |
 \once\override Fingering #'extra-offset = #'(0 . -1.5)
    <a-1 fis-4 d,>4 <g-2>8 <e-0> 
  << { <d-2>8 <fis-1> <e-0> <cis-1> } \\
     { \set fingeringOrientations = #'(right) 
       \stemUp\shiftOn <a-1>4 s } >> |
  <d-1>4 s |

  \bar "|."
}

lowerVoice = \relative c {
  \set fingeringOrientations = #'(down)
  \voiceTwo
  \partial 4 { s4 }
  a2 |
  a2 |
  a4 a |
  a4 s |

  a8[ a' <fis-3> <e-1>8] |
  d2 |
  <e-1>4 e, |
  a4 r |
  a2~ |

  a2 |
  a2~ |
  a2 |
  a2~ |
  a2 |

  <a~ b'-3>2 |
  a8 r r4 |
  a2 |
  a2~ |
  a2~ |

  a2 |
  c8\rest <g'-0>8[ <fis-3> <e-1>8] |
  d8 c' <g-0 b-0>4 |
  <fis-3>4 <g a,> |
  <fis-2 d-3>4 b\rest |
}


\score {
  <<
    \new Staff = "Guitar" \with {
      \override DynamicTextSpanner #'style = #'none
      \override Fingering #'staff-padding = #'()
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
    \tempo 4 = 180
  }
}
