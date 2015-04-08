\version "2.19.17"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 2"
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

 footer = "Mutopia-2015/04/03-2004"
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
  \time 2/4 \key c \major
}

upperVoice = \relative c'' {
  \voiceOne
  \slurDown
  \partial 4 { g8\mf g } |
  e8 e f f |
  d4 e8 c |
  r16 a b c d e f d |
  c8 b g' g |
  e8 e f f |
  \mbreak

  d4 e8 c |
  r16 a e' d c8 b |
  c4 e16 f e d |
  r16 e, a c d e d c |
  r16 d, g b d g, g' g, |
  r16 g e' c a d, d' d, |
  c'16 d, b' d, d' g, g' g, |
  \mbreak

  r16 e' c a b d c a |
  g16 d d' d, r d c' a |
  b16 d, d' d, r d c' a |
  g16 d g b g d g b |
  g16 d g a b g c g |
  d'16 g, b c d g, e' g, |
  f'16 g, d' e f g, d' e |
  \mbreak

  f4 g8 g |
  e8 e f f |
  d4 e8 c |
  r16 a b c d e f d |
  c8 b g' g |
  e8 e g16( f) e f |
  \mbreak

  d4 e8 c |
  a16 b c d c8 b |
  c16 g g' g, r g f' d |
  e16 g, g' g, r g f' d |
  r16 c e c g c e, g |
  c,4 <e' c g> |
  <c g e>2 |

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 4 { e16 g e g } |
  c,16 g' c, g' d g d g |
  b,16 g' d g c, g' e g |
  f2 |
  e16 g d g e g e g |
  c, g' c, g' d g d g |

  b,16 g' d g c, g' e g |
  f4 e16 g d g |
  c,4 <gis' e,> |
  a,4 <a' fis,> |
  g,4 b |
  c4 fis, |
  g4 b |

  c4 d8 d |
  g,4 fis |
  g4 fis |
  g4 g |
  g4 g8 a |
  b8 g16 a b8 c |
  d8 b16 c d8 b16 c |

  d16 g fis g\f e g e g |
  c,16 g' c, g' d g d g |
  b,16 g' d g c, g' e g |
  f2 |
  e16 g d g e g e g |
  c,16 g' c, g' d4 |

  b16 g' d g c, g' e g |
  f4 e16 g d g |
  c,4 b |
  c4 b |
  c4 r |
  c4 c |
  c2
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      %instrumentName = #"No. 2"
    } <<
      \global
      \clef "treble_8"
      \tempo "Allegretto."

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
    \tempo 4 = 90
  }
}
