\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 23"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 23. Prelude."
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2012/01/14-1823"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
  ragged-last-bottom = ##f
}

global = {
  \time 4/4
  \key a \major
}


upperVoice = \relative c' {
  \voiceOne
  \slurDown
  r16^II cis[ e cis] a[ cis e cis] r d[ e d] b[ d e d] |
  r16 e^II[ e e] cis[ e e e] r cis^II[ e cis] a[ cis e cis] |

  r16 b[ e b] gis[ b e b] r cis[ e cis] a[ cis e cis] |
  r16 d[ e d] b[ d e d] r b[ e b] gis[ b e b] |
  r16 e,[ a cis] r e,[ a cis] r e,[ a cis] r e,[ gis d'] |

  r16 e,[ a cis] r e,[ a cis] r e,[ a cis] r e,[ gis d'] |
  r16 e,[ a cis] r e,[ cis' e] r e,[ b' d] r e,[ a cis] |
  b[ e,, b' e] gis[ b, e gis] b[ e, gis b] e8[ e] |

  r16^V a,[ cis e] a,[ cis e a] r a,[ d fis] a,[ d fis a] |
  r16 a,[ cis e] a,[ cis e e] a,[ cis e e] a,[ cis e e] |
  r16 a,[ cis e] a,[ cis e a] r a,[ d fis] a,[ d fis a] |

  r16 a,[ cis e] a,[ cis e e] a,[ cis e e] a,[ cis e e] |
  r16 b^II[ d e] r b[ d e] r b[ d e] r b[ d e] |
  r16 a,[ cis e] r a,[ cis e] r a,[ cis e] r a,[ cis e] |

  r16 a,^I[ b fis'] r a,[ b fis'] r gis,[ b e] r gis,[ b e] |
  r16 a,^II[ cis a] r b[ d b] r cis[ e cis] r d[ fis d] |
  r16 cis[ e cis] a'[ cis, e cis] r gis[ b gis] e'[ gis, b gis] |

  r16 a[ cis a] r b[ d b] r cis[ e cis] r d[ fis d] |
  r16 cis[ e cis] a'[ cis, e cis] r gis[ b gis] e'[ gis, b gis] |
  r16 a[ cis a] e'[ a, cis a] r a[ cis a] r a[ cis a] |


  r16 a[ cis a] e'[ a, cis a] r a[ cis a] r a[ cis a] |
  r2 <a cis e a>4 r |
  <cis, e a>2 r

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  % this tweak gets the dynamic moved out of the way of the mf below it
  \once\override DynamicText #'extra-offset = #'( -4 . 4)
  a2\mf a |
  a2 a |

  e2 e |
  e2 e |
  a4 a a a |

  a4 a a a |
  a4 a a a |
  R1 |

  \once\override DynamicText #'extra-offset = #'( -3 . 3)
  a2\f a |
  << { a2 d2\rest } \\ {
    \stemDown\autoBeamOff s4.. e'16 s8. e16 s8. e16} >> |
  a,,2 a |

  << { a2 d2\rest } \\ {
    \stemDown\autoBeamOff s4.. e'16 s8. e16 s8. e16} >> |
  e,,4 gis b e, |
  a cis e a, |

  d4 d e e |
  a,4 a a a |
  a2 e |

  a4 a a a |
  a2 e |
  a2 e4 cis' |

  a2 e4 cis' |
  a4 r a r |
  \once\override DynamicText #'extra-offset = #'( -3 . 3)
  a2\f r
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
