% -*- LilyPond -*-

\version "2.18.0"

markingsI = {}
markingsII = {}
markingsIII = {}
markingsIV = {}

violinIIBreakBeforeII = ##f
violinIIBreakBeforeIII = ##f
violinIIBreakBeforeIV = ##f

violinIIBreakI = {}
violinIIBreakII = {}
violinIIBreakIII = {}
violinIIBreakIV = {}

violinIIOverridesI = {}
violinIIOverridesII = {}
violinIIOverridesIII = {}
violinIIOverridesIV = {}

#(set-global-staff-size 16.0)

\layout {
  \compressFullBarRests
  \context {
    \Score
    \override BarNumber.font-size = #1
    \override BarNumber.padding = #3
  }
}

\include "../defs.ily"
\include "defs.ily"
\include "violin2_defs.ily"

\include "i-violin2.ily"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violin II"

    \timeI
    \violinIIFirstMov
    \new Voice = "breaks" { \violinIIBreakI }
    \new Voice = "markings" { \markingsI }
    \new Voice = "override" { \violinIIOverridesI }
  >>

  \include "i-midi.ily"
  \header {
    piece = \headerI
  }
  \layout {}
}

\include "ii-violin2.ily"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violin II"

    \timeII
    \violinIISecondMov
    \new Voice = "breaks" { \violinIIBreakII }
    \new Voice = "markings" { \markingsII }
    \new Voice = "override" { \violinIIOverridesII }
  >>

  \include "ii-midi.ily"

  \header {
    piece = \headerII
    breakbefore = \violinIIBreakBeforeII
  }

  \layout {}
}

\include "iii-violin2.ily"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violin II"

    \timeIII
    \violinIIThirdMov
    \new Voice = "breaks" { \violinIIBreakIII }
    \new Voice = "markings" { \markingsIII }
    \new Voice = "override" { \violinIIOverridesIII }
  >>

  \include "iii-midi.ily"

  \header {
    piece = \headerIII
    breakbefore = \violinIIBreakBeforeIII
  }

  \layout {}
}

\include "iv-violin2.ily"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violin II"

    \timeIV
    \violinIIFourthMov
    \new Voice = "breaks" { \violinIIBreakIV }
    \new Voice = "markings" { \markingsIV }
    \new Voice = "override" { \violinIIOverridesIV }
  >>

  \include "iv-midi.ily"

  \header {
    piece = \headerIV
    breakbefore = \violinIIBreakBeforeIV
  }

  \layout {}
}
