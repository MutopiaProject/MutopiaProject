\version "2.18.0"
\header {
  title = "Etude 23"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 23"
  mutopiatitle = "25 Studies: No. 23"
  mutopiacomposer = "CarcassiM"
  mutopiaopus = "O 60"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Mayence, B. Schott's Söhne"
  % From Boije 94
  date = "1853"
  enteredby = "Glen Larsen"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2014/02/23-1933"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

global = {
  \time 12/8
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
    \override TextSpanner #'style = #'solid
    \override TextSpanner #'font-size = #-4
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
  s8\mf s8 s8\< s8*4 s8\! s8*4 | s8*2 s8\> s8*5 s8\! s8*3 | s8\p s8*11 |
  s8*2 s8\< s8*2 s8\! s8\> s8*4 s8\!\mf | s8*2 s8\< s8*7 s8\! s8 | s8*3 s8\> s8*5 s8\! s8*2 | s1.\p |
  s1. | s8\mf s8*11 | s1. | s8*2 s8\< s8*7 s8\! s8 |
  s1. | s8\mf s8*11 | s1.*2 |
  s1. | s8\p s8*11 | s1.*2 |
  s1.*2 | s8 s8\cresc s8*9 s8\! | s1. |
  s1.*3 | s8 s8\> s8*8 s8\! s8 |
  s1. | s8*7 s8\< s8*3 s8\! | s8*6 s8\> s8*3 s8\! s8 |
}

upperVoice = \relative c' {
  \voiceOne
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \tempo "Allegro."

  cis8\segno e e <fis-1>( e) e <a-1>( e) e <cis'-1>( e,) e |
  <e'-4>8 <d-2> <b-4> <gis-1> <e-0> dis fis( e) d( b) gis e |
  cis'8 d e fis gis a <b,-0> <cis-2> d e eis fis |

  gis,8 a b cis d dis e gis( fis) e d( b) |
  cis8 e e fis( e) e a( e) e cis'( e,) e |
  e'8( d) cis gis <e-0> dis fis( e) d( b) gis e |
  cis'8 d e fis gis a b, cis d e eis fis |

  gis,8 fis'( e) d( b) cis a4 b8\rest b4\rest^\markup{\italic Fin.} b8\rest \bar "||" |
  gis8 b b cis( b) b <e-1>( b) b <gis'-4>( b,) b |
  \override TextSpanner.bound-details.left.text = #"VI "
  a8 b b dis( b) b <a-2>\startTextSpan b b <fis'-3>( b,) b\stopTextSpan |
  \override TextSpanner.bound-details.left.text = #"IV "
  gis8 a b cis dis e <eis-3>\startTextSpan fis gis b( a) fis\stopTextSpan |

  <e-0>8 dis fis e dis cis b cis( b) ais b a |
  gis8 b b cis( b) b e( b) b gis'( b,) b |
  a8 b b dis( b) b a b b fis'( b,) b |
  gis a b cis dis e eis f gis b( a) fis |

  e8 dis cis b a fis e gis b e e e|
  \bar "||" \key c \major
  \override TextSpanner.bound-details.left.text = #"VIII "
  <e-1>8\startTextSpan g g a( g) g\stopTextSpan e'( d) <c-2> <b-1>( c) <a-4> |
  <fis-3>8\startTextSpan <g-1> g a( g) g <f-3> <g-1> g a( g) g |
  e8 g g a( g) g\stopTextSpan e'( d) <c-2> <b-1>( c) b |

  f8\startTextSpan g g a( g) g f g g a( g) g |
  \override TextSpanner.bound-details.left.text = #"III "
  e8 g g\stopTextSpan a( g) g <d-1>\startTextSpan gis gis a( gis) gis\stopTextSpan |
  <a-3>8( e) e f( e) e b e e f( e) e |
  \override TextSpanner.bound-details.left.text = #"VII "
  <e-3>8\startTextSpan <c'-2> c <d-4>( c) c\stopTextSpan <b,-0> <f'-2> f <a,-3> <fis'-4> fis |

  gis,8 e' e f!( e) e e'( e,) e d e e |
  c8 e e c e e b f' f a, fis' fis |
  gis,8 e' e f!( e) e e'( e,) e d e e|
  cis8 e e c e e b e e a, dis dis |

  gis,8 e' e f( e) e e e, e f( e) e |
  e8 e, e d( e) e e( gis) b e g b |
  e8 e e fis( e) e e' d b gis e d_\markup{\italic "D.C."} |

  \bar "||"
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  a1. |
  e1. |
  a2. d |
  e,1. |
  a1. |
  e1. |
  a2. d |
  e,2. a4 s2 |

  e'2. r |
  fis2. <dis-1> |
  e,2. a |
  b4 r8 r4 r8 s4*3 |
  e2. r |
  fis2. dis |
  e,2. a |

  b2. e,4 r8 r4 r8 |
  \key c \major
  c''2. r |
  <b-2>2. <g-2> |
  c2. r |

  b2. g |
  c2. <b-2> |
  <c-2>4. r4 r8 gis2. |
  a,2. d4. <dis-1> |

  e4 r8 r4 r8 r4 s8 b'4. |
  a4. a, d dis |
  e4 r8 r4 r8 r4 r8 b'4. |
  ais4. a g! f |

  e4 s8 s4.*3 |
  s1.*2
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \clef "treble_8"
      \global
      \new Voice = "upperVoice" \upperVoice
      \new Voice = "lowerVoice" \lowerVoice
    >>
    \new Dynamics \dynamics
  >>
  \layout { }
  \midi {
    \tempo 4 = 108
  }
}
