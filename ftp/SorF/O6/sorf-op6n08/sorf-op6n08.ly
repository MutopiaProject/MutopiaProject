\version "2.19.35"

\header {
  title = "12 Etudes"
  composer = "F. Sor"
  opus = "Op. 6 No. 8"
  style = "Romantic"
  source = "N. Simrock, Berlin. Plate 9106"
  date = "c.1889"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "12 Etudes, No. 8"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/08/01-2128"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #12
  system-count = #5
}

mbreak = { } % { \break }
global = {
  \time 3/4
  \key c \major
}

upperVoice = \fixed c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  <c e>4 q q |
  d2 <cis e>4 |
  <d f>4 q q |
  e2 <d f>4 |
  <e g>4 <c e> <d f>8 <c e> |
  <b, d>4 <c e>8 <b, d> <a, c>4 |
  <b, d>8 <a, c> <gis, b,>4 <a, c>8 <g, b,> |

  \mbreak
  <fis, a,>4 <g, d> <g, e> |
  <g, b,>4 <a, c> <fis, a,> |
  g4 f\rest f\rest |
  f4\rest g f |
  \acciaccatura{f4} e2 d4 |
  cis4 a g |
  \acciaccatura{g4} f2 <g, e>4 |
  d4 a g |
  \acciaccatura{g4} <d f>2 <bes, e>4 |
  e4 d c |

  \mbreak
  b,4 <a, c> <b, d> |
  <c e>2. |
  <a, c>4 <b, d> <c e> |
  <d f>2. |
  <b, d>4 <c e> <d f> |
  <e g>2. |
  <c e>4 <d f> <f a> |
  <c e>4 <d f> <b, d> |
  c4 e fis |
  g4 d e |
  f4 c d |
  e4 b, cis |

  \mbreak
  d4 a, <f, b,> |
  <e, c>4 <a, d> <f, b> |
  <e, c>4 e\rest <c a~> |
  a4 g g~ |
  g4 f f~ |
  f4 e e~ |
  e4 d d~ |
  d4 c c~ |
  c4 \slashedGrace{c8} b, a, b,4 |
  c2.

  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  c4 e f |
  g2 f8 e |
  d4 f g |
  a2 g8 f |
  e4 a8 g f4 |
  g8 f e4 f8 e |
  d4 e8 d c4 |

  d8 c b,4 c |
  d2 d4 |
  g,4 g f! |
  e2 d4 |
  c2 bes,4 |
  a,2 cis4 |
  d2 e4 |
  f2 e4 |
  d4 a g |
  <f a>2 <fis a>4 |

  g4 f! d |
  c4 d e |
  f4 d\rest d\rest |
  d4 e f |
  g4 d\rest d\rest |
  e4 f g |
  a4 f d |
  g2 b,4 |
  <c c'>4 d\rest <d c'> |
  <g b>4 d\rest <c bes> |
  <f a>2 q4 |
  <e gis>2 <a, g>4 |

  <d fis>2 g,4 |
  a,4 f, g, |
  c4 e fis |
  g4 d e |
  f4 c d |
  e4 b, cis |
  d4 a, b, |
  c2 a,4 |
  g,2. |
  c2.
}

midVoice = \fixed c {
  \voiceThree
  s2. | c'4 b s | s2. | d'4 c' s | s2.*3 |

  s2.*4 |
  g4\rest g gis |
  a2 e'4 |
  d'4 a s |
  \tieDown f8 a~ a4 cis'4 |
  s2.*2 |

  s2.*12 |

  s2.*3 |
  b2 bes4 |
  a2 a4 |
  gis2 g4 |
  fis2 f4 |
  e2 fis4 |
  d8 e \once\stemDown f!2~ |
  f4 \slashedGrace{f8} e d e4 |
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 8"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Andantino."
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      \context Voice = "midVoice" \midVoice
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
      \context TabVoice = "midVoice" \midVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 88
  }
}
