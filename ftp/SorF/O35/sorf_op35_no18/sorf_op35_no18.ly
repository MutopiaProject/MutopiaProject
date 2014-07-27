\version "2.18.2"

% I'm not a fan of the excessive kneed beams in this transcription
% but the style follows that of the Simrock source.

\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 18"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 18"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 18"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "N. Simrock, 1924"
  % From Boije 482, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2014/07/27-1989"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = 7\mm
  bottom-margin = 6\mm
}

\layout {
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

global = {
  \time 2/4
  \key e \minor
}

mybreak = { \break }

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(left)
  \tempo "Andantino."
  e4 <fis-4> |
  <g-4>4 <fis-4> |
  e4 <fis-3> |
  e4 <dis-4> |
  \mybreak
  e4 <fis-4> |
  <g-4>4 <fis-3> |
  e4 <dis-4> |
  <fis-4>4 <e g, e>8 r |
  <g-4>4 g |
  \mybreak
  <fis-3>4 <fis-1> |
  e4 e |
  <dis-4>4 b |
  e4 <fis-4> |
  <g-4>4 e |
  \mybreak
  <fis-4>4 <fis-4> |
  <fis-4>2 |
  e4 <fis-4> |
  <g-4>4 <fis-4> |
  e4 <fis-4> |
  \mybreak
  <dis-4>4 \once\shiftOnn <b-0> |
  e4 <fis-4> |
  g4 e |
  fis4 <dis-4> |
  <e g,>2 |
  \mybreak
  <g-4>4. g8 |
  \once\shiftOnn <fis-4>4 r8 <fis-1> |
  \once\shiftOnn e4. <fis-0>8 |
  e4 <dis-4> |
  e4 fis |
  \mybreak
  <g-4>4 <e-0> |
  <fis-4>4 fis |
  <fis-4>4 s |
  e4 <fis-4> |
  <g-4>4 <fis-4> |
  \mybreak
  e4 <fis-3> |
  <dis-4>4 \once\shiftOnn <b-0> |
  e4 <fis-4> |
  <g-4>4 e |
  <fis-3>4 <dis-4> |
  <e g,>2
  \bar ".|"
}

% The following macros facilitate the kneed beaming and
% saved me a fair bit of typing.

altpair =
#(define-music-function (parser location beamdim p1 p2)
  (number-pair? ly:music? ly:music?)
   #{
        \temporary \override Beam.positions = #beamdim
        #p1 \once\stemUp #p2
        \revert Beam.positions
   #})

altppair =
#(define-music-function (parser location beamdim p1 p2 p3 p4)
  (number-pair? ly:music? ly:music? ly:music? ly:music?)
   #{
        \temporary \override Beam.positions = #beamdim
        #p1 \once\stemUp #p2 #p3 \once\stemUp #p4
        \revert Beam.positions
   #})

raltpair =
#(define-music-function (parser location beamdim p1 p2)
  (number-pair? ly:music? ly:music?)
   #{
        \temporary \override Beam.positions = #beamdim
        \once\stemUp #p1 #p2
        \revert Beam.positions
   #})


lowerVoice = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(right)
  \altppair #'(-0.5 . 2) e8 <b g> fis'8 <b, a-3> |
  \altppair #'(-0.5 . 2) g'8 <b, g> fis'8 <a,-3 dis,-1> |
  \altppair #'(-1 . 3) e'8 <g, e-2> fis' <c-1 a-2> |
  \altppair #'(-1 . 3) e8 <b g> dis <b-3 fis-2> |

  \altppair #'(-0.5 . 2) e8 <b g> fis' <b, a-3> |
  \altppair #'(-0.5 . 2) g'8 <b, g> fis' <c-1 a-2> |
  \altppair #'(-1.5 . 2) e8 <b g> dis <a-1 fis-3> |
  \altpair #'(-1 . 2) fis'8 <a,-3 dis,> s4 |
  \altppair #'(0 . 3) g'8 <b, g> g' <c,-1 a-2> |

  \altppair #'(0 . 3) fis8 <c-1 a-2> fis <b,-1 g> |
  \altppair #'(-1 . 2.5) e8 <b g> e <c-1 a-3> |
  \altppair #'(-2 . 2) dis8 <b-3 fis-2> b <b-1 fis> |
  \altppair #'(-1 . 2) e8 <b e,-1> fis' <b, dis,> |
  \altppair #'(-0.5 . 2) g'8 <b, e,-1> e <b e,-1> |

  \altppair #'(-0.5 . 3) fis'8 <c-1 e,-2> fis <cis-3 e,> |
  \altpair #'(-0.5 . 2) fis8 <b, dis,> <a-3> b |
  \altppair #'(-0.5 . 2) e8 <b g> fis' <b, a-3> |
  \altpair #'(0 . 2) g'8 <b, g> \altpair #'(-1 . 2) fis' <a,-3 dis,> |
  \altpair #'(-1 . 2) e'8 <g, e-2> \altpair #'(-1 . 3) fis' <c a-2> |

  \altpair #'(-1.5 . 2.4) dis8 <b-3 fis-2> \raltpair #'(-2 . -3.5) a, <fis'-3 b-2> |
  \altppair #'(-1 . 2.5) e'8 <b e,-1> fis' <b, dis,-1> |
  \altppair #'(-1 . 2.5) g'8 <b, e,-1> e8 <c-1 e,> |
  \altpair #'(-1 . 3) fis8 <c-1 a-1> \altpair #'(-1.5 . 2) dis <a-1 fis> |
  e8 <b-2> e,4 |

  \altpair #'(0 . 2) g''8 <b, g>  <c-1 a-2 a,>4 |
  \raltpair #'(0 . -2.5) d,8 <c'-1 a-2> <b-0 g-0 g,-4>4 |
  \raltpair #'(0 . -3) c,8 <b' g> <c-1 a-3 fis,-2>4 |
  r8 <b-3 fis-2>4. |
  \altpair #'(-0.5 . 2.5) e8 <b e,-1>
    \override Beam.positions = #'(-1 . 4 ) fis' \stemUp b,16 a \stemDown \revert Beam.positions |

  \altpair #'(0 . 2.5) g'8 <b, e,-2> \altpair #'(-1 . 2.8) e <b e,-2> |
  \altpair #'(-0.5 . 3) fis'8 <c-1 e,-2> fis <cis-3 e,-2> |
  \altpair #'(-0.5 . 2.5) fis8 <b, dis,-1> <a-3> b |
  \altppair #'(-0.5 . 2.5) e8 <b g> fis' <b, a> |
  \altppair #'(-0.5 . 2.5) g'8 <b, g> fis' <a,-3 dis,-1> |

  \altpair #'(-0.5 . 1.5) e'8 <g, e> \altpair #'(-1 . 2.5) fis' <c-1 a-2> |
  \altpair #'(-1 . 2.5) dis8 <b-3 fis-2> \raltpair #'(-2 . -3.5) a, <b' fis> |
  \altpair #'(-1 . 2.5) e8 <b e,>
    \override Beam.positions = #'(-0.5 . 4) fis' \stemUp b,16 a \stemDown \revert Beam.positions |
  \altpair #'(-0.5 . 2.5) g'8 <g, e-2> \altpair #'(-1 . 2.5) e' <g, e-2> |
  \altpair #'(-0.5 . 3) fis' <c-1 a-2> \altpair #'(-1.5 . 2) dis <a-1 fis-3> |
  <e-3>8 <b-2> e,4 |
}

middleVoice = \relative c {
  \voiceThree
  \set fingeringOrientations = #'(left)
  \stemDown
  \shiftOn
  <e-2>4 dis |
  <e-2>4 <b-2> |
  <c-3>4 a |
  <b-1>4 <b-1> |

  <e-2>4 dis |
  <e-2>4 a, |
  <b-1>4 <b-1> |
  e,4 s |
  <e'-2>4 a, |

  d4 <g,-3> |
  <c-3>4 <fis,-2> |
  <b-1>4 <a-0> |
  <g-2>4 <fis-2> |
  e4 <g-2> |

  a4 ais |
  <b-2>2 |
  <e-2>4 dis |
  <e-2>4 <b-2> |
  <c-3>4 a |

  <b-1>4 <a-0> |
  <g-2>4 <fis-2> |
  e4 <c'-3> |
  a4 <b-1> |
  s2 |

  <e-2>4 s |
  <d-2>4 s |
  <c-3>4 s |
  <b-1>4 s8 <a-0> |
  <g-2>4 <fis-2>8 dis' |

  e,4 <g-3> |
  a4 ais |
  <g-2>4 s |
  <e'-2>4 dis |
  <e-2>4 <b-2> |

  <c-3>4 a |
  <b-1>4 <a-0> |
  <g-2>4 <fis-2> |
  e4 <c'-3> |
  a4 <b-1> |
  s2
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    }
    <<
      \global
      \clef "treble_8"
      \new Voice = "upperVoice" \upperVoice
      \new Voice = "lowerVoice" \lowerVoice
      \new Voice = "middleVoice" \middleVoice
    >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 90
  }
}
