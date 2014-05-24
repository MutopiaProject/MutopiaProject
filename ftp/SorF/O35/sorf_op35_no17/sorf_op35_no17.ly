\version "2.18.2"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 17"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 17"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 17"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "N. Simrock, 1924"
  % From Boije 482, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2014/05/24-1954"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-markup-spacing.basic-distance = #6
  top-system-spacing.basic-distance = #12
  last-bottom-spacing.basic-distance = #12
  ragged-bottom = ##f
  ragged-last-bottom = ##f
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
  \time 4/4
  \key d \major                 % b \minor
}
mybreak = {\break}
upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(left)
  \tempo "Moderato."
  \partial 4 <a-1>4 |
  <fis'-2>4. fis8 e4. e8 |
  <d-2>4. <fis-1>8 a,4. a8 |
  b4. b8 e4. <d-2>8 |
  \mybreak
  <d-3>4. <cis-2>8 e4 r8 <a,-1>8 |
  <fis'-2>4. fis8 e4. e8 |
  <d-2>4. d8 <dis-4>4. dis8 |
  e4. b8 <cis-2>4. e8 |
  \mybreak
  <d-3 fis,-2>4 s2 r8 fis8 |
  e4. e8 <dis-4>4. dis8 |
  e4. e8 <cis-2>4. cis8 |
  <d-2>4. d8 b4. e8 |
  \mybreak
  <d-4>2 <cis-4>4 r8 e |
  e4. e8 <eis-1>4. eis8 |
  <fis-1>4. fis8 <b,-0>4. <bis-2>8 |
  <cis-4>4. cis8 \once\shiftOn <d-2>4. b8 |
  \once\shiftOn <cis-1>4 s2 r8 a'8 |
  \mybreak
  a4. a8 <c,-1>4. c8 |
  b4. <b-4>8 fis'4. fis8 |
  <g-4>4. g8 bes,4. bes8 |
  a4. a8 <e'-0>4. e8 |
  \mybreak
  f4. d8 <cis-2>4. e8 |
  d4. e8 f4. e8 |
  <d-4>4. d8 <e-0>4. e8 |
  <cis-1>2. r8 a8 |
  \mybreak
  fis'4. fis8 e4. e8 |
  <d-2>4. <fis-1>8 a,4. d8 |
  b4. b8 e4. d8 |
  d4. cis8 e4. a,8 |
  \mybreak
  <fis'-2>4. <g-4>16([ <fis-2>]) e4. <fis-3>16([ <e-0>]) |
  dis2 \once\shiftOn <e-0>4. <fis-1>16([ <e-0>]) |
  <d-2>4. d8 <cis-2>4. cis8 |
  <d-2 fis,_3>2 s2 |
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(left)
  \partial 4 r4 |
  r8 d8 a'4 r8 a,8 g'4 |
  r8 <d-4>8 fis4 r8 d fis4 |
  r8 <g,-2>8 g'4 r8 <gis,-3>8 e'4 |

  r8 <a,-1> e'4 r8 a, e'4 |
  r8 d8 <a'-1>4 r8 a,8 g'4 |
  r8 <b,-1>8 <fis'-3>4 r8 a, fis'4 |
  r8 <g,-2>8 <g' e-1>4 r8 a, <g' e>4 |

  r8 <d-4>[ <a'-1> fis] d4 r8 s |
  r8 <cis-3>8 a'4 r8 <bis,-2> a'4 |
  r8 <cis,-3>8 a'4 r8 cis,8 a'4 |
  r8 <b,-1>8 fis'4 r8 <e-2>8 <gis-1>4 |

  r8 e8[ gis e] <a-3>8[ <e-2>] a,4 |
  r8 <cis-4>8 <a'-2>4 r8 cis, a'4 |
  r8 d,8 <a'-2>4 r8 <dis,-3> a'4 |
  << {s2 \stemDown e,2 } \\ { r8 <e'_2> <a-3>4 \once\stemUp e,8[ <e'-1>] b'\3[ <gis_1>] } >> |
  << { \stemDown a,4 s2. } \\ { \once\stemUp a8[ <a'-1>] \stemUp <e-1>[ <cis_4>] a4 s4 } >> |

  r8 <fis'-2>8 a4 r8 <e-2>8 <a-3>4 |
  r8 <dis,-3>8 a'4 r8 dis,8 a'4 |
  r8 <e-2>8 g4 r8 <d-3> g4 |
  r8 <cis,-3>8 <g'-4>4 r8 cis, g'4 |

  r8 <d-4>8 <f-2>4 r8 <e-1>8 g4 |
  r8 f8 a4 r8 d,8 a'4 |
  r8 bes, a'4 r8 <bes,-1> <gis'-2>4 |
  r8 a,[ <a'-1> <e-1>] <cis-4>[ e] a,4 |

  r8 d a'4 r8 a, g'4 |
  r8 <d-4> <fis-3>4 r8 <d-1> fis4 |
  r8 g, g'4 r8 gis,8 e'4 |
  r8 a, e'4 r8 a, e'4 |

  r8 d <a'-1>4 r8 ais, g'4 |
  r8 <b,-1>[ <fis'-3> <a-1>] <g-0>[ \once\stemUp e,] <b'' e,,-3>4 |
  r8 a,\noBeam <a'-1 e-3> r8 a,4 <g' e-1> |
  r8 <d-4>[ <a'-1> <e-3>] <d-4>4 b'\rest |
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
    >>
%{
    \new TabStaff = "Guitar tabs"
    <<
      \clef "moderntab"
      \global
      \new TabVoice = "upperVoice" \upperVoice
      \new TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 96
  }
}
