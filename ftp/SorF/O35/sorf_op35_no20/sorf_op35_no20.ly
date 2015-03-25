\version "2.19.17"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 20"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 20"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 20"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "N. Simrock"
  % From Boije 481-2, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/03/25-1998"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

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

mbreak = { \break }

global = {
  \time 3/4
  \key a \major
}

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \tempo "Tempo di minuetto."
  \tupletSpan 4

  \set minimumFret = #4
  \tuplet 3/2 { <a\4>8 <cis_2\3> <e_1\2> } e4 <a-1> |
  \override TupletBracket.bracket-visibility = ##f
  \omit TupletNumber
  \tuplet 3/2 { <gis,-2\4>8 <d'-3\3> <e-1\2> } e4 <b'-4> |
  \tuplet 3/2 { <a,-3\4>8 <cis-2> <e-1> } e4 <cis'-4> |
  \tuplet 3/2 { <gis,-2>8 <d'-3> <e-1> } <b'-4>4 e, |
  \mbreak

  \tuplet 3/2 { <a,-3>8 <cis-2> <e-1> } e4 <a-1> |
  gis2 gis4 |
  fis2 fis4 |
  e4 b b' |
  \mbreak

  \tuplet 3/2 { <a,-3>8 cis e } e4 <a-1> |
  \tuplet 3/2 { gis,8 d' e } e4 b' |
  \tuplet 3/2 { a,8 cis e } e4 cis' |
  \tuplet 3/2 { gis,8 d' e } b'4 e, |
  \mbreak

  \tuplet 3/2 { a,8 cis e } <e-0>4 <cis'-4> |
  \tuplet 3/2 { <b,-2>8 <e-3> <gis-4> } <b-1>4 <gis-2> |
  r4 <a-4> <fis-1> |
  e4 \tuplet 3/2 { <e,-2>8 gis b } <e,,\6>4 |
  \mbreak

  \tuplet 3/2 { <gis'-2>8 <d'-3> <b-0> } <e-4>4 b' |
  \tuplet 3/2 { <a,-3>8 <cis-2> <e-1> } <e-4>4 cis' |
  \tuplet 3/2 { <b,-2>8 d gis } <e-0>4 <e'-4> |
  \tuplet 3/2 { <cis,-3>8 <e-1> <a-2> } <e-0>4 <e'-4> |
  \mbreak

  \tuplet 3/2 { gis,,8 d' e } e4 b' |
  \tuplet 3/2 { a,8 cis e } e4 cis' |
  \tuplet 3/2 { b,8 d gis } e4 e' |
  \tuplet 3/2 { cis,8 e a } e4 e' |
  \mbreak

  \tuplet 3/2 { a,,,8 <fis''-2> <a-1> } <e'-4>4 <d-1> |
  \tuplet 3/2 { a,,8 <e''-1> <a-2> } <d-3>4 <cis-1> |
  \tuplet 3/2 { a,,8 <d'-1> <gis-3> } <cis-4>4 <b-1> |
  \tuplet 3/2 { a,,8 <cis'-2> <e-1> } <b'-4>4 <a-1> |
  \mbreak

  \tuplet 3/2 { a,,8 <a'-1> <cis-1> } <gis'-4>4 <fis-1> |
  \tuplet 3/2 { <b,,-2>8 <gis'-1> b } <fis'-3>4 e |
  \tuplet 3/2 { <b,-1>8 <fis'-3> <a-1> } <e'-0>4 <dis-4> |
  e4 s2 |
  \mbreak

  \tuplet 3/2 { <gis,-2>8 <d'-3> <e-1> } e4 <b'-4> |
  \tuplet 3/2 { <a,-3>8 <cis-2> <e-1> } <e-0>4 <cis'-4> |
  \tuplet 3/2 { <gis,-2>8 <d'-3> <e-1> } <b'-4>4 <e,-0> |
  \tuplet 3/2 { <a,-3>8 cis e } e4 a |
  \mbreak

  \tuplet 3/2 { gis,8 d' e } e4 b' |
  \tuplet 3/2 { a,8 cis e } e4 cis' |
  \tuplet 3/2 { gis,8 d' e } b'4 e, |
  \tuplet 3/2 { a,8 cis e } e4 a |
  \mbreak

  \tuplet 3/2 { <ais,-3>8 <cis-1> <fis-2> } <e-0>4 e |
  \tuplet 3/2 { <a,-1>8 <dis-2> <fis-1> } <cis'-4>4 <b-1> |
  \tuplet 3/2 { <gis,-2>8 <d'-3> <e-1> } <b'-4>4 <e,-0> |
  \tuplet 3/2 { <a,-3>8 <cis-2> <e-1> } <b'-4>4 <a-1> |
  \mbreak

  \tuplet 3/2 { d,,8 <a'-1> <d-2> } <gis-4>4 <fis-1>  |
  \tuplet 3/2 { <e,-1>8 <a-2> <cis-3> } <fis-4>4 <e-0> |
  \tuplet 3/2 { <e,-1>8 <b'-3> <d-2> } <fis-1>4 <gis-4> |
  \tuplet 3/2 { <a-4>8 a, cis } <gis'-3>4 <g-2> |
  \mbreak

  \tuplet 3/2 { ais,8 b e } e4 e |
  \tuplet 3/2 { a,8 dis fis } cis'4 b |
  \tuplet 3/2 { gis,8 d' b } e4 e |
  \tuplet 3/2 { a,8 cis e } b'4 a |
  \mbreak

  \tuplet 3/2 { <dis,,-1>8 <a'-2> <bis-1> } <gis'-4>4 <fis-3> |
  \tuplet 3/2 { e,8 a cis } fis4 e |
  \tuplet 3/2 { e,8 b' d } fis4 gis |
  <a-4>2 s4 |
  
  \bar "|."
}

lowerVoice = \relative c' {
  \set fingeringOrientations = #'(up)
  \voiceTwo
  \tupletSpan 4
  s4 \tuplet 3/2 { <e\2>8 <cis-2\3> <e-1\2> a <cis,-2\3> <e-1\2> } |
  \override TupletBracket.bracket-visibility = ##f
  \omit TupletNumber
  s4 \tuplet 3/2 { e8 d e b' d, e } |
  s4 \tuplet 3/2 { e8 cis e } s4 |
  s4 \tuplet 3/2 { b'8 d, e e <d-3> <b-0> } |

  s4 \tuplet 3/2 { e8 cis e a cis, e } |
  \tuplet 3/2 { <gis-3>8 <b,-2> <e-4> \once\override Beam #'positions = #'(-1 . -3) \once\stemUp <b,-1> b' e gis b, e }  |
  \tuplet 3/2 { fis8 <a,_1> <dis-4> \once\override Beam #'positions = #'(-1 . -3) \once\stemUp <b,-1> a' dis fis a, dis } |
  \tuplet 3/2 { e8 <e,-2> <gis-1> b e <gis-1> <b-4> gis e } |

  s4 \tuplet 3/2 { e8 cis e a cis, e } |
  s4 \tuplet 3/2 { e8 d e b' d, e } |
  s4 \tuplet 3/2 { e8 cis e cis' cis, e } |
  s4 \tuplet 3/2 { b'8 d, e e d e } |

  s4 \tuplet 3/2 { e8 cis e cis' cis, e } |
  s4 \tuplet 3/2 { b'8 e, gis gis b, e } |
  \tuplet 3/2 { \once\override Beam #'positions = #'(-1 . -3) \once\stemUp <b,_1>8 <a'_1> <dis_3> a' a, dis fis a, dis } |
  \tuplet 3/2 { e8 <gis,-1> b } s2 |

  s4 \tuplet 3/2 { e8 d b b' d, e } |
  s4 \tuplet 3/2 { e8 cis e cis' cis, e } |
  s4 \tuplet 3/2 { e8 d gis e' d, gis } |
  s4 \tuplet 3/2 { e8 e a e' e, a } |

  s4 \tuplet 3/2 { e8 d b b' d, e } |
  s4 \tuplet 3/2 { e8 cis e cis' cis, e } |
  s4 \tuplet 3/2 { e8 d gis e' d, gis } |
  s4 \tuplet 3/2 { e8 e a e' gis, a } |

  s4 \tuplet 3/2 { e'8 fis, a d fis, a } |
  s4 \tuplet 3/2 { d8 e, a cis e, a } |
  s4 \tuplet 3/2 { cis8 d, gis b d, gis } |
  s4 \tuplet 3/2 { b8 cis, e a cis, e } |

  s4 \tuplet 3/2 { gis8 a, cis fis a, cis } |
  s4 \tuplet 3/2 { fis8 gis, b e gis, b } |
  s4 \tuplet 3/2 { e8 fis, a dis fis, a } |
  \tuplet 3/2 { e'8 e, gis b e <gis-1> <b-4> <gis-1> <e-0> } |

  s4 \tuplet 3/2 { e8 <d-3> <e-1> b' d, e } |
  s4 \tuplet 3/2 { e8 <cis-2> <e-1> cis' cis, e } |
  s4 \tuplet 3/2 { b'8 d, e e d e } |
  s4 \tuplet 3/2 { e8 cis e a cis, e } |

  s4 \tuplet 3/2 { e8 d e b' d, e } |
  s4 \tuplet 3/2 { e8 cis e cis' cis, e } |
  s4 \tuplet 3/2 { b'8 d, e e d e } |
  s4 \tuplet 3/2 { e8 cis e a cis, e } |

  s4 \tuplet 3/2 { e8 cis fis e cis fis } |
  s4 \tuplet 3/2 { cis'8 dis, fis b dis, fis } |
  s4 \tuplet 3/2 { b8 d, e e d e } |
  s4 \tuplet 3/2 { b'8 cis, e a cis, e } |

  s4 \tuplet 3/2 { gis8 a, d fis a, d } |
  s4 \tuplet 3/2 { fis8 a, cis e a, cis } |
  s4 \tuplet 3/2 { fis8 b, d gis b, d } |
  s4 \tuplet 3/2 { gis8 a, cis g' a, cis } |

  s4 \tuplet 3/2 { e8 b fis' e b fis' } |
  s4 \tuplet 3/2 { cis'8 dis, fis b dis, fis } |
  s4 \tuplet 3/2 { e8 d b e d b } |
  s4 \tuplet 3/2 { b'8 cis, e a cis, e } |

  s4 \tuplet 3/2 { gis8 a, bis fis' a, bis } |
  s4 \tuplet 3/2 { fis'8 a, cis e a, cis } |
  s4 \tuplet 3/2 { fis8 b, d gis b, d } |
  \tuplet 3/2 { \stemUp a,8 a' cis e, a cis } b4\rest |
}

middleVoice = \relative c' {
  \voiceThree
  \stemDown
  \repeat unfold 2 { <a\4>2. | <gis\4>2. | }

  a2. |
  s4 b,2 |
  s4 b2 |
  s2. |

  a'2. |
  gis2. |
  a2. |
  gis2. |

  a2. |
  b2. |
  b,2. |
  r4 e s |

  gis2. |
  a2. |
  b2. |
  cis2. |

  gis2. |
  a2. |
  b2. |
  cis2. |

  \repeat unfold 4 { a,2. } |

  a2. |
  b2. |
  b2. |
  s2. |

  \repeat unfold 2 { gis'2. | a2. | }

  \repeat unfold 2 { gis2. | a2. | }

  ais2. |
  a2. |
  gis2. |
  a2. |

  d,2. |
  e2. |
  e2. |
  a,2. |

  ais'2. |
  a2. |
  gis2. |
  a2. |

  dis,2. |
  e2. |
  e2. |
  a,4 s a |
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
      \context Voice = "middleVoice" \middleVoice
    >>
%{
    % tabs are not completely developed
    \new TabStaff = "Guitar tabs" \with {
      restrainOpenStrings = ##t
    } <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
      \context TabVoice = "middleVoice" \middleVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 110
  }
}
