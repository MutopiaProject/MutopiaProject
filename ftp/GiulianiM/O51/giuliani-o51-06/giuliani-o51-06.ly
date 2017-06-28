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
  mutopiatitle = "18 Progressive Lessons, No. 6"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/06/28-2185"
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

sixT = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \override DynamicTextSpanner.style = #'none

  \partial 4. {fis'8\mf g' fis'} |
  \slashedGrace{fis'8} e'8 dis' e' a' g' e' |
  d'8 cis' d' fis' e' cis' |
  b8 ais b e' b d' |
  cis'8 b a a b cis' |
  d'4. e' |

  \mbreak
  fis'8 e' d' d' a c' |
  c'8 ais b e' b d' |
  d'8 bis cis' a' e' g' |
  fis'8 e' d' cis' d' b |
  a8 cis' dis' e' b d' |
  cis'8 fis' dis' e' b d' |

  \mbreak
  cis' e' a' b d' fis' |
  r8 a cis' e' d' b |
  a4. <d' e'> |
  <cis' e'>4. <d' e'> |
  << {\voiceOne e'8 d' cis' a' gis' fis'} \\
     {\voiceThree\stemDown cis'8 b a fis' e' d'}>> |
  << {\voiceOne e'8 d' cis' d' cis' b} \\
     {\voiceThree\stemDown cis'8 b a b a gis}>> |

  \mbreak
  a8 e' d'\p cis' e' d' |
  cis'8 g' fis' e' g' fis' |
  e'8 g' fis' e' e' d' |
  cis'8 a b c' cis' d' |
  dis' e' eis' fis' g'\mf fis' |
  \slashedGrace{fis'8} e'8 dis' e' a' g' e' |
  d'8 cis' d' fis' e' cis' |

  \mbreak
  b8 ais b e' b d' |
  cis'8 b a a b cis' |
  d'4. e' |
  << {\voiceOne fis'8 e' d' d' cis' b} \\
     {\voiceThree\stemDown s4 s8 b a g } >> |
  a8 d' fis' e' g' cis' |
  d'8 a' fis' d' a fis |
  d4.\f <a d' fis'> |
  d'2.

  \bar "|."
}


sixB = \fixed c {
  \voiceTwo
  \partial 4. {d4.} |
  cis4. a, |
  b,4. fis, |
  g,4. gis, |
  a,4. g |
  fis8 e d cis b, a, |

  d4. fis, |
  g,4. gis, |
  a,4. cis |
  d4. e, |
  a,4. gis, |
  a,4. gis, |

  a,4. d |
  e4. e, |
  \repeat unfold 2 {a,8 cis a, gis, e, gis, |}
  a,4. d |
  e,4. e, |

  a,8 r r r g fis |
  e8 r r r e d |
  cis8 b a g g fis |
  e4 r8 r4 r8 |
  r4 r8 d4. |
  cis4. a, |
  b,4. fis, |

  g,4. gis, |
  a,4. g |
  fis8 e d cis b, a, |
  d4. g, |
  <a, fis>4. a, |
  d4. r4 r8 |
  d4. d |
  <d fis a>2.
}


six = {
  <<
    \clef "treble_8"
    \time 6/8 \key d \major
    \tempo "Grazioso."
    \new Voice = "Etude 2 treble" \sixT
    \new Voice = "Etude 2 bass" \sixB
  >>
}

six_tabs = \new TabStaff {
  <<
    \clef "moderntab"
    \time 6/8 \key d \major
    \new TabVoice = "Etude 2 treble" \sixT
    \new TabVoice = "Etude 2 bass" \sixB
  >>
}

\score {
  <<
    \new Staff = "midi-guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 6"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \six
    >>
    % \six_tabs
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 100
  }
}
