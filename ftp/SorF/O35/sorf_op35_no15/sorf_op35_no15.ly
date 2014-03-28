\version "2.18.2"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 15"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 15"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 15"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "N. Simrock, 1924"
  % From Boije 482, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2014/03/28-1946"
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

global = {
  \time 2/4
  \key a \major
}


upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(left)
  \repeat volta 2 {
    \partial 4 { <cis-2 a-1>8 <d-2 b-3> } |
    <e-1 cis-2>8 <fis-4 d-3>16 <gis-1 e-2> <a-1 fis-3>8 <b-1 gis-3> |
    <cis-1 a-2>8 <b-1 gis-3> <a-1 fis-3> <gis-1 e-2> |
    <fis-1 d-2>8 <eis-1 cis-2>16 <fis-1 d-2> <gis-1 e-2>8 <fis-1 d-2> |

    <e cis-2>8 a, <cis a> <d b> |
    <e cis>8 <fis d>16 <gis e> <a fis>8 <b gis>8 |
    <cis a>8 <b gis> <a fis> <gis e> |
    <fis-4 a,-3>8 <e gis,>16 <fis a,> <gis-4 b,-3>8 <fis-4 a,-3> |
    <e gis,-1>8 s
  }
  \repeat volta 2 {
    <e gis,>8 q |

    <e gis,-1>8 <fis-3 a,-2>16 <gis-3 b,-2> <a-1 cis,-2>8 <b-4 d,-3> |
    <cis-4 e,-3>8[ <b-4 e,-3> <a-1 cis,-2> <gis-1 e-2>8] |
    <fis-1 d-2>8 <e cis-1> <d-1 b-2> <cis-3 a-2> |
    <cis a>8 <b gis> <e gis,> q |
    <e gis,>8 <fis a,>16 <gis b,> <a cis,>8 <b d,> |
    <cis e,>8 <b d,> <a cis,> <gis b,> |

    \slashedGrace{gis8} <fis a,>8 <e gis,> <fis a,> <gis b,> |
    <e gis,>8 r <cis a> <d b> |
    <e cis>8 <fis d>16 <gis e> <a fis>8 <b gis> |
    <cis a>8 <b gis> <a fis> <gis e> |
    <fis d>8 \slashedGrace{gis8} <fis d>16 <eis cis> <fis d>8 <gis eis> |

    <e cis>8 a, <cis a> <d b> |
    <e cis>8 <fis d>16 <gis e> <a fis>8 <b gis> |
    <cis a>8 <b gis> <a fis> <gis e> |
    <fis d>8 r <gis d> r |
    <a cis,>8 b,\rest
  }
  b4\rest
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(left)
  \partial 4 { a8 a } |
  \repeat unfold 3 { a4 a8 a | }

  \repeat unfold 2 { a4 a8 a | }
  a4 r |
  <b-2>4 <b-1>8 b |
  e,8 r e' e |

  e,4 s |
  s2*2 |
  e4 s |
  e2 |
  s2 |

  b'4. r8 |
  e,8 s a a |
  a4 a8 a |
  a4 r |
  a4 a |

  a4 r |
  a4 a8 a |
  a4 r |
  d8 r e s |
  a,8 s s
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    }
    <<
      \global
      \clef "treble_8"
      \tempo "Allegretto."
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
  \layout {}
  \midi {
    \tempo 4 = 90
  }
}
