\version "2.16.1"
\header {
  title = "Etude 17"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 17"
  mutopiatitle = "25 Studies: No. 17"
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

 footer = "Mutopia-2013/12/01-1883"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

global = {
  \time 2/4
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

upperVoice = \relative c {
  \voiceOne
  \tempo "Moderato."
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Voice.beatStructure = #'(2 2)
  \repeat volta 2 {
    a16\f a' b, b' c, c' d, d' |
    e,16 e' f, f' e, e' a, a' |
    e,16 c'' e,,, c''' <gis,-2> <b'-4> e,,, b''' |
    <a,-1>16\mf <a'-4> a,, a'' <cis,-2> g' a,, g'' |
    <d-3>16\dim fis\! a,, fis'' d f a,, f'' |

    c16 e a,, e'' d, d' dis, c' |
    e,16 b' gis b dis, c' a c |
    e,16 gis b e e,, d'\cresc c\! b |
    a16\f a' b, b' c, c' d, d' |
    e, e' f, f' e, e' a, a' |

    <e,-2>16 c'' e,,, c''' <gis,-2> <b'-4> e,,, b''' |
    a,16\mf a' a,, a'' cis, g' a,, g'' |
    d16 fis a,, fis'' d f a,, f'' |
    c16 e a,, e'' d, d'\< dis, c'\! |
    e,16 b' a b e,, b''\> gis e'\! |

    a,,16\p a' e' c a8 r
  }
  \repeat volta 2 {
    c,16\f c' d, d' e, e' f, f' |
    g,16 g' a, a' g, g' c, c' |
    <c,-1>16\mf e' <g,,-0> e'' c, e' g,, e'' |
    <e,-2>16 <g-1> g, g' <f-3> <a-4> e g |
    <f-3>16 <d'-4> <g,,-0> d'' f, d' g,, d'' |

    <d,-2>16 <f-1> <g,-0> f' <e-4> <g-3> <d-2> <f-1> |
    <c-1>16 <e-2> <g,-0> e' <a,-3> <f'-2> <g,-1> <e'-2> |
    <f,-1>16 <d'-2> <g,,-1> d'' <g,-0> <e'-0> f, d' |
    e,16 c' c, c' f, d' e, c' |
    d,16 b' b, d' e, c' d, b' |
    c,16 a' a, c' d,\< b' dis, a'\! |

    e16\f gis b e e,,\f d' c b |
    a16\f a' b, b' c, c' d, d' |
    e,16 e' f, f' e, e' a, a' |
    <cis,-2>16\mf <bes'-3> a,, bes'' <cis,-2> <a'-1> a,, a'' |
    <d,-3>16 <g-4> d, g' <d-3> <f-1> d, f' |
    e,16\mf e' d, gis c, a' b, b' |

    a,16\cresc c'\! g cis f, d' d, f' |
    e,16\f c' a e' e,, b'' gis e' |
    }
  \alternative {
    { a,,16 a' e' c a8 r | }
    { a8 a,16\< a' a, a' a, a'\! | }
  }
  <g cis>8 \mf <cis-2>16 <e bes'-3> cis <e bes'-3> cis <e bes'-3> |
  <f-2 a-1>8 a,,16[ a'] a, a' a, a' |

  \set Voice.beatStructure = #'(1 1 2)
  <fis g d'>8\sf g16\< <b f'>16 g <b f'> g <b f'>\! |
  <c e>8\sf b16\< <d gis>16 b <d gis> b <d gis>\! |
  <e a>8\sf f,16\< <a dis> f <a dis> f <a dis>\! |
  <a c e>8\sf r r4 |
  gis'2\sf |
  <a e c>2\f\fermata

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \set Voice.beatStructure = #'(4)
  a8 b c d |
  e8 f e a |
  e8 e, gis' e, |
  a'8 a, cis' a, |
  d'8 a, d' a, |

  c'8 a, d dis |
  e8 gis dis a' |
  e4 e, |
  a8 b c d |
  e f e a |

  e e, gis' e, |
  a'8 a, cis' a, |
  d'8 a, d' a, |
  c'8 a, d dis |
  e8 a e,4 |

  a4 s |
  c8 d e  f |
  g8 a g c |
  c8 g c g |
  e'8 g, f' e |
  f8 g, f' g, |

  d'8 g, e' d |
  c8 g a g |
  f8 g, g' f |
  e8 c f e |
  d8 b e d |
  c8 a d dis |

  e4 e, |
  a8 b c d |
  e8 f e a |
  cis8 a, cis' a, |
  d'8 d, d' d, |
  e8 d c b |

  a8 g' f d |
  e8 a e,4 |
  a4 s |			% 1st alternative
  \set Voice.beatStructure = #'(1 3)
  a8 a a a |			% 2nd
  a8  c' c c |
  <d-3>8 a, a a |

  a8 g' g g |
  g8 b b b |
  c8 f, f f |
  e8 s s4 |
  <d' b e,,>8.[ f,16\f] e d b e |
  a,2_\fermata
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
    \tempo 4 = 92
  }
}
