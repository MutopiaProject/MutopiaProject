\version "2.16.1"
\header {
  title = "Air varié"
  composer = "Joseph Küffner (1776-1856)"
  mutopiacomposer = "KuffnerJ"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  enteredby = "Glen Larsen"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
  % http://en.wikipedia.org/wiki/Joseph_K%C3%BCffner
  source = "München. Internationaler Guitarristen-Verband. 1905"
  moreInfo = "Air with theme and 2 variations."

 footer = "Mutopia-2013/12/03-1887"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #5
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

global = {
  \time 2/4
  \key c \major
}


%%% THEMA

themaUpper = \relative c {
  \voiceOne
  \slurDown
  \tempo "Allegretto"
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(3 1)
  \set Timing.beamExceptions = #'()
  \partial 8 { <e-2 c'-1>8\tenuto\p | }
  \repeat volta 2 {
    <e g>8 q q <e c'>8\tenuto |
    <f-3 a-2>8 q q <f-3 d'-4>\tenuto |
    <g b>8. <c-1>16\< <d-4>8 <e g,>\! |
    <c-1 e,-2 c-3> <d-4 g,> <e-4 c> <c-1 e,-2>\tenuto\mf |
    <e, g>8 q q <e c'>8\tenuto |
    <f a>8 q q <f d'>\tenuto |
    <g b>8. <c>16\< <d>8 <e g,>\! |
    <c e,>4\f b\rest |
  }

  \repeat volta 2 {
    \set Timing.measurePosition = #(ly:make-moment -1 8)
    <c-1 e,-2>8\ff |
    <b g>8 <c g> <d-4 g,-3> <b g> |
    <c g>8 <d-4 g,> <e c g> <c g> |
    <b g>8 <c g> <d-4 g,-3> <b g> |
    <c g>8 <d-4 g,> <e c g> <c g>\tenuto\mf |
    <e, g>8 q q <e c'>8\tenuto |
    <f a>8 q q <f d'>\tenuto |
    <g b>8. <c>16\< <d>8 <e g,>\! |
    <c e,>4\f b\rest |
  }
  \bar "||"
}

themaLower = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \partial 8 {s8 |}
  \repeat volta 2 {
    s2*2 |
    <g-3>2 |
    s2*3 |
    g2 |
    c4 s4
  }
  \repeat volta 2 {
    \set Timing.measurePosition = #(ly:make-moment -1 8)
    s8 |
    d8 e f d |
    e8 <b-2> c e\p |
    d8 e f d |
    s2*3 |
    g,2 |
    c4 s
  }
}


%%% VAR. 1

varOneUpper = \relative c' {
  \voiceOne
  \repeat volta 2 {
    \partial 8 {g8\p | }
    c,16_\markup{\italic "con espressione"} g' c e <fis-2>( <g-4>) e c |
    f,,16 <a'-2> <d-3> <f-1> <gis-4>( <a-4>) <f-1> <d-4> |
    g,,16 g'\< b f' <g-4>( f) <d-4> b\! |
    b16(c) e c g c e, g |
    c,16 g' c e fis( g) e c |
    g,16 a' d f gis( a) f d |
    g,,16 g'\< b f' g( f) d b\! |
  }
  \alternative {
    { \set Timing.measureLength = #(ly:make-moment 3 8)
      c16\f g e g c,8
    }
    { \set Timing.measureLength = #(ly:make-moment 2 4)
      c'16 g e g c, g' c g
    }
  }
  \repeat volta 2 {
    g,16\ff g' b g <f-4> g b g |
    e16 g c e <fis-3>( <g-4>)\> e c\! |
    g,16\p g'\< b g f g b\! g |
    e16 g c e g,, g' b f' |
    c,16\mf g' c e fis( g) e c |
    f,,16 a' d f gis( a) f d |
    g,,16 g'\< b f' g( f) d b\! |
  }
  \alternative {
    { c16\f g e g c,8 r | }
    { \set Timing.measureLength = #(ly:make-moment 3 8)
      c'16\f g e g c,8
    }
  }
  \bar "||"
}

varOneLower = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \partial 8 {r8 |}
  c4 r |
  f,4 r |
  g4 r |
  r4 g'8 e |
  c4 r |
  f,4 r |
  g4 r |
  \set Timing.measureLength = #(ly:make-moment 3 8)
  r8 e' c |
  \set Timing.measureLength = #(ly:make-moment 2 4)
  r8 e c4 |
  g4 f' |
  e4 r |
  g,4 f' |
  e4 g, |
  c4 r |
  f,4 r |
  g4 r |
  r8 e' c s |
  \set Timing.measureLength = #(ly:make-moment 3 8)
  r8 e c 
}


%%% VAR. 2

varTwoUpper = \relative c' {
  \voiceOne
  \repeat volta 2 {
    \partial 8 { \times 2/3 {r16\p g_\markup{\italic brillante} e } |}
    \times 2/3 { c16[( e) g] }
    \times 2/3 { c e( <f-1>) }
    \override TupletBracket #'bracket-visibility = ##f
    \override TupletNumber #'transparent = ##t
    \times 2/3 {
      <fis-2>16[( <g-3>) f] e d c |
      f,,16[ a' d] f d f <gis-4>16[( <a-4>) <g-2>16] <e-1> e <d-4>16 |

      g,,16[ g'( a)] b( c)\cresc d\! e[( f) fis] g( f) d |
      c16[ e d] c b a g[( a)\< g] f e d\! |
      c16\mf[( e) g] c e f fis[( g) f] e d c |

      f,,16[ a' d] f d f gis[( a) g] f e d |
      g,,16[ g'( a)] b( c) d e[( f) fis] g( f) d |
    }
  }
  \alternative {
    { \times 2/3 { c16[ e g,] c[ e, g] } c,8 }
    { \times 2/3 { c'16[ e g,] c[ e, g] } c,8 r }
  }

  \repeat volta 2 {
    \times 2/3 {
      g16\ff[ g' b] <b,-2> g' b d,[ g b] <f-4> g b |
      c16[ e, g] c e( f) fis[( g)\> f] e d c\! |
      g,16\p[ g' b] b, g' b d,[ g b] f g b |

      e,16[\cresc g c\! e g, c] g,[ g'\< b f' g, b]\! |
      c,16\mf[( e) g] c e f fis[( g) f] e d c |
      f,,16[ a' d] f d f gis[( a) g] f e d |

      g,,16[ g'( a)]\< b( c) d e[( f) fis] g( f) d\! |
    }
  }
  \alternative {
    { \set Timing.measureLength = #(ly:make-moment 2 4)
      \times 2/3 {
	c16\f[ e g,] c[ e, g]
      }
     c,8 r
    }
    { \set Timing.measureLength = #(ly:make-moment 3 8)
      \times 2/3 {
	c'16\f[ e g,] c[ e, g]
      }
     c,8^\markup{\italic Fine.}
    }
  }
  \bar "||"
}

varTwoLower = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \partial 8 {s8 |}
  c4 r |
  f,4 r |
  g4 r |
  r2 |
  c4 r |

  f,4 r |
  g4 r |
  \set Timing.measureLength = #(ly:make-moment 3 8)
  r4 c8 |
  \set Timing.measureLength = #(ly:make-moment 2 4)
  r4 c8 s |
  
  g8[ b d f] |
  r2 |
  g,8[ b d f] |
  e4 g, |
  c4 r |
  f,4 r |
  g4 r |
  r4 c8 r |
  \set Timing.measureLength = #(ly:make-moment 3 8)
  r4 c8
}


\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \set Staff.instrumentName="Thema."
      \global
      \clef "treble_8"
      \context Voice = "themaUpper" \themaUpper
      \context Voice = "themaLower" \themaLower
    >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 100
  }
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \set Staff.instrumentName="Var 1."
      \global
      \clef "treble_8"
      \context Voice = "varOneUpper" \varOneUpper
      \context Voice = "varOneLower" \varOneLower
    >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 100
  }
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \set Staff.instrumentName="Var 2."
      \global
      \clef "treble_8"
      \context Voice = "varTwoUpper" \varTwoUpper
      \context Voice = "varTwoLower" \varTwoLower
    >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 80
  }
}
