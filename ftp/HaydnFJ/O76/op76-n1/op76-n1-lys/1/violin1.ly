% -*- LilyPond -*-

\version "2.16.0"

markingsI = {}
markingsII = {}
markingsIII = {}
markingsIV = {}

violinIBreakBeforeII = ##f
violinIBreakBeforeIII = ##f
violinIBreakBeforeIV = ##f

violinIBreakI = {}
violinIBreakII = {}
violinIBreakIII = {}
violinIBreakIV = {}

violinIOverridesI = {}
violinIOverridesII = {}
violinIOverridesIII = {}
violinIOverridesIV = {}

#(set-global-staff-size 16.0)

\layout {
  \compressFullBarRests
  \context {
    \Score
    \override BarNumber #'font-size = #1
    \override BarNumber #'padding = #3
  }
}

\include "../defs.ly"
\include "defs.ly"
\include "violin1_defs.ly"

\include "i-violin1.ly"

\score {
  \new Staff <<
%    \override Score.BarNumber #'padding = #3
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violin I"

    \timeI
    \violinIFirstMov
    \new Voice = "breaks" { \violinIBreakI }
    \new Voice = "markings" { \markingsI }
    \new Voice = "override" { \violinIOverridesI }
  >>

  \include "i-midi.ly"
  \header {
    piece = \headerI
  }
  \layout {}
}

\include "ii-violin1.ly"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violin I"

    \timeII
    \violinISecondMov
    \new Voice = "breaks" { \violinIBreakII }
    \new Voice = "markings" { \markingsII }
    \new Voice = "override" { \violinIOverridesII }
  >>

  \include "ii-midi.ly"

  \header {
    piece = \headerII
    breakbefore = \violinIBreakBeforeII
  }

  \layout {}
}

\include "iii-violin1.ly"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violin I"

    \timeIII
    \violinIThirdMov
    \new Voice = "breaks" { \violinIBreakIII }
    \new Voice = "markings" { \markingsIII }
    \new Voice = "override" { \violinIOverridesIII }
  >>

  \include "iii-midi.ly"

  \header {
    piece = \headerIII
    breakbefore = \violinIBreakBeforeIII
  }

  \layout {}
}

\include "iv-violin1.ly"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violin I"

    \timeIV
    \violinIFourthMov
    \new Voice = "breaks" { \violinIBreakIV }
    \new Voice = "markings" { \markingsIV }
    \new Voice = "override" { \violinIOverridesIV }
  >>

  \include "iv-midi.ly"

  \header {
    piece = \headerIV
    breakbefore = \violinIBreakBeforeIV
  }

  \layout {}
}
