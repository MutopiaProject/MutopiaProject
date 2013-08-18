\version "2.16.1"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 1"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 1"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 1"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "N. Simrock"
  % From Boije 481 & 482, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/08/18-1849"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

global = {
  \time 4/4
}

upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \tempo "Andante"
  c4-1 g-0 c-1 e-0 |
  g4-4 e c-1 g |
  a4-2 f'-1 d-4 c-1 |
  b4-0 d-4 g,2 |
  c4-1 g c e |
  g4 e c g |
  a4-2 d2-4 b4-0 |
  c1-1 |
  d2-4 e-0 |
  d4-4 g, g g |
  d'2-4 e |
  d4 g, g g |
  b2-0 c-1 |
  d2-4 e-0 |
  b4 b c-1 a-2 |

  g4-0 g g g |
  g'2-4 e-0 |
  f2-1 d-4 |
  e2 c-1 |
  b4 g g g |
  g'2 e |
  f2 d |
  e2 c-1 |
  b2 r |

  c4-1 g c e |
  g4-4 e c g |
  a4-2 f'-1 d c |
  b4 g a-2 b-0 |
  c4-1 g c e |
  e4 a,-2 d-4 f-1 |
  e4 c-1 d-4 b-0 |
  c2-1 r4 r \bar "||"
}

lowerVoice = \relative c {
  \voiceTwo
  c1-3~ |
  c2. e4-2 |
  f1-3 |
  g2-0 r4 f4-3 |
  e1-2~ |

  e2. e4 |
  f2-3 g-0 |
  c,4-3 g' e-2 c |
  b-2 g' c,-3 g' |
  b,2-2 r |
  b4 g' c, g' |

  b,1 |
  g4-3 g' a,-0 g' |
  b,4-2 g' c,-3 g' |
  d2 d |
  g,2 r |
  e'2-2 c-3 |

  d2 b-2 |
  c2-3 e-2 |
  d2 r |
  e2 c |
  d2 b |

  c2 a |
  g4-3 g' f-4 d |
  c1-3 |
  e1-2 |
  f1-3 |

  g4 r f2 |
  e1-2 |
  f1-3 |
  g2-0 g,-2 |
  c4-3 <e-2 g>4 c r
}

middleVoice = \relative c' {
  s1*16
  b4\rest g2 g4 |
  a4\rest g2 g4 |
  a4\rest g2 g4 |
  s1 |
  b4\rest g2 g4 |
  a4\rest g2 g4 |
  a4\rest g2 g4 |
  s1*5
}


\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \global
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
  \layout { }
  \midi {
    \tempo 4 = 180
  }
}
