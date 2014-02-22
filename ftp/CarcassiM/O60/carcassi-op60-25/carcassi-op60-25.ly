\version "2.18.0"
\header {
  title = "Etude 25"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 25"
  mutopiatitle = "25 Studies: No. 25"
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

 footer = "Mutopia-2014/02/22-1939"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

global = {
  \time 4/4 \key a \major
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
  s1\f | s16 s16\< s16*5 s16\! s16\> s16*6 s16\! | s1 |
  s16 s16\< s16*5 s16\! s16\> s16*6 s16\! | s1 | s1 |
  s1 | s1 | s1\f |
  s16 s16\< s16*5 s16\! s16\> s16*6 s16\! | s1 | s16 s16\< s16*5 s16\! s16\> s16*6 s16\! |
  s1\f | s1 | s1\f |
  s1*3 |
  s1*2 | s16 s16\< s16*5 s16\! s2 |
  s16 s16\< s16*5 s16\! s2 | \crescTextCresc s16 s16\< s16*5 s16\! s2 | s1\f |
  \crescHairpin
  s1*3 |
  s8 s8\f s2. | s16\f s16 s8*7 | s16 s16\< s16*5 s16\! s16\> s16*6 s16\! |
  s1 | s16 s16\< s16*5 s16\! s16\> s16*6 s16\! | s1\mf |
  s8 s8\< s2 s8. s16\! | s1\mf | s8 s8\< s2 s8. s16\! |
  s1\mf | s16 s16\> s8*5 s16 s16\! s8 | s1 |
  s1*3 |
  s1*3 |
  s1*3 |
  s1 | s1\f | s1 |
  s1 | s4 s4\ff s2 | s4 s4\sf s2 | s1\sf |
}

upperVoice = \relative c {
  \voiceOne
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \tempo "Allegretto Brillante"

  \repeat volta 2 {
    a16_( cis) <e-1> <a-1> <cis-2> <fis-3>_( e) cis a cis e, a <cis,-4> <e-1> a,_( cis) |
    \override TextSpanner.bound-details.left.text = #"VII "
    e,16 e' gis b \oneVoice <e-0> \startTextSpan <gis-3> <b-1> cis d( b) gis\stopTextSpan <e-0> fis( e) d b \voiceOne |
    a,16_( cis) e a cis fis_( e) cis a cis e, a cis, e a,_( cis) |

    \oneVoice
    e,16 e' gis b e gis b cis d( b) gis e fis( e) d b |
    a,16( cis) e a cis fis( e) cis b, dis a' b dis b'( a) fis |
    \override TextSpanner.bound-details.left.text = #"IX "
    cis,16 gis' cis e gis\startTextSpan b e dis cis b a gis fis\stopTextSpan <e-0> dis cis |
    \voiceOne

    \override TextSpanner.bound-details.left.text = #"IV "
    b,16 gis' e b' gis e' b gis' \oneVoice e b'(\startTextSpan gis) e\stopTextSpan b, fis' a dis |
    \override TextSpanner.bound-details.left.text = #"IX "
    e,,16 gis' b e gis\startTextSpan b dis e\stopTextSpan \voiceOne <e, b>4 b,\rest |
  }
  \repeat volta 2 {
    c16 e g c \oneVoice e a( g) e \voiceOne c e g, c e, g c, e |

    g,16 b d_( f) gis b d e f d_( b) gis a_( gis) f_( d) |
    \oneVoice a16 e' g c e a( gis) e \voiceOne c e g, c e, g cis, e |
    g,16 b d_( f) gis b d e fis d_( b) gis a_( gis) f_( d) |

    \override TextSpanner.bound-details.left.text = #"VII "
    <gis,!-3>16 <b'-4> <d-2> <e-0> \oneVoice <gis-3>\startTextSpan b d( b) gis\stopTextSpan <e-0> dis e f( e) d( b) |
    \override TextSpanner.bound-details.left.text = #"V "
    a,16( c) e a cis e a\startTextSpan b c( a)\stopTextSpan <e-0> c f( e) c a |
    gis,16 b' d e gis b d( b) gis <e-0> dis e f e d( b) |

    a,16( c) e a cis e a b c( a) e cis f( e) cis a \voiceOne |
    f16 a c a fis' c <a'-1> <f-2> <c'-4>8 r r4 |
    c,,16 g' cis g e' cis g'_( e) c'8 r r4 |

    d,,16_( f) a f d' a f' d a'8 r r4 |
    a,,16 e' a e c' a e' c a'8 r r4 |
    d,,16 a' f' a, e a e' a, f a d a d a d a |

    d,16 a' f' a, e a e' a, f a d a d a d a |
    d,16 a' f' a, e a e' a, f a dis a f a dis a |
    \oneVoice e,16 gis' b e f( e) dis e <d'-4>( b) gis <e-0> fis( e) d( b) \voiceOne |

    a,16 a' c e dis e f_( e) d e c e b e a, e' |
    \oneVoice e,,16 gis' b e f( e) dis e <d'-4>( b) gis <e-0> f( e) d( b) \voiceOne |
    a,16 a' c e dis e f_( e) d e c e b e a, e' |

    gis,16 e' fis, e' e, e' dis, e' e, e' d, e' cis, e' b, e' |
    a,,16_( cis) fis a cis fis_( e) cis a cis e, a cis, e a,_( cis) |
    \override TextSpanner.bound-details.left.text = #"VII "
    e,16 \oneVoice e' gis b e <gis-3>\startTextSpan <b-1> cis d( b)\stopTextSpan gis e fis( e) d b \voiceOne |

    a,16_( cis) e a cis fis_( e) cis a cis e, a cis, e a,_( cis) |
    e,16  e' gis b e gis b cis d_( b) gis e fis_( e) d b |
    a,16_( cis) e a cis fis_( e) cis a, e' g cis \oneVoice e a( g) e |
    \voiceOne

    fis16 a,, d_( fis) a d,_( fis) a d fis, a d fis a, d fis |
    \override TextSpanner.bound-details.left.text = #"VII "
    a,,16 b' d e <gis-3>\startTextSpan <cis-4>_( <b-1>) gis\stopTextSpan
      \override TextSpanner.bound-details.left.text = #"IV "
      a,, <d'-4>\startTextSpan <e-2> <gis-1>\stopTextSpan
      \override TextSpanner.bound-details.left.text = #"IX "
      b e_(\startTextSpan d) b\stopTextSpan |
    cis16 a,,_( cis) e a cis, e a cis e, a cis e a, cis e |

    \oneVoice a,,16( cis) e a cis fis( e) cis a, e' g cis e a( g) e |
    \voiceOne a,,16 a''_( fis) d a fis' d a fis d' a fis d a' fis_( d) |
    \oneVoice a16 b' d e <gis-3> <cis-4>( <b-1>) gis a,, <d'-4> <e-2> <gis-1> <b-4> <e-4>( d) b |

    \override TextSpanner.bound-details.left.text = #"IX "
    cis16 <a-0> e dis fis( e) cis a e, b'' d <e-0> gis e'(\startTextSpan d) b\stopTextSpan |
    cis16 a <e-0> dis fis( e) cis a e, b'' d e gis e'( d) b |
    \oneVoice
    cis16 a e dis fis( e) cis a d, ais' b d gis( fis) d b |

    \voiceOne\slurDown
    e,16 a cis a fis'( e) cis a d, gis b gis fis'( e) b gis |
    cis,16 a' cis e <b'-4>( <a-2>) <e-0> cis d, ais' b d gis( fis) d b |
    e,16 a cis a fis'( e) cis a' gis( e) d( b) gis e( d) b |

    \oneVoice\slurNeutral
    \set fingeringOrientations = #'(left)
    <cis'-2 a'-1>16( <e-0>) e e <a-2 cis-1>( e) e e <gis-1 e'-4>( e) e e <b'-3 d-1>( e,) e e |
    \set fingeringOrientations = #'(up)
    \override TextSpanner.bound-details.left.text = #"IX "
    a,,16^[ <e''-1>\startTextSpan <a-3> <cis-2>16] <d-4>( cis) a e\stopTextSpan
      \override TextSpanner.bound-details.left.text = #"III "
      e,,\startTextSpan <b''-2> <d-1> <gis-3> <a-4>( gis) d b\stopTextSpan |
    <cis a'>16( e) e e <a cis>( e) e e <gis e'>( e) e e <b' d>( e,) e e |

    a,,16^[ e'' a cis ] d( cis) a e e,, b'' d gis a( gis) d b |
    \override TextSpanner.bound-details.left.text = #"III "
    a,16 <cis'-2>\startTextSpan <e-1> <a-1> <b-4>( a) e cis\stopTextSpan
      \override TextSpanner.bound-details.left.text = #"IX "
      gis, a( cis) e a cis e <a-3>\startTextSpan |
    a,,16^[ e'' a cis ] d( cis) a\stopTextSpan e
      bis,( cis) e a cis e <a-2>\startTextSpan <cis-1>\stopTextSpan |

    \override TextSpanner.bound-details.left.text = #"XII "
    \once\stemUp a,,16 <a''-2>\startTextSpan <cis-3> <e-1> <fis-4>( e) cis a\stopTextSpan dis,,( e) a cis e <a-2> <cis-1> <e-4> |
    <a-4>4 b,,\rest <cis e a> q |
    q4 r <e a cis>4 r |
    <e, a>2 r_\markup{\italic "Fine."} |
  }
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(left)
  \shiftOn
  \repeat unfold 2 {
    a16 s16 s8*4 e'8 cis a |
    e2 s |
  }
  a16 s16 s8*3 b16 s16 s8*3 |
  cis8 s8*3 a2 |

  b8 e gis b s4 b,4 |
  e,2 <gis' e>4 s |
  c,4 s4. g'8 e c |

  g4 s4*3 |
  a4 s4. g'8 e cis |
  g4 s4*3 |

  gis4 s e2 |
  s2 a |
  gis4 s e2 |

  s2  a |
  f'4 r r8 f8 a f |
  c4 r r8 c8 e c |

  d4 r r8 d8 f d |
  a4 r r8 a8 cis a |
  d4 e f2 |

  d4 e f2 |
  d4 e f f |
  e,2 e |

  a2 a |
  e2 e |
  a2 a |

  e8 fis'[ e dis] e d cis b |
  s2 s8 e8 cis a |
  e2 s |

  s1 |
  e2 s |
  s1 |

  fis''16 s s8*7 |
  a,,2 a |
  cis''16 s s8*7 |

  s1 |
  a,,2 s |
  a2 a |

  \shiftOn a2 e |
  a2 e |
  a2 d |

  e2 d |
  cis2 d |
  e2 e, |

  \repeat unfold 3 { a2 e | }

  a2 e |
  a2 s |
  a2 s |

  a2 s |
  a4 s a a |
  a4 s a s |
  <a cis>2 s
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \global
      \clef "treble_8"
      \new Voice = "upperVoice" \upperVoice
      \new Voice = "lowerVoice" \lowerVoice
      \new Dynamics \dynamics
    >>
  >>
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}
