\version "2.16.1"
\header {
  title = "Etude 18"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 18"
  mutopiatitle = "25 Studies: No. 18"
  mutopiacomposer = "CarcassiM"
  mutopiaopus = "O 60"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Mayence, B. Schott's Söhne"
  % From Boije 94
  date = "1853"
  enteredby = "Glen Larsen"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/12/01-1884"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

global = {
  \time 6/8
  \key a \major
}

rf = #(make-dynamic-script "rf")
pf = #(make-dynamic-script "pf")
gpos = #(define-music-function (parser location text) (string?)
	 #{ \mark\markup{\teeny\italic #text } #})

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
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

upperVoice = \relative c'' {
  \voiceOne
  \tempo "Allegretto."
  \repeat volta 2 {
    <cis-1>8\f d e a, b cis |
    fis,8 gis a <d,-3> e fis |
    b,8 cis d gis, e' d |
    cis8 d e a,4. |
    a8\p^\markup{\small\italic II} d fis a a a |

    a8 gis fis e4. |
    a,8 d fis a a a |
    a8 gis fis e4. |
    gis,,8\rf^\markup{\small\italic IV} bis' dis gis gis gis |
    gis8 e dis cis4. |

    gis,8\rf bis' dis gis gis gis |
    gis8 e dis cis4. |
    fis,8\pf a d fis gis a |
    gis,8 cis e e fis gis |
    gis,8\f a gis fis e dis |

    cis8 e gis cis4 r8
  }
  \repeat volta 2 {
    <cis'-1>8\f d e <ais,-1> b cis |
    <e,-0>8 fis g cis, d e |
    <fis,,-1>8\rf <fis'-3> <ais-2> <cis-1> <fis-1> <e-4> |
    <d-3>8 e fis b,4. |

    <b'-1>8\p cis d <gis,-1> a b |
    <d,-1>8 e f <b,-0> c d |
    e,,8\sf e' gis b e d |
    c8 d e a,4. |
    f8\pf^\markup{\small\italic III} c' a' a a a |

    <cis,,-1>8 <c'-3> <e-4> <g-1> g g |
    d,8 a' f' f f f |
    a,,8 a' c e e e |
    f,8\cresc a\! d e, a e' |
    d,8 a' f' e, a e' |

    dis2.\sf |
    e8 fis e d cis b |
    cis'8\f d e a, b cis |
    fis, gis a d, e fis |
    b,8 cis d gis, e' d |

    cis8 d e a,4. |
    a8\p d fis a a a |
    a8 gis fis <e cis>4. |
    a,8 d fis a a a |
    a8 gis fis <e cis>4. |

    dis,8\rf a' bis fis' fis fis |
    fis8 e dis <e cis>4. |
    \acciaccatura{<b d gis>8}<d'-4>8 <b-1> <gis-3>_\markup{\italic rall.}\> <e-0> d b\! |
    a8\p cis e a8 r r |
    
  }

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  a2. |
  d4 r8 <b-1>4 r8 |
  gis4 r8 e4 r8 |
  a2. |
  d2. |

  a2. |
  d2. |
  a2. |
  gis2. |
  cis2. |

  gis2. |
  cis2. |
  fis4 r8 r4 r8 |
  gis4 r8 r4 r8 |
  gis,4 r8 r4 r8 |

  cis4 s8 s4. |
  s2. |
  s2. |
  fis,2. |
  b2. |

  s2. |
  s2. |
  e,2. |
  a2. |
  f'2. |

  c2. |
  d2. |
  a2. |
  f'4. e |
  d4. e |

  <a f>8 a, b c b a |
  <e gis'>8 r r r4 r8 |
  a2. |
  d4 r8 b4 r8 |
  gis4 r8 e4 r8 |

  a2. |
  d2. |
  a4. a' |
  d,2. |
  a4. a' |

  dis,2. |
  e4. a |
  e,2. |
  a4. <a' cis e >8 s s |
}

\score {
  <<
    \new Staff = "Guitar"
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
  \layout { }
  \midi {
    \tempo 4 = 180
  }
}
