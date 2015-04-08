\version "2.19.17"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 3"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/04/03-2005"
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

mbreak = {} % { \break }
global = {
  \time 6/8 \key d \major
}

upperVoice = \relative c' {
  \voiceOne
%  \slurDown
  \partial 4. { a8_\markup{\italic "dolce"} b cis } |
  d8 fis e \grace e16 d8 cis d |
  dis4 e8 a,8 cis d |
  e8 g fis \grace fis16 e8 dis e |
  eis4 fis8 a fis d |
  cis8 e a, a' fis d |
  cis8 e a, a d cis |
  b8_\< g' fis e b d\! |
  \mbreak

  cis8 b a a b cis |
  d8\f fis e \grace e16 d8 cis d |
  dis4 e8 a,8 cis d |
  e8 g fis \grace fis16 e8 dis e |
  eis4 fis8 a fis d |
  cis8 e a, a' fis d |
  cis8 e a, a d cis |
  b8 g' e d e cis |
  d4 r8 <a fis>4.\p |
  \mbreak

  <b g>8 <cis a> <d b> <d b> <cis a> <b g> |
  <a fis>4. a8 d fis |
  <e cis>4\sf <d a>8 a d fis |
  <g cis,>4\sf <fis d>8\p <a, fis>4. |
  <b g>8 <cis a> <d b> <d b> <cis a> <b g> |
  <a fis>4. a'8\f fis d |
  r4 r8 r8 <fis a,> <e g,> |
  <d fis,>4. r4 r8\mf |
  <c a>4. \grace d16 <c a>8 <b gis> <c a> |
  \mbreak

  <b g!>4. r4 r8 |
  <cis g>4. \grace d16 <cis g>8 <b g> <cis g> |
  d8 fis d \grace d16 cis8 b a |
  a8_\< d cis b g' e |
  fis, a d e, a cis\f |
  d8 fis a, d fis, a |
  d,4. <fis' d a> |
  <d, a>2. |

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 4. { r4 r8 } |
  d4 r8 d4 r8 |
  cis4. r4 r8 |
  cis4 r8 cis4 r8 |
  d4 r8 fis,4. |
  g4. fis |
  g4. fis |
  g4. gis4. |

  a4. r4 r8 |
  d4 r8 d4 r8 |
  cis4. r4 r8 |
  cis4 r8 cis4 r8 |
  d4 r8 fis,4. |
  g4. fis4. |
  g4. fis4. |
  g4. a4. |
  d8 d d d d d |

  d8 d d d d d |
  d4. r4 r8 |
  g4 fis8 r4 r8 |
  fis4 d8 d d d |
  d8 d d d d d |
  d4. r4 r8 |
  a'8 e d a4 r8 |
  d8 d d d d d |
  d8 d d d d d |

  d8 d d d d d |
  d8 d d d d d |
  <fis d>4. e, |
  fis4. g |
  a4. a |
  d4. r4 r8 |
  d4. d |
  fis,2. |
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \global
      \clef "treble_8"
      \tempo "Andantino."

      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
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
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 96
  }
}
