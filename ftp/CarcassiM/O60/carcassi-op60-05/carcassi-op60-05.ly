\version "2.16.1"
\header {
  title = "Etude 5"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 5"
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

 footer = "Mutopia-2013/09/01-1866"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}
pf = #(make-dynamic-script "pf")

gpos = #(define-music-function (parser location text) (string?)
	 #{ \mark\markup{\teeny\italic #text } #})

global = {
  \time 2/4
  \key g \major
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

upperVoice = \relative c {
  \voiceOne
  \slurDown
  \tempo "Moderato"

  \partial 8 { d8\f } |
  g16 b fis a e c' d, b' |
  c,16 e' b, d' a, c' g, b' |
  c,16 a' cis, g' <d-4> <fis-3> <c-2> <a'-1> |
  <b,-2>16 <d'-4> a, c' \once\noBeam b8 d,8 |
  g16 b fis a e c' d, b' |
  c,16 e' b, d' ais, <cis'-3> ais, <g''-4> |

  b,,16 fis'' e, e' fis, d' fis, cis' |
  b16 d fis, cis' \once\noBeam b8 d,-4 |
  <g-4>16\p \gpos "VII" b\< d g b d d\! d |
  <d-4>16\> c a fis\! \once\noBeam d8 <d,-4> |
  <fis-3>16 <a-1>\< <d-1> <fis-1> <a-4> <d-4> d\! d |
  <d-4>16\> b g e\! d8 d |

  b16\mf dis a dis g, e' dis, fis' |
  e,16 g' fis, dis' g, e' gis,, b' |
  a,16 c' c, a' b, g' b, fis' |
  e16[ g b, fis'] e8\noBeam g, |
  c16\pf e\< g c e g\! g g |
  <g,,-2>16 <d'-0>\< <f-3> g b <g'-4>\! g g |

  c,,16 e\< g c e g\! g g |
  g,,16 d'\< f g b\! g' g g |
  gis16 gis\cresc gis gis a a a a |
  fis16\f fis fis fis g g f f |
  e16 e a a d, d fis fis |
  g16 g fis e d cis e d |

  a16\mf cis\< g cis fis, d' d, c'\! |
  g16 b dis, b' e, b'\sf cis,\> <bes' e> |
  d,16\! g b! d d, a' c fis |
  g16 g fis e d cis e d |
  a16 cis g cis fis, <c' a'> d, <c' a'> |
  g16\< b f b e, <c' g'> ees, <cis' g'>\! |

  d,16\f b' d g d, a' c fis |
  <g b,>8 r16 <d'-4>16 d8\mf d |
  <d-4>8 r16 <d,-2>16 <d fis,-3>8\p q |
  <f, gis d'>8\sf d16 <gis f'> c, <a' e'> a, <c' a'> |
  d,16\f b' d g d, a' c fis |
  <g b,>8 r16 g\ff g8 g |
  <g b, g>2
  
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \partial 8 { d8 } |
  g8 fis e d |
  c8 b a g |
  c8 cis d c |
  b8[ a g] d' |
  g8 fis e d |
  c8 b ais ais |

  b8 e fis fis |
  b8[ fis b,] d |
  g8 r r <b-2 g'-1> |
  <c-3 fis-1>8 r r d, |
  fis8 r r <c'-3 fis-1> |
  <b-2 g'-1>8 r r4 |

  b8 a g dis |
  e8 fis g gis, |
  a8 c b b |
  e8[ b e,] g |
  c4 r8 <e c'>8 |
  g,4 r8 <fis'-2 d'-3> |

  c4 r8 <e c'>8 |
  g,4 r8 <f' d'>8 |
  <e d'>4 <a, cis'>4 |
  <d c'>4 <g b>8 <gis b> |
  <a c>8 c, <d b'> <d c'> |
  <g b>8 r r4 |

  a8 g fis d |
  g8 dis e cis |
  d4 d |
  <g b>8 r r4 |
  a8 g fis d |
  g8 f e ees |

  d4 d |
  <g a,>8 s8 <c-3 fis-1>8 q |
  <b-2 g'-1>8 s <c,-1> c |
  b8 d[ c a] |
  d4 d |
  <g g,>8 s16 <b g> <b d,>8 <b b,> |
  <d, b g>2
}

middleVoice = \relative c' {
  \voiceThree
}


\score {
  <<
    \new Staff = "Guitar" \with {
      \override DynamicTextSpanner #'style = #'none
      \override Fingering #'staff-padding = #'()
      \override Fingering #'add-stem-support = ##t
    }
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \global
      \clef "treble_8"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
%      \context Voice = "middleVoice" \middleVoice
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
  \layout {
    \override Voice.StringNumber #'stencil = ##f
  }
  \midi {
    \tempo 4 = 100
  }
}

