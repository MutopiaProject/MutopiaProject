\version "2.18.2"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 21"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 21"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 21"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "N. Simrock"
  % From Boije 481-2, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/11/16-2071"
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

mbreak = { } % { \break }

global = {
  \time 2/4
  \key a \major
}

FOLeft = { \set fingeringOrientations=#'(left) }
FOUp = { \set fingeringOrientations=#'(up) }
FODown = { \set fingeringOrientations=#'(down) }
FORight = { \set fingeringOrientations=#'(right) }

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \tempo "Andante."

  \partial 8 { <cis-0 a_2>8 } |
  <cis-2 a_1>8[ <e cis> <cis a> <e cis>8] |
  << { <fis-2>4 <a-1 fis_2>8 <fis-1 d_2> } \\
     { \voiceThree\stemDown\FOLeft <d-3>8 \FOUp <a-1> s4 }
   >> |
  <e'-0 cis_2>8 <cis-2 a_1> <b-0 gis_1> <e gis,> |
  << { <d-2>4 <cis-2>8 e } \\
     { \voiceThree\stemDown\FOLeft\once\override Beam #'positions = #'(-2 . -4)
       <b-3>8 <e,^1> <a_1> cis} >> |
  \mbreak

  cis[ e cis e] |
  << { <a-4>4. <gis-4>8 } \\
     { \voiceThree\stemDown\FODown
       \once\override NoteColumn.force-hshift = #-1.3 <fis,-2>4 s8 <e-1>8 } >> |
  \FOLeft <gis'-4>8 <e-1> <cis-1 a-1> <dis-4 a> |
  \once\shiftOn <fis-4 a,-3>4 e8\noBeam e |
  <cis a>8[ <e cis> <cis a> <e cis>8] |
  \mbreak

  << { fis4 a8 fis } \\
     { \voiceThree\stemDown d8 a fis' d } >> |
  <e cis>8 <cis a> <b gis> <e gis,> |
  << { d4 cis8 e } \\
     { \voiceThree\stemDown b8 e, a4} >> |
  <cis a>8 e cis e |
  << { \FOLeft <a-4>4 <gis-3 e-4>8 <fis-2 d-3> } \\
     { \voiceThree\stemDown\FOLeft\once\override NoteColumn.force-hshift = #-1.3
       <fis,-2>4 <e-1>8 <gis-1> } >>|
  \mbreak

  <e'-0 cis-2>8 <fis-2 d-3> <cis-1 a-1> <b-0 gis-1> |
  <a-3>4 r8 <cis a> |
  <b-1>8 b e gis |
  <b-1>4 <a-1>8 <gis-1> |
  <fis-1>8 <e-0> <dis-3> <fis-1> |
  \mbreak

  a4 gis8 b |
  << { <cis,-1>8 <a'-4> <b,-0> <gis'-4> } \\
     { \voiceThree\stemDown e,,2 } >> |
  << { <gis''-4>8. <fis-2>16 e8 e } \\
     { \voiceThree\FORight\once\override Beam #'positions = #'(1.5 . 2)
       \once\override NoteColumn.force-hshift = #-0.5 <a,-1>8 <b-0> s4 } \\
     { \voiceFour a4 gis } >> |
  b'8 <a-1> a gis |
  << { gis8. fis16 <e gis,>8 q } \\
     { \voiceThree\once\override Beam #'positions = #'(1.5 . 2.1)
       \once\override NoteColumn.force-hshift = #-0.03 a,8 b s4 } >> |
  \mbreak

  e8 e e e |
  e8 <cis'-4>4 <a-4>16 <fis-1> |
  \once\shiftOnn e8 e \once\shiftOnn <dis-4> dis |
  <e gis,-1>4 r8 e |
  \mbreak

  << { fis4. fis8 } \\
     { \voiceThree\stemDown\FORight a,8\rest <cis-1 ais-2> <d-2 b-3> } >> |
  << { e4. e8 } \\
     { \voiceThree\stemDown\FOLeft a,8\rest <b gis-1> <cis-3 a-2>} >> |
  << { <d-1>8 <b-0> <cis-3> <d-1> } \\
     { \voiceThree\stemDown\FOLeft <b-2>8 <gis-1> <a-2> <b-2> } >> |
  <cis-4 a-3>4 <b-0 gis-1>8 e |
  \mbreak

  \barNumberCheck #33
  << { fis4-1 r16 fis-1 gis-4 fis-1 } \\
     { \voiceThree\stemDown\FODown a,16\rest <ais-2> <cis-1> <e-4> <d b-3>4 } >> |
  << { e4-1 r16 e-0 fis-4 e-0 } \\
     { \voiceThree\stemDown\FODown a,16\rest gis b d <cis a-3>4 } >> |
  \FOUp dis16 <e-0> <fis-2> <e-0> <dis-4> <b-0> <cis-2> <dis-4> |
  << { e4 r8 e } \\
     { \voiceThree\stemDown
       \FODown\once\override NoteColumn.force-hshift = #1.5 <gis,-1>16 <e-2> <gis-1> <b-0> s4 } >> |
  \mbreak

  \FOLeft <cis-3 a-2>8[ <e-0 cis> <cis a> <e cis>8] |
  << { \FOLeft <fis-2>4 <fis-3 a-1>8 <fis-2 d-0> } \\
     { \voiceThree\stemDown\FOLeft <d-3>8 <a-1> s4 } >> |
  << { <e'-0>4 <b-0>8 e } \\
     { \voiceThree\stemDown <cis-3>8 <cis-3 a-2> s4 } >> |
  << { d4 <cis-1>8 <e-0> } \\
     { \voiceThree\stemDown <b-3>8 <e,-1> s4 } >> |
  \mbreak

  \FOUp <a'-4>8[ <a-4> <gis-4> <g-4>8] |
  << { <fis-1>4. <fis-4>8 } \\
     { \voiceThree\stemDown\FORight\once\override Beam #'positions = #'(-1 . -2.5)
       <d-3>8 <ais-2> <b-4> <bis-2> } >> |
  <e-0 cis-2>8[ <cis-1 a-1> <d-2 b-3> <b-0 gis-1>8] |
  <a-3>4 s8 b\rest

  \bar "|."
}

lowerVoice = \relative c {
  \set fingeringOrientations = #'(up)
  \voiceTwo

  \partial 8 { a8\rest } |
  a2 |
  a2~ |
  a4 e |
  a2 |

  a'8 cis a cis |
  \FOLeft <cis-1>8 \FOUp <dis-3> <b-0>4 |
  \FOLeft <cis-1 a,>4 r8 <b,-1>8 |
  << { \voiceTwo\stemUp
    \FODown\once\override Beam #'positions = #'(-2 . 1) e,8 <dis'-1> s4 } \\
     { \voiceThree\stemDown\FOLeft e,4 <gis'-1 e-2>8 f\rest } >> |
  a,2 |

  a2~ |
  a4 e |
  a4. a8\rest |
  a8 a\rest a' <b gis> |
  <cis-1>8 <dis-3> s4 |

  \barNumberCheck #15
  a8 d, <e-1> e, |
  a8 <cis' e,-2> a, r |
  <gis' e-2>4 r8 <e'-2> |
  <gis-3>8 <b,-0> <fis'-3> <e-2> |
  <dis-3>8 <cis-1> <b-2> <dis-3> |

  <fis-3>8 b, <e-2> b |
  cis4 b |
  e,,2 |
  <e cis''-2>4 <e b''> |
  <e a'>4 r8 <e'-2> |

  <a-1 fis-3>8 <ais fis> <b-1 gis> <bis gis-2> |
  << { \stemDown\FOLeft <cis-2 a-3>4 b8\rest <cis-1 a-1> } \\
     { \voiceThree\stemDown s4 a, } >> |
  << { \stemDown <b-2>4 <b-1> } \\
     { \voiceThree\stemUp
       \once\override Beam #'positions = #'(-1.5 . -3)
       b8 \once\stemDown <gis'-1 b>
       \FORight \once\override Beam #'positions = #'(-1.5 . -3)
       b, \stemDown <fis'-3 a-1> } >> |
  r8 e e,4~ |

  e2 |
  e2 |
  e4 e |
  e8 <e'-2>4 e8\rest |

  \barNumberCheck #33
  e,2~ |
  e2 |
  <e a'>2 |
  e4 e' |

  a,2 |
  a2 |
  a4 <e gis'-1> |
  a4 <a'-1>4 |

  \barNumberCheck #41
  \FOLeft r8 <cis-1 a,>8[ <d-2 b,-1> <e-4 cis,-2>8] |
  d,4 s8 <dis-1>8 |
  <e-1>4 e, |
  a8 <cis'-4 e,-2> a,8 s_"V.S."
}


middleVoice = \relative c' {
  \voiceThree
  \stemDown\slurDown\tieDown

  \partial 8 {s8} |
  s2 |
  d8 a s4 |
  s2 |
  b8 e, a cis |

  s2 |
  fis,4 s8 e |
  s2 |
  s2 |
  s2 |

  \stemDown <fis' d>8 a, <a' fis> <fis d> |
  s2 |
  %
  b,8 \stemUp e, a4 |
  s2 |
  \stemDown cis8 dis s4 |

  a8 d, e e, |
  a8 <cis' e,> a, r |
  <gis' e>4 r8 e' |
  gis8 b, fis' e |
  dis8 cis b dis |

  fis8 b, e b |
  cis4 b |
  << { \voiceThree \once\override Beam #'positions = #'(1.5 . 2.5) a8 b s4 } \\
     { \voiceFour a4 gis } >> |
  cis4 b |
  << { \voiceThree \once\override Beam #'positions = #'(1.5 . 2.5) a8 b s4 } \\
     { \voiceFour a4 r8 <gis e> } >> |

  <a fis>8 <ais fis> <b gis> <bis gis> |
  <cis a>4 r8 <cis a >8 |
%{
  \once\stemUp\once\override Beam #'positions = #'(-0.5 . -3.5) b,8 <b' gis>
  \once\stemUp\once\override Beam #'positions = #'(-0.5 . -3.5) b, <a' fis> |
%}
  b,8 <b' gis> b, <a' fis> |
  s2 |

  a8\rest <cis ais> <d b>4 |
  a8\rest <b gis>8 <cis a>4 |
  b8 gis a b |
  s2 |
}


\score {
  <<
    \new Staff = "Guitar" \with {
      \override Fingering #'staff-padding = #'()
      \override Fingering #'add-stem-support = ##t
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
      } <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \global
      \clef "treble_8"
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
%      \context Voice = "middleVoice" \middleVoice
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
  \layout {
    \context {
      \Voice
      \override StringNumber #'stencil = ##f
    }
    \context {
      \Dynamics
      \override DynamicTextSpanner #'style = #'none
    }
  }
  \midi {
    \tempo 4 = 110
  }
}
