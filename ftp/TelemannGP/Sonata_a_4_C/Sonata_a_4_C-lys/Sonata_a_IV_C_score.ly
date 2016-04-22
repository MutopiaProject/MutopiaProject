\version "2.18.2"
\language "deutsch"
\include "Sonata_a_IV_C.ly"

\paper {
  ragged-last-bottom = ##f
}

\header {
  title = \markup {
    \column \center-align {
      \fontsize #2 "Sonata"
      \fontsize #0 "â"
      \fontsize #2 "IV. Violini"
    }
  }
  composer = "Georg Philipp Telemann"
  mutopiatitle = "Sonata in C major for four violins"
  mutopiacomposer = "TelemannGP"
  mutopiaopus = "TWV 40:203"
  mutopiainstrument = "Violin"
  source = "Manuscript"
  style = "Baroque"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Urs Metzger"
  maintainerEmail = "urs@ursmetzger.de"

 footer = "Mutopia-2016/04/22-2115"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

graveAViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  midiInstrument = "violin"
  midiPanPosition = #-1
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \graveAViolinI

graveAViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  midiInstrument = "violin"
  midiPanPosition = #-0.33
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \graveAViolinII

graveAViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  midiInstrument = "violin"
  midiPanPosition = #0.33
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \graveAViolinIII

graveAViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  midiInstrument = "violin"
  midiPanPosition = #1
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \graveAViolinIV

\score {
  \header {
    opus = "TWV 40:203"
    piece = \markup { \bold \huge "Grave" }
  }
  <<
    \graveAViolinIPart
    \graveAViolinIIPart
    \graveAViolinIIIPart
    \graveAViolinIVPart
  >>
  \layout {
    indent = 1.8 \cm
  }
  \midi { }
}

\pageBreak

allegroAViolinIPart = \new Staff \with {
  instrumentName = "I"
  midiInstrument = "violin"
  midiPanPosition = #-1
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \allegroAViolinI

allegroAViolinIIPart = \new Staff \with {
  instrumentName = "II"
  midiInstrument = "violin"
  midiPanPosition = #-0.33
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \allegroAViolinII

allegroAViolinIIIPart = \new Staff \with {
  instrumentName = "III"
  midiInstrument = "violin"
  midiPanPosition = #0.33
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \allegroAViolinIII

allegroAViolinIVPart = \new Staff \with {
  instrumentName = "IV"
  midiInstrument = "violin"
  midiPanPosition = #1
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \allegroAViolinIV

\score {
  \header {
    piece = \markup { \bold \huge "Allegro" }
  }
  <<
    \allegroAViolinIPart
    \allegroAViolinIIPart
    \allegroAViolinIIIPart
    \allegroAViolinIVPart
  >>
  \layout {
    indent = 0.6 \cm
  }
  \midi { }
}

\pageBreak

largoAViolinIPart = \new Staff \with {
  instrumentName = "I"
  midiInstrument = "violin"
  midiPanPosition = #-1
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \largoAViolinI

largoAViolinIIPart = \new Staff \with {
  instrumentName = "II"
  midiInstrument = "violin"
  midiPanPosition = #-0.33
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \largoAViolinII

largoAViolinIIIPart = \new Staff \with {
  instrumentName = "III"
  midiInstrument = "violin"
  midiPanPosition = #0.33
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \largoAViolinIII

largoAViolinIVPart = \new Staff \with {
  instrumentName = "IV"
  midiInstrument = "violin"
  midiPanPosition = #1
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \largoAViolinIV

\score {
  \header {
    piece = \markup { \bold \huge "Largo e Staccato" }
  }
  <<
    \largoAViolinIPart
    \largoAViolinIIPart
    \largoAViolinIIIPart
    \largoAViolinIVPart
  >>
  \layout {
    indent = 0.7 \cm
  }
  \midi { }
}

\pageBreak

allegroIIAViolinIPart = \new Staff \with {
  instrumentName = "I"
  midiInstrument = "violin"
  midiPanPosition = #-1
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \allegroIIAViolinI

allegroIIAViolinIIPart = \new Staff \with {
  instrumentName = "II"
  midiInstrument = "violin"
  midiPanPosition = #-0.33
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \allegroIIAViolinII

allegroIIAViolinIIIPart = \new Staff \with {
  instrumentName = "III"
  midiInstrument = "violin"
  midiPanPosition = #0.33
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \allegroIIAViolinIII

allegroIIAViolinIVPart = \new Staff \with {
  instrumentName = "IV"
  midiInstrument = "violin"
  midiPanPosition = #1
  midiMaximumVolume = #0.9
  midiMinimumVolume = #0.01
} \allegroIIAViolinIV

\score {
  \header {
    piece = \markup { \bold \huge "Allegro" }
  }
  <<
    \allegroIIAViolinIPart
    \allegroIIAViolinIIPart
    \allegroIIAViolinIIIPart
    \allegroIIAViolinIVPart
  >>
  \layout {
    indent = 0.6 \cm
  }
  \midi { }
}
