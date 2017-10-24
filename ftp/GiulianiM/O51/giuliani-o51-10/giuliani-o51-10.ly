\version "2.19.51"

\header {
  title = "18 Progressive Lessons"
  composer = "Mauro Giuliani"
  opus = "Op. 51"
  style = "Classical"
  source = "Chez Richault, Paris. Plate 3307 R."
  date = "c.1827"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "18 Progressive Lessons, No. 10"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/10/24-2189"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  line-width = 18.0\cm
  top-margin = 4\mm
  top-markup-spacing.basic-distance = #6
  markup-system-spacing.basic-distance = #10
  top-system-spacing.basic-distance = #12
  last-bottom-spacing.padding = #2
}

% mbreak = { \break }
mbreak = {} % {\break}


tenT = \fixed c' {
  \voiceOne
  \set fingeringOrientations = #'(up)

  \partial 8 {g8\mf} |
  g4 g8 g4 g8 |
  g4. r4 g8 |
  e4 e8 g f d |
  c4. r4 e8 |

  \mbreak
  d4 d8 d4 d8 |
  d4 b,8 a, c e |
  r8 g, b, d c a, |
  g,4. r4 g,8 |
  c4 c8 c4 c8 |

  \mbreak
  c4. r8 c cis |
  d4 d8 d4 d8 |
  d4. r8 d e |
  f4 f8 e d c |
  b,4 b,8 c d e |
  a, f d c d b, |

  \mbreak
  c8 g, g, g, g, g, |
  g,8 g,\< g, g, g, g, |
  r8 g f\! e d c |
  <g, b,>8\> <g, d> <g, c> <g, b,> <g, c>\! \once\override DynamicText.X-offset = 1.8 <g, d>\p |
  c4 r8 r4 r8 |

  \mbreak
  r8 b, c d e f |
  <g, e>8 e\< <g, e> q q q\! |
  f8 f f f f \once\override DynamicText.X-offset = 1.8 f\f |
  <g, e>8 q q <g, f> q q |
  <g, e>8 q q <g, f> q q |
  <g, e>4 r8 <c e>4. |
  <e, g, c>2.
  \bar "|."
}

tenB = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(Down)

  \partial 8 {r8} |
  c8 e g b, f g |
  c8 e g c e g |
  c e g b, d g |
  c e g c e g |

  g,8 b, d fis, c d |
  g,8 b, d c4. |
  d4. d |
  g,8 d b, g,4 r8 |
  c8 e g c e bes |

  c8 f a c4. |
  fis,8 a, d fis, c d |
  g,8 b, d g,4 r8 |
  b,8 g b, c d e |
  f8 g f e d c |
  f,4. g, |

  c8 r r r4 r8 |
  r8 g, a, b, c d |
  <e g>8 q q q q q |
  e8 e e e e e |
  <e g>8 g g g g g |

  g8 g g g g g |
  r8 g f e d c |
  <b, g>8 <d g> <c g> <b, g> <a, g> <g, g> |
  c8 g, cis d g, b, |
  c8 g, cis d g, b, |
  c4 r8 <c e g>4. |
  c2.
}

ten = {
  <<
    \clef "treble_8"
    \time 6/8 \key c \major
    \tempo "Andantino."
    \context Voice = "Etude 10 treble" \tenT
    \context Voice = "Etude 10 bass" \tenB
  >>
}


\score {
  <<
    \new Staff = "midi-guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 10"
      \override StringNumber #'stencil = ##f
      \override Fingering.add-stem-support = ##t
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \ten
    >>
    % \ten_tabs
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 120
  }
}
