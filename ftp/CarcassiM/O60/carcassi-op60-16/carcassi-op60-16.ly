\version "2.16.1"
\header {
  title = "Etude 16"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 16"
  mutopiatitle = "25 Studies: No. 16"
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

 footer = "Mutopia-2013/09/22-1875"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

global = {
  \time 4/4
  \key f \major
}

rf = #(make-dynamic-script "rf")
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

dynamics = {
  s2\mf s | s8 s\> s s s\! s s4 | s1 | s8 s\> s s s\! s s4 |
  s2\rf s | s8 s\> s s s\! s s4 | s8\p s s s\dim s\! s s4 | s8\p s\> s s s\! s s4 | s1\mf |
  s8 s\> s s s\! s s4 | s8 s s s\cresc s2 | s8 s\> s s s\! s s4 | s8\p s8*7 |
  s8 s\> s s s\! s s4 | s8\rf s\> s s s\! s s4 | s8 s\> s s s\! s s4 | s8\f s8*7 |
  s8 s\> s s s\! s s4 |
  s8\mf s s s s\dim s\! s s |
  s8\p s\> s s s\! s s4 | s8 s\> s s s\! s s4 |
}

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(left)
  \tempo "Andante"
  \repeat volta 2 {
    f2 f4 f |
    f2 e4 r |
    g2 g4 g |
    g2 f4 r |

    <a-4>2 a4 a |
    <a-4>2 <gis-3>4 r |
    <c-2>2 <b-4>4 <gis-4> |
    <b-4>2 <a-1>4 r |
  }
  \repeat volta 2 {
    <a-4>2 a4 a |

    <a-4>2 g4 r |
    <f-1>2 e4 <d-2> |
    f2 e4 r |
    f2 f4 f |

    fis2 g4 r |
    <d'-4>2 d4 d |
    d2 <d-4>4 r |
    <b-4>2 <bes-3>4 bes |

    bes!2 a4 r |
    g2 d4 e |
  }
  \alternative {
    { <g-4>2 f4 r }
    { <g>2 f4 r }
  }

  \bar "|."
}

lowerVoice = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(left)
  r8 <c a> q q r q r q |
  r8 <bes c> q q r q q q |
  r8 <bes c> q q r q r q |
  r8 <a c> q q r q q q |

  r8 <c-3 f,-1> <c f,> q r q r q |
  r8 <d-2 e,-1> <d e,> q r q q q |
  r8 <e-3 a,-1> <e a,> q r <f-2 d,> r <d-2 e,-1> |
  r8 <d-3 g> q q r <c-1 a-3> q q |
  r8 <c-3 f,-1> q q r q r q |

  r8 <cis-1 e,> <cis e,> q r q q q |
  r8 <a d,> q q r <bes-2 g,-1> r <b-4 gis,-3> |
  r8 <d a,> q^\markup{\italic "rit."} q r <cis gis,> q q |
  r8 <c a> q q r q r q |

  r8 <bes c> q q r q q q |
  r8 <bes e-2> <bes e> q r q r q |
  r8 <bes e> q q r <a-2 f'-1> q q |
  r8 <g-1 f'-2> q q r <c-1 e-2> r q |

  r8 <cis-2 e-1> <cis e> q r <d-3 f-2> <d f> q |
  r8 <g, bes,> q q r q r <bes-3 c,-2> |
  r8 q q q r <a f> q q |
  r8 <bes c,> q q <a f>4 s |
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
      \new Dynamics { \dynamics }
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
    \tempo 4 = 120
  }
}
