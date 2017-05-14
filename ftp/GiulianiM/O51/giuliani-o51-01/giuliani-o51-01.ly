\version "2.19.51"

\header {
  title = "18 Progressive Lessons"
  composer = "Mauro Giuliani"
  opus = "Op. 51"
  style = "Classical"
  source = "Chez Richault, Paris. Plate 3307 R."
  date = "c.1827"
  mutopiacomposer = "GiuilaniM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "18 Progressive Lessons, No. 1"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
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

oneT = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  g1\sf |
  a1\sf |
  g2. f4 |
  e4 g c' e' |
  g'4\sf c' b c' |
  d'4 g b d' |

  \mbreak
  g'4\sf d' c' d' |
  e'4 g c' e' |
  g'4\sf c' d' e' |
  g'4 f'2 e'4 |
  e'4 d'2 c'4 |
  c'4 b a g |

  \mbreak
  g2\sf c'\sf |
  a2\sf f'\sf |
  d'2\sf g'\sf |
  e'4\p c' b g |
  c'4 g d' g |
  e'4 c' a d' |

  \mbreak
  c'4 g b g |
  c'4 g'\sf b g'\sf |
  c'4 g'\sf d' g'\sf |
  e'4 c' a d' |
  <e g c'>2 <d g b> |
  <e g c'>2\f r |

  \bar "|."
}

oneB = \fixed c {
  \voiceTwo
  e4 b, d e |
  f4 e d c |
  b,4 g, a, b, |
  a,4 r r2 |
  r4 e d c |
  b,4 r r2 |

  r4 f e d |
  c4 r r2 |
  r4 c b, bes, |
  << {\voiceTwo a,2 g,} \\ {\voiceThree c'2 c'} >> |
  << {\voiceTwo f,2 fis,} \\ {\voiceThree a2 a} >> |
  << {\voiceTwo g,2 r} \\ {\voiceThree g2 s} >> |

  e4 c d e |
  f4 e d c |
  b,4 g, a, b, |
  c2 d |
  e2 b, |
  c2 f |

  e2 d |
  c2 f |
  e2 b, |
  c4 e, f,2 |
  g,2 g, |
  c2 r |
}


one = {
  <<
    \clef "treble_8"
    \time 4/4 \key c \major
    \tempo "Maestoso."
    \context Voice = "Etude 1 treble" \oneT
    \context Voice = "Etude 1 bass" \oneB
  >>
}

\score {
  <<
    \new Staff = "midi-guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 1"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \one
    >>
    % \one_tabs
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 120
  }
}
