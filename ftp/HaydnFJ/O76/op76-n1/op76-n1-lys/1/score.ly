% -*- LilyPond -*-
% vim: ft=lilypond :

\version "2.18.0"

markingsI = {}
markingsII = {}
markingsIII = {}
markingsIV = {}

\include "defs.ily"
\include "../defs.ily"

\include "i-violin1.ily"
\include "i-violin2.ily"
\include "i-viola.ily"
\include "i-violoncello.ily"

#(set-global-staff-size 12)

\layout {
  \context {
    \Score
    \override BarNumber.font-size = #1
    \override BarNumber.padding = #3
  }
}

\score {
  <<
    \new StaffGroup = "strings" <<
      \new Staff = violinI <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrumentName = "Violino I."
        \set Staff.shortInstrumentName = "Vl.I"

        \timeI
        \violinIFirstMov
        \new Voice = "markings" { \markingsI }
      >>

      \new Staff = violinII <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrumentName = "Violino II."
        \set Staff.shortInstrumentName = "Vl.II"

        \timeI
        \violinIIFirstMov
      >>

      \new Staff = "viola" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrumentName = "Viola."
        \set Staff.shortInstrumentName = "Vla"

        \timeI
        \violaFirstMov
      >>

      \new Staff = "cello" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrumentName = "Violoncello."
        \set Staff.shortInstrumentName = "Vc."

        \timeI
        \celloFirstMov
      >>
    >>
  >>

  \include "i-midi.ily"

  \header {
    piece = \headerI
  }

  \layout { }
}

\include "ii-violin1.ily"
\include "ii-violin2.ily"
\include "ii-viola.ily"
\include "ii-violoncello.ily"

\score {
  <<
    \new StaffGroup = "strings" <<
      \new Staff = violinI <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrumentName = "Violino I."
        \set Staff.shortInstrumentName = "Vl.I"

        \timeII
        \violinISecondMov
        \new Voice = "markings" { \markingsII }
      >>

      \new Staff = violinII <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrumentName = "Violino II."
        \set Staff.shortInstrumentName = "Vl.II"

        \timeII
        \violinIISecondMov
      >>

      \new Staff = "viola" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrumentName = "Viola."
        \set Staff.shortInstrumentName = "Vla"

        \timeII
        \violaSecondMov
      >>

      \new Staff = "cello" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrumentName = "Violoncello."
        \set Staff.shortInstrumentName = "Vc."

        \timeII
        \celloSecondMov
      >>
    >>
  >>

  \include "ii-midi.ily"

  \header {
    piece = \headerII
  }

  \layout { }
}

\include "iii-violin1.ily"
\include "iii-violin2.ily"
\include "iii-viola.ily"
\include "iii-violoncello.ily"

\score {
  <<
    \new StaffGroup = "strings" <<
      \new Staff = violinI <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrumentName = "Violino I."
        \set Staff.shortInstrumentName = "Vl.I"

        \timeIII
        \violinIThirdMov
        \new Voice = "markings" { \markingsIII }
      >>

      \new Staff = violinII <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrumentName = "Violino II."
        \set Staff.shortInstrumentName = "Vl.II"

        \timeIII
        \violinIIThirdMov
      >>

      \new Staff = "viola" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrumentName = "Viola."
        \set Staff.shortInstrumentName = "Vla"

        \timeIII
        \violaThirdMov
      >>

      \new Staff = "cello" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrumentName = "Violoncello."
        \set Staff.shortInstrumentName = "Vc."

        \timeIII
        \celloThirdMov
      >>
    >>
  >>

  \include "iii-midi.ily"

  \header {
    piece = \headerIII
  }

  \layout { }
}

\include "iv-violin1.ily"
\include "iv-violin2.ily"
\include "iv-viola.ily"
\include "iv-violoncello.ily"

\score {
  <<
    \new StaffGroup = "strings" <<

      \new Staff = violinI <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrumentName = "Violino I."
        \set Staff.shortInstrumentName = "Vl.I"

        \timeIV
        \violinIFourthMov	
        \new Voice = "markings" { \markingsIV }
      >>

      \new Staff = violinII <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrumentName = "Violino II."
        \set Staff.shortInstrumentName = "Vl.II"

        \timeIV
        \violinIIFourthMov
      >>

      \new Staff = "viola" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrumentName = "Viola."
        \set Staff.shortInstrumentName = "Vla"

        \timeIV
        \violaFourthMov
      >>

      \new Staff = "cello" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrumentName = "Violoncello."
        \set Staff.shortInstrumentName = "Vc."

        \timeIV
        \celloFourthMov
      >>
    >>
  >>

  \include "iv-midi.ily"

  \header {
    piece = \headerIV
  }

  \layout { }
}
