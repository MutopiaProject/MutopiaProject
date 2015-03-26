\version "2.18.2"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 1"
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
  footer = "Mutopia-2015/03/11-0"
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
  \time 6/8 \key g \major
}

upperVoice = \relative c' {
  \voiceOne
  \slurDown

  <g b>4.\mf \appoggiatura c16 b8 ais b |
  d4 cis8 c4 r8 |
  <g b>4. \appoggiatura c16 b8 ais b |
  a8 c16 b a g fis e d c b a |
  <g' b>4. \appoggiatura c16 b8 ais b |
  \mbreak

  d4 cis8 c4 r8 |
  <g b>4. <a c> |
  <g b>8 q q q4 r8 |
  c4 a8 d4. |
  b4 g8 d'4. |
  <a c>4. <g b> |
  a4. r4 r8 |
  \mbreak

  c4 a8 d4. |
  b4 g8 d'4. |
  <a c>8 d, d' <g, b> d d' |
  a8 d, e fis g a |
  <g b>4. \appoggiatura c16 b8 ais b |
  d4 cis8 c4 r8 |
  <g b>4. \appoggiatura c16 b8 ais b |
  \mbreak

  a8 c16 b a g fis e d c b a |
  <g' b>4. \appoggiatura c16 b8 ais b |
  d4 cis8 c4 r8 |
  <g b>4. <a c> |
  <g b>8 q q <g b g'>4 r8 |

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  g8 b d g, b d |
  fis,8 a d fis, a d |
  g,8 b d g, b d |
  <fis, d'>4 r r |
  g8 b d g, b d |

  fis,8 a d fis, a d |
  g,8 b d fis, b d |
  g,8 b d g,4 r8 |
  fis8 a d fis, a d |
  g,8 b d g, b d |
  fis,8 a d g, b d |
  fis,8 a d fis, a d |

  fis,8 a d fis, a d |
  g,8 b d g, b d |
  fis,4. g |
  fis4. r4 r8 |
  g8 b d g, b d |
  fis,8 a d fis, a d |
  g,8 b d g, b d |

  <fis, d'>4 r8 r4 r8 |
  g8 b d g, b d |
  fis,8 a d fis, a d |
  g,8 b d fis, b d |
  g,8 c d g,4 r8
}



\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      %instrumentName = #"No. 1"
    } <<
      \global
      \clef "treble_8"
      \tempo "Grazioso."

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
    \tempo 4 = 100
  }
}
