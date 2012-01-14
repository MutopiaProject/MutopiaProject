\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 22"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 22. Prelude."
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2012/01/14-1822"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
  ragged-last-bottom = ##t
}

global = {
  \time 4/4
  \key f \major			% d \minor ?
}


upperVoice = \relative c {
  \voiceOne
  \slurDown
  f,16^I[ a' c a] d^\sf[ a c a] f,[ a'] a,[ a'] c,[ a'] a,[ a'] |
  f,16[ a'  c a] d^\sf[ a c a] f,[ a'] a,[ a'] c,[ a'] f,[ a'] |

  e,16[ bes'' c bes] d^\sf[ bes c d] e,,[ bes''] g,[ bes'] c,[ bes'] g,[ a'] |
  e,16[ bes'' c bes] d[ bes c d] e,,[ bes''] g,[ bes'] c,[ bes'] g,[ a'] |
  f,16[ a' c a] f'^\sf[ a, c a] f,[ bes' d bes] f'^\sf[ bes, d bes] |

  f,16[ a' c a] f'^\sf[ a, c a] f,[ gis' b gis] f'^\sf[ gis, b gis] |
  f,16[ a' c a] f'^\sf[ a, c a] f,[ bes' d bes] f'^\sf[ bes, d bes] |
  f,16[ a' c a] f'^\sf[ a, c a] f,[ gis' b gis] f'^\sf[ gis, b gis] |

  f,16[ a' c a] f'^\sf[ a, c a] f[ a c a] ees[ a c a] |
  d,16[ a' c a] fis'^\sf[ a, c a] g^III[ bes d bes] g'^\sf[ bes, d bes] |
  c,16^I[ bes' c bes] e^\sf[ bes c bes] f[ a c a] f'^\sf[ a, c a] |

  b,16[ f' aes f] d'[ f, aes f] c[ f a c] des,[ f aes b] |
  c,16[ f a f] c'[ f, a f] c[ f a f] c'[ f, a f] |
  c16[ f g f] c'[ f, g f] c[ e g e] c'[ e, g e] |

  f,16[ a' c a] a,[ a' c a] c,[ a' c a] e,[ bes'' c bes] |
  f,16[ a' c a] a,[ a' c a] c,[ a' c a] e,[ bes'' c bes] |
  f,16[ a' c a] f[ a c a] c,[ a' c a] a,[ a' c a] |
  f,16[ a' c a] f[ a c a] c,[ a' c a] a,[ a' c a] |
  r2 <f a c f>4 r |
  <f a c f>2 r

  % There is some markup at the end of the piece that is unreadable in
  % the original and I have no access to other publications so I have
  % left them out. -gl

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  % this tweak gets the dynamic moved out of the way of the sf below it
  \once\override DynamicText #'extra-offset = #'( -4 . 4)
  f,4_\mf r f8[ a] c[ a] |
  f4 r f8[ a] c[ f,] |

  e4 r e8[ g] c[ g] |
  e4 r e8[ g] c[ g] |
  f2 f |

  \repeat unfold 3 { f2 f | }

  f2 f'4 ees |
  d2 g |
  c,2 f |

  b,2 c4 des |
  c2 c |
  c2 c |
  f,4 a c e,\sf |
  f4 a c e,\sf |
  f4 f' c a |
  f4 f' c a |
  a2 r4 r |
  a2 r2
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \global
      \set Staff.instrumentName = #"Allegro."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \clef "treble_8"
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
  >>
  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
