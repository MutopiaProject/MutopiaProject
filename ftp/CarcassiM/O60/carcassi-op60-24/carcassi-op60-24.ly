\version "2.18.0"
\header {
  title = "Etude 24"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 24"
  mutopiatitle = "25 Studies: No. 24"
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

 footer = "Mutopia-2014/02/23-1934"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

global = {
  \time 6/8 \key e \major
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
  \partial 4. { s16 s16\pf s16*4 } | s2.*2 | s8\> s8\! s8 s4. |
  s8\> s8\! s2 | s8*3 s16 s16\cresc s8 s8\! | s8\mf s8*5 | s8*3 s16 s16\> s16*3 s16\! |
  s8\p s8*2 s16 s16\f s8*2 | s2.*3 |
  s2. | s2.\mf | s2.*2 |
  s2. | s16 s16\dim s8*4 s8\! | s4\p s2 | s4.\pp s16 s16\p s4 | s2. |
  s2. | s8\> s8\! s8*4 | s8\> s8\! s8*4 | s8*3 s16 s16\cresc s8\! s8 | s8\mf s8*5 |
  s2. | \set Timing.measureLength = #(ly:make-moment 4/8) s8*4 |
  \set Timing.measureLength = #(ly:make-moment 6/8) s8\pf s8*5 | s2. | s8*2 s16 s16\sf s8*3 |
  s2. | s8*2 s16 s16\sf s8*3 | s8*2 s16 s16\sf s8*3 | s8*2 s16 s16\sf s8*3 |
  s16 s16\< s8*2 s16\! s16 s16\> s16 s16\! s16 | s8\mf s8*5 | s2. | s8*3 s8\dim s8*2\! |
  s8*2 s16 s16\p s8*3 | s8*2 s8\< s16_\markup{\italic "rall."} s16\! s16 s16 s8 | s8*2 s8\pp s4. | s2.
}

upperVoice = \relative c'' {
  \voiceOne
  \set fingeringOrientations = #'(left)
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \tempo "Andantino con espressione."

  \partial 4. { r16 gis fis e dis16. cis32 } |
  cis8 b b b16 a' gis a cis,16. dis32 |
  fis8 e e e16 b ais b dis16. e32 |
  e8 fis fis fis16 b, ais b e16. fis32 |

  fis8 gis gis gis16. gis32 \times 2/3 { gis16 fis e } \times 2/3 { e dis cis } |
  cis8 b b b16[ \once\slurDown\appoggiatura {a'16[ b]} a gis a cis,16. dis32] |
  fis8 e e e16[ \once\slurDown\acciaccatura {<gis-4>8} e'16 dis e b16. gis32] |
  gis8 fis fis fis16[ \once\slurDown\acciaccatura {a8} cis16 bis cis cis,16. dis32] |

  fis8 e e e16
  \repeat volta 2 {
    r16^\markup {"Animato."} r8 r8 |
    \override TextSpanner.bound-details.left.text = #"IV "
    r8 <gis dis bis>\startTextSpan q q\stopTextSpan r r |
    r8 <gis-1 e-2 cis-3>\startTextSpan <gis e cis> q\stopTextSpan r r |
    r8 <gis dis bis>\startTextSpan q q\stopTextSpan r r |

    r8 <gis e cis>\startTextSpan q q\stopTextSpan r r |
    <fisis,-0>16 cis' e <fis -1> ais <fis-1> <cis'-4> r r8 r |
    gis,,16 <bis'-2> <dis-1> bis <gis'-1> dis <bis'-4>8 r r |
    fisis,16 cis' e <fisis-3> <ais-1> <cis-4> \acciaccatura {cis8} e16 r r8 r8 |

    gis,,,16\startTextSpan <bis'-2> <dis-1> bis <gis'-1> dis <bis'-4> bis, dis bis gis' dis |
    bis'16 b, dis b gis' dis bis' b, dis gis <fisis-4> gis\stopTextSpan |
    <a cis,>4 r8 <a c,>4 r8 |
    <a b,>4.~ q16 gis[ fis e dis16. cis32] |
    cis8 b b b16 a' gis a cis,16. dis32 |

    fis8 e e e16 b ais b dis16. e32 |
    eis8 fis fis fis16 b, ais b e16. fis32 |
    fisis8 gis gis gis16. gis32 \times 2/3 { gis16_( fisis) e } \times 2/3 { e_( dis) cis } |
    cis8 b b b16[ \once\slurDown\acciaccatura {a'[ b]} a gis a cis,16. dis32 ] |
    fis8 e e e16[ \once\slurDown\appoggiatura {<gis-4>8} e'16 dis e b16. gis32] |

    gis8 fis fis fis16[ \slashedGrace{<a-4>8} cis16 bis cis cis,16. dis32] |
  }
  \alternative {
    { \set Timing.measureLength = #(ly:make-moment 4/8)
      fis8 e e e
    }
    { \set Timing.measureLength = #(ly:make-moment 6/8)
      e16 e dis e fis e <d f b>16 b' ais b cis b |
    }
  }
  <ais-2>16 e dis e fis e <c dis a'-3> a' gis a b a |
  <gis-4 b,>16 e dis e fis e <g-4 cis,-2> e dis e fis e |

  <gis-4 b,>16 dis e b gis cis b a <cis,-2> <e-1> dis b' |
  gis16[ e' dis e \slurDown\appoggiatura {fis[ gis]} fis e] <f-2 b-4>16[ <b-2> ais b \appoggiatura{ais[ b]} cis b] |
  <e-4 ais,-2 cis,-1>16[ <e,-0> dis e \appoggiatura{fis[ gis]} fis e] <c-3 dis-2 a'!-4>16[ <a'-2> gis a \appoggiatura{gis[ a]} b a] |
  <e'-4 gis,-1 b,-1>16 <e,-0> dis e \appoggiatura{fis[ gis]} fis e <g-4 cis,-2> <e-0> dis e fis e |
  \slurNeutral

  <gis-4>16 ais, b e <gis-3> <cis-4> b( a) <cis,-2 a-3> <e-1> <dis-2 a-1> <b'-1> |
  <e, b>16 gis fis e dis cis <cis a> b ais b cis b |
  <b fis'>16 e dis e fis e <e b'> a gis a cis, dis |
  <e gis,>16 b <b'-1> <b,-0> <a'-1> <b,-0> <gis'-2> <b,-3> <gis'-2> b, fis' b, |

  e16 b <b-1> b a16. b32 gis16 b gis b fis b |
  e,8[( \times 2/3 { e16) gis b]} \times 2/3 {e[ gis b]} \acciaccatura {b8} \times 2/3 { e16[ b gis]} \times 2/3 {e[ b gis]} \times 2/3 {e[ b gis]} |
  e8 b''8\rest b\rest <b gis'>4. |
  <gis e'>4.~ q8 b\rest b\rest |

  \bar "|."
}

lowerVoice = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(down)

  \partial 4. { r4 r8 } |
  r8 <a dis, b>8 q q r r |
  r8 <b gis e>8 q q r r |
  r8 <b a dis,>8 q q r r |

  r8 <b gis e> q q r r |
  r8 <a dis, b> q q r r |
  r8 <cis gis cis,> q q r r |
  r8 <cis a,> q <cis b,> r r |

  r8 <b gis e,> q q16 e,16 dis e fis fisis |
  fisis8 gis gis gis16 a gis fis e dis |
  dis8 <cis-1> cis cis16 <bis-3> <cis-4> dis e fis |
  fisis8 gis gis gis16 a gis fisis e dis |

  dis8 cis cis cis16 <cis-4> bis cis e gis |
  fisis8 r r r16 e dis e dis cis |
  gis4. r16 gis bis dis fisis gis |
  fisis8 r r r16 e dis e dis cis |

  <gis-1>4. gis |
  gis4. gis |
  fis'4. e |
  dis4. dis16 r r8 r |
  r8 <a' dis, b> q q r r |

  r8 <b gis e>8 q q r r |
  r8 <b a dis,>8 q q r r |
  r8 <b gis e> q q r r |
  r8 <a dis, b> q q r r |
  r8 <cis gis cis,> q q r r |

  r8 <cis a,>8 q <dis a b,> r r |
  \set Timing.measureLength = #(ly:make-moment 4/8)
  r8 <b gis e,> q q 
  \set Timing.measureLength = #(ly:make-moment 6/8)
  <b gis e>8 r r e,,4. |
  <e'-3 cis'-1>8 r r e,4. |
  <e'-1>8 r r ais,4. |

  <b-1>8 r r r <a-4> b |
  e,4. <gis'-1 d'>8 r r |
  e,4. e'8 r r |
  e,4. ais |

  b4 r8 r <a-1> <b-1> |
  <e, gis'>4. <e dis'> |
  <e gis'>4. <e cis''>4 <fis' a>8 |
  e,8 <gis''-3>8[ <fis-3>8] <e-3> <b-1> a |

  gis8 <gis-3>8[ <fis>8] e8 b a |
  gis8 s8*5 |
  s8*3 e'4. |
  e,4.~ e8 s8*2 |
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
    \tempo 4 = 84
  }
}
