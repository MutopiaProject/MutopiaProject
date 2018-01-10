\version "2.18.2"
\language "deutsch"
\include "Concerto_a_4_G.ly"

\paper {
  ragged-last-bottom = ##f
}

\header {
  title = \markup {
    \column \center-align {
      \fontsize #6 \caps "Concerto"
      \fontsize #-2 "à"
      \fontsize #0 "4 Violini Concertati"
      \fontsize #-2 "del Sigr:"
      \vspace #0.6
      \fontsize #6 \caps "Melante"
    }
  }
  composer = "Georg Philipp Telemann"
  mutopiatitle = "Concerto in G major for four violins"
  mutopiacomposer = "TelemannGP"
  mutopiaopus = "TWV 40:201"
  mutopiainstrument = "Violin"
  source = "Manuscript"
  style = "Baroque"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Urs Metzger"
  maintainerEmail = "urs@ursmetzger.de"

 footer = "Mutopia-2018/01/10-2117"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2018 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

largoViolinIPart = \new Staff \with {
  instrumentName = "I"
  midiInstrument = "violin"
  midiPanPosition = #-1
} \largoViolinI

largoViolinIIPart = \new Staff \with {
  instrumentName = "II"
  midiInstrument = "violin"
  midiPanPosition = #-0.33
} \largoViolinII

largoViolinIIIPart = \new Staff \with {
  instrumentName = "III"
  midiInstrument = "violin"
  midiPanPosition = #0.33
} \largoViolinIII

largoViolinIVPart = \new Staff \with {
  instrumentName = "IV"
  midiInstrument = "violin"
  midiPanPosition = #1
} \largoViolinIV

\score {
  \header {
    opus = "TWV 40:201"
    piece = \markup { \bold \huge "Largo e staccato" }
  }
  <<
    \largoViolinIPart
    \largoViolinIIPart
    \largoViolinIIIPart
    \largoViolinIVPart
  >>
  \layout {
    indent = 6
  }
  \midi { }
}

\pageBreak

allegroViolinIPart = \new Staff \with {
  instrumentName = "I"
  midiInstrument = "violin"
  midiPanPosition = #-1
} \allegroViolinI

allegroViolinIIPart = \new Staff \with {
  instrumentName = "II"
  midiInstrument = "violin"
  midiPanPosition = #-0.33
} \allegroViolinII

allegroViolinIIIPart = \new Staff \with {
  instrumentName = "III"
  midiInstrument = "violin"
  midiPanPosition = #0.33
} \allegroViolinIII

allegroViolinIVPart = \new Staff \with {
  instrumentName = "IV"
  midiInstrument = "violin"
  midiPanPosition = #1
} \allegroViolinIV

\score {
  \header {
    piece = \markup { \bold \huge "Allegro" }
  }
  <<
    \allegroViolinIPart
    \allegroViolinIIPart
    \allegroViolinIIIPart
    \allegroViolinIVPart
  >>
  \layout {
    indent = 6
  }
  \midi { }
}

adagioViolinIPart = \new Staff \with {
  instrumentName = "I"
  midiInstrument = "violin"
  midiPanPosition = #-1
} \adagioViolinI

adagioViolinIIPart = \new Staff \with {
  instrumentName = "II"
  midiInstrument = "violin"
  midiPanPosition = #-0.33
} \adagioViolinII

adagioViolinIIIPart = \new Staff \with {
  instrumentName = "III"
  midiInstrument = "violin"
  midiPanPosition = #0.33
} \adagioViolinIII

adagioViolinIVPart = \new Staff \with {
  instrumentName = "IV"
  midiInstrument = "violin"
  midiPanPosition = #1
} \adagioViolinIV

\score {
  \header {
    piece = \markup { \bold \huge "Adagio" }
  }
  <<
    \adagioViolinIPart
    \adagioViolinIIPart
    \adagioViolinIIIPart
    \adagioViolinIVPart
  >>
  \layout {
    indent = 6
  }
  \midi { }
}

\pageBreak

vivaceViolinIPart = \new Staff \with {
  instrumentName = "I"
  midiInstrument = "violin"
  midiPanPosition = #-1
} \vivaceViolinI

vivaceViolinIIPart = \new Staff \with {
  instrumentName = "II"
  midiInstrument = "violin"
  midiPanPosition = #-0.33
} \vivaceViolinII

vivaceViolinIIIPart = \new Staff \with {
  instrumentName = "III"
  midiInstrument = "violin"
  midiPanPosition = #0.33
} \vivaceViolinIII

vivaceViolinIVPart = \new Staff \with {
  instrumentName = "IV"
  midiInstrument = "violin"
  midiPanPosition = #1
} \vivaceViolinIV

\score {
  \header {
    piece = \markup { \bold \huge "Vivace" }
  }
  <<
    \vivaceViolinIPart
    \vivaceViolinIIPart
    \vivaceViolinIIIPart
    \vivaceViolinIVPart
  >>
  \layout {
    indent = 6
  }
  \midi { }
}
