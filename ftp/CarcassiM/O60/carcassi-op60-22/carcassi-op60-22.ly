\version "2.18.0"
\header {
  title = "Etude 22"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 22"
  mutopiatitle = "25 Studies: No. 22"
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

 footer = "Mutopia-2014/02/23-1932"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

global = {
  \time 6/8
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
  \partial 8. {s16\f s8 } | \repeat unfold 5 { s16\> s16*4 s16\! } s4. |
  s16\< s8*5 s16\! | s16\f s8*5 s16 | s16\> s8*5 s16\! s2.\mf |
  s4. s8. s8.\mf | s16\> s16\! s4 s16\> s16\! s4 | s16\> s16\! s4 s16\> s16\! s4 |
  s4. s16\> s16\! s4 | s4. s16\> s16\! s4 | s16\f\< s8*5 s16\! s16\> s4 s16\! s4. |
  s16\< s4 s16\! s16\> s4 s16\! | s16\> s4 s16\! s16\> s4 s16\! | s16\f\< s4 s16\! s16\> s4 s16\! | s16\< s4 s16\! s4. |
  s2.\f | s2. | s16\mf s4 s16 s4. | s16 s16\dim s4\! s4. |
  s16\p s4 s16 s4. |
  s4.\cresc s4.\! | s16 s4\< s16 s4.\! | s2. |
  s16\> s4 s16\! s16\> s4 s16\! | s16\> s4 s16\! s16\> s4 s16\! | s16\> s4 s16\! s4. | s4.\< s16 s4 s16\! |
  s16\f s4 s16 s4. | s4.\> s4 s8\! | s2.\mf | s4.
}

upperVoice = \relative c' {
  \tempo "Allegretto"
  % for barre's
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \repeat volta 2 {
    \partial 8. { e16 f fis } |
    \repeat unfold 2 { g16( e) c g e c } |
    \override TextSpanner.bound-details.left.text = #"V "
    c''16\startTextSpan ( a) f c a f c''16( a) f c a f\stopTextSpan |
    g'16( f) d b g f d b g gis a b |

    c16 d e f g a b c d e f fis |
    \repeat unfold 2 { g16( e) c g e c } |
    <c''-4>16( <a-1>) <fis-2> dis c a fis dis c ais fis c' |

    \override TextSpanner.bound-details.left.text = #"VII "
    b16 e g b e g <b,,-1>\startTextSpan  <fis'-3> <b-4> <dis-2> <fis-1> <b-1>\stopTextSpan |

    <e,,-1>16 <b'-3> <e-4> <g-2> <b-1> <e-4>
    << { \voiceOne e,8 } \new Voice {\voiceTwo e,8 } >>\oneVoice r16
  }
  \repeat volta 2 {
    e'16 dis e |
    f16( e) d! b gis e f( e) d b gis e |
    f''16( e) dis e c a f( e) dis e c a |

    a''16( g) f d b g a( g) f d b g |
    a''( g) fis g e c a( g) fis g e c |
    \override TextSpanner.bound-details.left.text = #"VII "
    bes16( c) e g bes c <e-0> <g-3> <bes-1> \startTextSpan <d-4> c b |
    c16( b)\stopTextSpan a f c <b-0> d( c) a f c b |
    bes16( c) e g bes c e g bes d c b |
    c16( b) a f c b d( c) a f c b |
    \repeat unfold 2 {
      ais16( cis) e g ais cis e g fis \slashedGrace {a8} g16 fis e |
      dis16( b) ais b fis' d b fis eis fis dis b |
    }
    << { \voiceOne b16 b' ais b fis' dis b8 r r |
         \repeat unfold 2 {
           b,16 b' ais b ais b r8 r4 |
         }
         b,16 b' dis, b' fis b b, b' d, b' fis b |
         \override TextSpanner.bound-details.left.text = #"VII "
         g,16 b d g b <d-1>\startTextSpan \stemDown <g-2> b d c b a \stemNeutral |
       }
       \new Voice {
         \voiceTwo
         b,,8 r r b'16 fis eis fis dis b |
         b4.    b16 fis' eis fis dis b |
         b4. b16 fis' eis fis eis d |
         b8 dis fis b, d fis |
         g,4 s s |
       }
     >> \oneVoice
    g''16 fis a g f\stopTextSpan <e-0> \slashedGrace {e8} d16 cis d e f fis |

    \repeat unfold 2 { g16( e) c g e c } |
    \override TextSpanner.bound-details.left.text = #"V "
    c''16(\startTextSpan a) f c a f c''16( a) f c a f\stopTextSpan |
    g'16( f) d b g f d b g gis a b |
    c16 d e f g a b c d e f fis |

    \repeat unfold 2 { g16( e) c g f c } |
    <c''-4>16( <a-1>) <fis-2> dis c a fis dis c a fis c' |
    \override TextSpanner.bound-details.left.text = #"III "
    g16 c f g c e <g,,-1>\startTextSpan <d'-3> <g-4> <b-2> <d-1>\stopTextSpan <g-1> |

    << {\override TextSpanner.bound-details.left.text = #"VIII "
      <c,,-1>16\startTextSpan <g'-3> <c-4> <e-2> <g-1> <c-1>\stopTextSpan c,4 b8\rest }
       \\  { s4. c,4 s8 }>>
  }
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \global
      \clef "treble_8"
      \new Voice = "upperVoice" \upperVoice
      \new Dynamics \dynamics
    >>
  >>
  \layout { }
  \midi {
    \tempo 4 = 90
  }
}
