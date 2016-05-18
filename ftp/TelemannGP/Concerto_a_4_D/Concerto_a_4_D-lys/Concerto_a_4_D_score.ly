\version "2.18.2"
\language "deutsch"
\include "Concerto_a_4_D.ly"

\paper {
  ragged-right = ##f
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
  mutopiatitle = "Concerto in D major for four violins"
  mutopiacomposer = "TelemannGP"
  mutopiaopus = "TWV 40:202"
  mutopiainstrument = "Violin"
  source = "Manuscript"
  style = "Baroque"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Urs Metzger"
  maintainerEmail = "urs@ursmetzger.de"

 footer = "Mutopia-2016/05/18-2118"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
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
    opus = "TWV 40:202"
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

\pageBreak

graveViolinIPart = \new Staff \with {
  instrumentName = "I"
  midiInstrument = "violin"
  midiPanPosition = #-1
} \graveViolinI

graveViolinIIPart = \new Staff \with {
  instrumentName = "II"
  midiInstrument = "violin"
  midiPanPosition = #-0.33
} \graveViolinII

graveViolinIIIPart = \new Staff \with {
  instrumentName = "III"
  midiInstrument = "violin"
  midiPanPosition = #0.33
} \graveViolinIII

graveViolinIVPart = \new Staff \with {
  instrumentName = "IV"
  midiInstrument = "violin"
  midiPanPosition = #1
} \graveViolinIV

\score {
  \header {
    piece = \markup { \bold \huge "Grave" }
  }
  <<
    \graveViolinIPart
    \graveViolinIIPart
    \graveViolinIIIPart
    \graveViolinIVPart
  >>
  \layout {
    indent = 6
  }
  \midi { }
}

allegroIIViolinIPart = \new Staff \with {
  instrumentName = "I"
  midiInstrument = "violin"
  midiPanPosition = #-1
} \allegroIIViolinI

allegroIIViolinIIPart = \new Staff \with {
  instrumentName = "II"
  midiInstrument = "violin"
  midiPanPosition = #-0.33
} \allegroIIViolinII

allegroIIViolinIIIPart = \new Staff \with {
  instrumentName = "III"
  midiInstrument = "violin"
  midiPanPosition = #0.33
} \allegroIIViolinIII

allegroIIViolinIVPart = \new Staff \with {
  instrumentName = "IV"
  midiInstrument = "violin"
  midiPanPosition = #1
} \allegroIIViolinIV

\score {
  \header {
    piece = \markup { \bold \huge "Allegro" }
  }
  <<
    \allegroIIViolinIPart
    \allegroIIViolinIIPart
    \allegroIIViolinIIIPart
    \allegroIIViolinIVPart
  >>
  \layout {
    indent = 6
  }
  \midi { }
}
