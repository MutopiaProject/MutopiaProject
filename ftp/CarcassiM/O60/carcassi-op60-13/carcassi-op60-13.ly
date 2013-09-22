\version "2.16.1"
\header {
  title = "Etude 13"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 13"
  mutopiatitle = "25 Studies: No. 13"
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

 footer = "Mutopia-2013/09/22-1873"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

global = {
  \time 2/4
  \key a \major
}

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
    \override DynamicTextSpanner #'style = #'none
    \override Fingering #'staff-padding = #'()
    \override Fingering #'add-stem-support = ##t
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  }
}

upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \tempo "Andante grazioso."

  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(1 1 1 1)
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \repeat volta 2 {
    \times 2/3 {
      a16\pf cis e e e e gis, b e a, cis e |
      \override TupletBracket #'bracket-visibility = ##f
      \override TupletNumber #'transparent = ##t
      <cis-3>16 <e-2>\> <e-2> e e e\! b d e e e e |
      b16 d e e e e ais, cis e b d e |

      <d-3>16 <fis-4>\> <e-0> e e e <cis-3> <e-2>\! <e-0> e e e |
      <cis-3>16\f <a'-2> <e-0> e e e <b-1> <gis'-2> <e-0> <a,-1> <fis'-2> <e-0> |
      <gis,-3>16\> <e'-2> <e-0> fis, d' e e,\! cis' e d, b' e |

      cis,16\mf a' e' e e e b, gis' e' a,, a' e' |
      a,16 cis\> e e e e gis, b e e e\! e |
    }
  }
  \repeat volta 2 {
    \times 2/3 {
      e,16\mf gis e' e e e fis, a e' gis, b e |

      a,16 cis e e e e gis, b e e e e |
      <cis-3> <e-2> <e-0> e e e <b-1> <dis-2> <e-0> <a,-1> <cis-2> e |
      a,16 cis e e e e gis, b e e e e |

      fis,16 a dis dis dis dis fis, a dis e, a e' |
      dis,16 a' fis' fis fis fis fis, a b b b b |
      gis16 b e e e e a,, a' cis <b,-1> <a'-2> <dis-4> |

      e,,16\f <a'-2> <fis'-3> fis fis fis e, gis e' e e e |
      e,,16 b''\cresc gis' gis\! gis gis e, a fis' fis fis fis |
      e,,16 cis'' a' a a a e, b' gis' gis gis gis |

      e,,16 <d''-3>\dim <b'-4> b\! b b e,,, <cis''-3> <a'-2> e,, <b''-1> <gis'-2> |
      e,,16 a' fis' <e,-2>_\markup{\italic "rall."}\> <gis-1> e' <fis,-3> <a-1> <dis-4> <gis,-4> <b-2>\! <d-1> |
      a16^\markup{"a Tempo."} cis e e e e gis, b e a, cis e |

      <cis-3>16\f\> <e-2> <e-0> e e e\! b d e e e e |
      b16 d e e e e ais, cis\< e b d e |
      <d-3>16\> <fis-4> <e-0> e e e <cis-3>\! <e-2> <e-0> e e e |

      <cis-3>16\f <a'-2> <e-0> e e e <b-1> <gis'-2> <e-0> <a,-1>\dim <fis'-2> <e-0> |
      <gis,-3>16 <e'-2> <e-0> fis, d' e e, cis' e d, b' e |
      cis,16
        % don't hang the sf so far below the lower beam ...
        \once\override DynamicLineSpanner #'Y-extent = #'(4 . 2) a'\sf
        e' fis, ais fis' b,, b' d e,, gis' e' |
      gis,16\p d'_\markup{\italic "rall."}\> e e e e\!
    } <e cis a>8 b\rest
  }

  \bar "|."
}

lowerVoice = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  a4 gis8[ a] |
  cis4 b |
  b4 ais8[ b] |

  d4 cis |
  cis4 b8[ a] |
  gis8[ fis e d ] |

  cis4 b8[ a] |
  e4 gis' |			%FIXME: e2 + 2nd voice 4th
  e4 fis8[ gis] |

  a4 gis |
  cis4 b8[ a] |
  a4 gis |

  fis4 fis8[ e] |
  dis4 fis |
  gis4 a,8[ b] |

  \repeat unfold 3 { e,4 e' | }

  e,4 e8[ e] |
  e8 e'[ fis gis] |
  a4 gis8[ a] |

  cis4 b |
  b4 ais8[ b] |
  d4 cis |

  cis4 b8[ a] |
  gis8[ fis e d] |
  cis8[ fis b, e,] |
  e'4 a,8 s
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
    \tempo 8 = 120
  }
}
