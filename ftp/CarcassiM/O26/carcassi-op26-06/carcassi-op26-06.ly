\version "2.16.1"

\header {
  title = "Caprice No. 6"
  source = "Mainz: B. Schott's Söhne"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 91
  composer = "Mateo Carcassi"
  opus = "Op. 26 No. 6"
  year = "ca. 1827"
  mutopiacomposer = "CarcassiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Six Caprices, No. 6"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/03/10-1841"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
  line-width = 18.0\cm
  markup-system-spacing #'padding = #2
%{ uncomment for note entry
  ragged-bottom = ##t
  ragged-last = ##t
%}
}

commonVar = {
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
  \override TextSpanner #'staff-padding = #6
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}

\layout {
  \context {
    \Voice
    \override StringNumber #'stencil = ##f
  }
}


upperVoice = \relative c {
  \voiceOne
  a16\f a' cis a e' a, cis a e a cis a cis, a' cis a |
  a,16 a'-1 cis a-1 a'-4 a, cis a a' a,cis a a' a, cis a |
  \barNumberCheck #3
  a,16-1 a' d-2 a fis'-1 a, d a fis a d a d, a' d a |
  a,16 a' d a a'-4 a, d a a' a, d a a' a, d a |
  a,16 a' cis a e' a, cis a e a cis a cis, a' cis a |
  \barNumberCheck #6
  a,16 a' cis a\mf a cis e cis a cis e cis a cis e cis |
  ais16\> cis e cis\! b d e d e,, b'' e b gis b e b |
  a16 cis e cis cis, a' e' a, cis, a' e' a, cis, a' e' a, |
  \barNumberCheck #9
  cis,16 ais'\> e' ais,\! d, b' e b e,, b'' e b b, gis' e' gis, |
  cis,16 a' e' a, a cis e cis a cis e cis a cis e cis |
  cis16 e-2\> e-0 e\! b d e d e,, b'' e b gis b e b |
  \barNumberCheck #12
  a16 cis e cis cis, a' e' a, cis, a' e' a, cis, a' e' a, |
  e16 cis'\> e cis\! d, b' e b e,, b'' e b b, gis' e' gis, |
  cis,16 a' e' a, a\f cis e cis a cis e cis a cis e cis |
  \barNumberCheck #15
  fis,16 a e' a, fis a dis a dis, a' b a fis' a, b a |
  e16 gis e' gis, e-1 b' gis' b, e, b' gis' b, e, b' gis' b, |
  fis16-2 b-4 a' b, eis,-1 b' gis'-3 b, fis-2 b a'-4 b, dis,-1 b' fis'-3 b, |
  \barNumberCheck #18
  e,16 b' gis' b, gis, b' e b b, b' e b e, b' e b |
  fis16 a e' a, fis a dis a dis, a' b a fis' a, b a |
  e16 gis e' gis, e b' gis' b, e, b' gis' b, e, b' gis' b, |
  \barNumberCheck #21
  fis16 b a' b, eis, b' gis' b, fis b a' b, dis, b' fis' b, |
  e,16 b' gis' b, gis, b' e b b, b' e b e, b' e b |
  d,16\p gis e' gis, fis' gis, e' gis, d gis e' gis, e, gis' e' gis, |
  \barNumberCheck #24
  cis,16 a' e' a, fis' a, e' a, cis, a' e' a, e, a' e' a, |
  b,16\f gis' d' gis, e, gis' d' gis, a, a' cis a e, a' cis a |
  e,16 gis' b gis gis, gis' b e b, gis' b e e, gis b e |
  \barNumberCheck #27
  d,16\p gis e' gis, f' gis, e' gis, d gis e' gis, e, gis' e' gis, |
  c,16 a' e' a, f' a, e' a, c, a' e' a, e, a' e' a, |
  % page 2 of source
  b,16 gis' d' gis, e, gis' d' gis, a, a' c a e, a' c a |
  e,16 gis' b gis e gis b e d, gis b e b, gis' b e |
  a,,16\f a' cis a e' a, cis a e a cis a cis, a' cis a |
  \barNumberCheck #32
  a,16 a' cis a a' a, cis a a' a, cis a a' a, cis a |
  a,16 a' d a fis' a, d a fis a d a d, a' d a |
  a,16 a' d a a' a, d a a' a, d a a' a, d a |

  a,16 a' cis a e' a, cis a e a cis a cis, a' cis a |
  a,16 a' cis a a cis e cis a cis e cis a cis e cis |
  ais16\> cis e cis\! b d e d e,, b'' e b gis b e b |
  \barNumberCheck #38
  a16 cis e cis cis, a' e' a, cis, a' e' a, cis, a' e' a, |
  cis,16\> ais' e' ais,\! d, b' e b e,, b'' e b b, gis' e' gis, |
  cis,16 a' e' a, a cis e cis a cis e cis a cis e cis |
  \barNumberCheck #41
  cis16\> e e e\! b d e d e,, b'' e b gis b e b |
  a16 cis e cis cis, a' e' a, cis, a' e' a, cis, a' e' a, |
  e16\> cis' e cis\! d, b' e b e,, b'' e b b, gis' e' gis, |
  \barNumberCheck #44
  a,16\f a' cis a e' a, cis a e a cis a cis, a' cis a |
  a,16 a' cis a g' a, cis a g' a, cis a g' a, cis a |
  a,16 a' d a fis' a, d a fis a d a d, a' d a |
  \barNumberCheck #47
  a,16 a' d a f' a, d a f' a, d a f' a, d a |
  a,16\mf a' cis a e' a, cis a e a cis a cis, a' cis a |
  a,16 a' cis a e' a, cis a e a cis a cis, a' cis a |
  \barNumberCheck #50
  a,16 gis'_\markup{\italic dimi.} d' gis, e' gis, d' gis, f' gis, d' gis, e' gis, d' gis, |
  a,16 gis' d' gis, e' gis, d' gis, fis' gis, d' gis, e' gis, d' gis, |
  a,16 a' cis a e' a, cis a e a cis a cis, a' cis a |
  \barNumberCheck #53
  a,16 a' cis a e' a, cis a e a cis a cis, a' cis a |
  a,16 gis' d' gis, e' gis, d' gis, f' gis, d' gis, e' gis, d' gis, |
  a,16\pp gis' d' gis, e' gis, d' gis, fis'! gis, d' gis, e' gis, d' gis, |
  \barNumberCheck #56
  \override TextSpanner #'(bound-details left text) = "rall."
  \textSpannerDown
  a,16\startTextSpan a' cis a e' a, cis a e a cis a cis, a' cis a |
  a,16 a' cis a e' a, cis a e a cis a cis, a' cis e\stopTextSpan |
  <a cis, a e>2^\fermata b,2\rest |

  \bar "||"
}

lowerVoice = \relative c {
  \voiceTwo
  a2 e'4 cis |
  a2 a''4 a |

  a,,2 fis'4 d |
  a2 a''4 a |
  a,,2 e'4 cis |

  a4 a' a a |
  ais4 b e,, gis' |
  a4 cis, cis cis |

  cis4 d e, b' |
  cis4 a' a a |
  cis4 b e,, gis' |

  a4 cis, cis cis |
  e4 d e, b' |
  cis4 a' a a |

  fis4 fis dis2 |
  e4 e e e |
  fis4 eis fis dis |

  e4 gis, b e |
  fis4 fis dis2 |
  e4 e e e |

  fis4 eis fis dis |
  e4 gis, b e |
  d2 d4 e, |

  cis'2 c4 e, |
  b'4 e, a e |
  e4 gis b e |

  d2 d4 e, |
  c'2 c4 e, |

  b'4 e, a e |			% page 2 of source
  e4 e' d b |
  a2 e'4 cis |

  a2 a''4 a |
  a,,2 fis'4 d |
  a2 a''4 a |

  a,,2 e'4 cis |
  a4 a' a a |
  ais4 b e,, gis' |

  a4 cis, cis cis |
  cis4 d e, b' |
  cis4 a' a a |

  cis4 b e,, gis' |
  a4 cis, cis cis |
  e4 d e, b' |

  a2 e'4 cis |
  a2 g''4 g |
  a,,2 fis'4 d |

  a2 f''4 f |
  a,,2 e'4 cis |
  a2 e'4 cis |

  a2 f''4 e |
  a,,2 fis''!4 e |
  a,,2 e'4 cis |

  a2 e'4 cis |
  a2 f''4 e |
  a,,2 fis''4 e |

  a,,2 e'4 cis |
  a2 e'4 cis |
  a2_\fermata s2 |
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \commonVar
      \clef "treble_8"
      \key a \major \time 4/4
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "guitar tab" \with {
      restrainOpenStrings = ##t
    }
    <<
      \clef moderntab
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
