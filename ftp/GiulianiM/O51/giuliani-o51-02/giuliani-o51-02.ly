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
  mutopiatitle = "18 Progressive Lessons, No. 2"
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

twoT = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 4 {e'8 f'} |
  g'8 e' c' b e' d' |
  c'8 b c' g c' b |
  a8 b c' g b c' |
  g4 f8 e g c' |
  b8 a g fis e d |

  \mbreak
  d8 d' b a c' e' |
  e'8 d' b d' c' a |
  g4. r8 g'8 e' |
  cis'4. cis'8 d' e' |
  f'8 d' cis' d' f' d' |

  \mbreak
  b4. b8 c' d' |
  e'8 c' b c' c' d' |
  ees'4. r8 d' c' |
  b4. r8 g' f' |
  ees'4. r8 d' c' |
  g'4. g' |

  \mbreak
  g'4. g' |
  g'4. r8 e' f' |
  g'8 e' c' b c' d' |
  c'8 b c' a e' d' |
  c'4. b |
  <e g c'>2. |

  \bar "|."
}

twoB = \fixed c {
  \voiceTwo

  \partial 4 {r4} |
  c'4. d' |
  f4. r4 r8 |
  f4. e4. |
  d8 g, b, c4 r8 |
  g,4. a,4. |

  b,4. c |
  d4. d |
  g,8 d b, g,4 s8 |
  r8 bes8 a g f e |
  d8 e a f r r |

  r8 aes g f e d |
  c8 e g e r r |
  r8 <c fis> q q r r |
  r8 <g, g> q q r r |
  r8 <c fis> q q r r |
  r8 <b, g> q r q q |

  r8 <d b> q r <ees cis'> q |
  r8 <f d'> q q r r |
  c4. d |
  e4. f |
  g,8 e g g, d g |
  c2. |
}


two = {
  <<
    \clef "treble_8"
    \time 6/8 \key c \major
    \tempo "Grazioso."
    \context Voice = "Etude 2 treble" \twoT
    \context Voice = "Etude 2 bass" \twoB
  >>
}

\score {
  <<
    \new Staff = "midi-guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 2"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \two
    >>
    % \two_tabs
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 120
  }
}
