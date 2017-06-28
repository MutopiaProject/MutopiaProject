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
  mutopiatitle = "18 Progressive Lessons, No. 5"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/06/28-2184"
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

dynamics = {
  \once\override DynamicText.X-offset=#-3.8
  \repeat unfold 6 {s16\sf s16\> s16 s16\! s16\sf s16\> s16 s16\! |}
  s16\f s16\> s16 s16\! s16\sf s16\> s16 s16\! |
  \repeat unfold 3 {s16\sf s16\> s16 s16\! s16\sf s16\> s16 s16\! |}
  s16\sf s16\p s8 s4 |
  s2 |
  s16\>  s16*6 s16\! |
  s2\f |
  s16\>  s16*6 s16\! |
  s2\f |
  s2\> |
  s16*7 s16\! |
  s2\f |
  s2
}


fiveT = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \override DynamicTextSpanner.style = #'none

  \repeat unfold 2 {c'16\rest b a g b\rest b a g |}
  \repeat unfold 2 {c'16\rest c' b a b\rest c' b a |}
  \repeat unfold 2 {c'16\rest b a g b\rest b a g |}
  \repeat unfold 2 {c'16\rest d' c' b b\rest d' c' b |}
  \repeat unfold 2 {c'16\rest e' d' c' b\rest c' b a |}
  c'16 g' fis' e' fis'8 fis' |

  e'16 g' fis' e' fis'8 fis' |
  e'4 <g e'>8 q |
  e'16 g b e' g'8 <b fis'> |
  e'4 <g e'>8 q |

  e'4 r8 <b fis'>8 |
  b16 b c' b c' b c' b |
  b16 g c' g a g a g |
  <g b e'>4 <e g>8 q |
  e2

  \bar "|."
}


fiveB = \fixed c {
  \voiceTwo
  \repeat unfold 2 {c16\rest g fis e c\rest g fis e |}
  \repeat unfold 2 {c16\rest e d c c\rest e d c |}
  \repeat unfold 2 {c16\rest g fis e c\rest g fis e |}
  \repeat unfold 2 {c16\rest b a gis c\rest d c b, |}
  \repeat unfold 2 {c16\rest c' b a c\rest fis d c |}
  c16\rest b a g \once\override Beam.positions=#'(-2.5 . -2.5) a b a b |

  g16 b a g \once\override Beam.positions=#'(-2.5 . -2.5) a b a b |
  <e, g>16 e dis d cis c b, ais, |
  <b, g>4 r8 <dis a> |
  <e g b>16 e, f, fis, g, gis, a, ais |

  <b, g>16 b g e b,8 <dis a> |
  g16 g a g a g a g |
  g16 b, c b, c b, c b, |
  e,4 <e, b,>8 q |
  q2
}

fiveM = \fixed c {
  \repeat unfold 10 {
    <<\voiceThree {a'4\rest e'} \\ {\voiceFour e,4 c,\rest} >> |
  }
  \voiceFour
  \repeat unfold 2 {e,4 bis,8 bis,|}
  s2*4 |
  \repeat unfold 2 {
    <<{\voiceThree \once\override NoteColumn.force-hshift=#-1 e'2} \\ {\voiceFour e,2} >> |
  }
  s2*2
}


five = {
  <<
    \clef "treble_8"
    \time 2/4 \key e \minor
    \tempo "Andantino."
    \new Voice = "Etude 5 treble" \fiveT
    \new Voice = "Etude 5 bass" \fiveB
    \new Voice = "Etude 5 middle" \fiveM
    \new Dynamics \dynamics
  >>
}

five_tabs = \new TabStaff {
  <<
    \clef "moderntab"
    \time 2/4 \key e \minor
    \new TabVoice = "Etude 2 treble" \fiveT
    \new TabVoice = "Etude 2 bass" \fiveB
    \new TabVoice = "Etude 2 middle" \fiveM
    \new Dynamics \dynamics
  >>
}

\score {
  <<
    \new Staff = "midi-guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 5"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \five
    >>
    % \five_tabs
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 92
  }
}
