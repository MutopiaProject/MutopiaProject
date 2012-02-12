\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 24"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  year = "1819"
  piece = "No. 24. Prelude."
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2012/01/14-1824"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
  ragged-last-bottom = ##f
}

global = {
  \time 4/4
  \key e \major
}

upperVoice = \relative c {
  \voiceOne
  \slurDown
  r8^I e16[ gis] b[ e, gis b] e[ gis, b e] gis8[ gis] |
  r8 e,16[ gis] b[ e, gis b] e[ gis, b e] gis8[ gis] |

  r8^II cis,,16[ fis] a[ fis a cis] fis[ a, cis fis] a8[ a] |
  r8 cis,,16[ fis] a[ fis a cis] fis[ a, cis fis] a8[ a] |
  %{ TECLA makes this edit (cfa -> fac)
     I have chosen here to retain the original
  r8^II fis,16[ a] cis[ fis, a cis] fis[ a, cis fis] a8[ a] |
  r8 fis,16[ a] cis[ fis, a cis] fis[ a, cis fis] a8[ a] |
  %}

  r8 fis,16[ a] dis[ cis, fis a] dis[ fis, a dis] fis8[ fis] |

  r8 fis,16[ a] dis[ c, fis a] dis[ fis, a dis] e8[ e] |
  r8^I e,16[ gis] b[ e, gis b] e[ gis, b e] gis8[ gis] |
  r8 e,16[ gis] b[ e, gis b] fis'[ gis, b e] gis8[ gis] |

  r8 d,16[ gis] b[ d, gis b] e[ gis, b e] gis8[ gis] |
  r8 d,16[ gis] b[ d, gis b] e[ gis, b e] gis8[ gis] |
  r8^II e,16[ a] cis[ e, a cis] e[ a, cis e] a8[ a] |

  r8 e,16[ a] cis[ e, a cis] e[ a, cis e] a8[ a] |
  r8 b,,16[ e] gis[ b, e gis] b[ e, gis b] e^IV[ gis, b e] |
  gis16[ b, e gis] b[ e, gis b(] d)^VII[ cis( b) a(] gis)[ fis e^II d] |

  cis16[ gis, a( cis)] e[ a cis e] a8^IX[ cis] e[ ais,,,] |
  b8[ e16 gis] b[ e, gis b] e[ gis,^IV b e] gis[ b, e gis] |
  b4. ais8( b8)[ fis^II( gis) dis(] |
  e8)[ ais,( b) fis(] gis^I)[ dis( e) cis] |

  r8 b'8[ b b] r <gis b>8[ <gis b> <gis b> ] |
  r8 <fis cis'>8[ <fis cis'> <fis cis'> ] r <f dis'>8^II[ <fis dis'> <fis dis'> ] |
  r8^I e16[ g] c[ e, g c] e[ g, c e] g8[ g] |
  r8 e,16[ g] b[ e, g b] e[ g, b e] g8[ g] |

  r8 e,16[ g] cis[ e, g cis] e[ g, cis e] g8[ g] |
  r8 b,[ b b] r <gis b>8[ <gis b> <gis b> ] |
  r8 <fis cis'>8[ <fis cis'> <fis cis'> ] r^II <f dis'>8[ <fis dis'> <fis dis'> ] |
  r8 b,16[ e] gis[ b, e gis] b[ e, gis b] e8[ e] |

  r8 a,,16[ e'] a[ a, e' a] cis[ e, a cis] e8[ e] |
  r8 b,16[ e] gis[ b, e gis] b[ e, gis b] e8[ e] |
  r8 b,16[ dis] a'[ b, dis a'] b[ dis, a' b] fis'8[ fis] |

  r8 b,,16[ e] gis[ b, e gis] b[ e, gis b] e8[ e] |
  r8 a,,16[ e'] a[ a, e' a] cis[ e, a cis] e8[ e] |
  r8 b,16[ e] gis[ b, e gis] b[ e, gis b] e8[ e] |

  r8 b,16[ dis] a'[ b, dis a'] b[ dis, a' b] fis'8[ fis] |
  r8 b,,16[ e] gis[ b, e gis] b[ e, gis b] e8[ e] |
  r8 e,16[ gis] b[ e, gis b] e[ gis, b e] gis8[ gis] |

  r8^V gis,16[ b] e[ gis, b e] gis[ b, e gis] b8[ b] |
  r8 b,16[ e] gis[ b, e gis] b^\markup{\italic cres} [ e, gis( b)] e8^IX[ e] |
  r2^I <gis,, b e>4 <gis b gis'>4 |
  <b, e gis b e>2 c'\rest^\fermata |

  \bar "|."
}

lowerVoice = \relative c, {
  \voiceTwo
  e2 d'2\rest |
  e,2 d'2\rest |

  a2 d2\rest |
  a2 d2\rest |
  b2 d2\rest |

  b2 d2\rest |
  e,2 d'2\rest |
  e,2 d'2\rest |

  e,2 d'2\rest |
  e,2 d'2\rest |
  e,2 d'2\rest |

  e,2 d'2\rest |
  e,2 b'2\rest |
  s1 |

  % originally full-measure rests
  \repeat unfold 4 { s1 | }

  \once\override DynamicText #'extra-offset = #'( -3 . 3)
  b2_\p b |
  b2 b |
  \once\override DynamicText #'extra-offset = #'( -3 . 2)
  c2_\f d\rest |
  b2 d\rest |

  ais2 r |
  \once\override DynamicText #'extra-offset = #'( -3 . 2)
  b2_\p b |
  b2 b |
  e,2 b'\rest |

  e,2 b'\rest |
  e,2 b'\rest |
  e,2 b'\rest |

  \once\override DynamicText #'extra-offset = #'( -3 . 2)
  e,2\p b'\rest |
  e,2 b'\rest |
  e,2 b'\rest |

  e,2 b'\rest |
  e,2 b'\rest |
  b2 b\rest |

  e2 d\rest |
  gis2 d\rest |

  e,2 \once\override DynamicText #'extra-offset = #'( -3 . 2)
  e4_\f e |
  e2 d'\rest_\markup{\italic Fine.}
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
      tempoWholesPerMinute = #(ly:make-moment 110 4)
    }
  }
}
