% -*- LilyPond -*-

\version "2.16.0"

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
    \override BarNumber #'font-size = #1
    \override BarNumber #'padding = #3
  }
}

\include "../defs.ly"
\include "defs.ly"
\include "violin2_defs.ly"

\include "i-violin2.ly"

\score {
  \new Staff <<
%    \override Score.BarNumber #'padding = #3
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violin II"

    \timeI
    \violinIIFirstMov
    \new Voice = "breaks" { \violinIIBreakI }
    \new Voice = "markings" { \markingsI }
    \new Voice = "override" { \violinIIOverridesI }
  >>

  \include "i-midi.ly"
  \header {
    piece = \headerI
  }
  \layout {}
}

\include "ii-violin2.ly"

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

  \include "ii-midi.ly"

  \header {
    piece = \headerII
    breakbefore = \violinIIBreakBeforeII
  }

  \layout {}
}

\include "iii-violin2.ly"

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

  \include "iii-midi.ly"

  \header {
    piece = \headerIII
    breakbefore = \violinIIBreakBeforeIII
  }

  \layout {}
}

\include "iv-violin2.ly"

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

  \include "iv-midi.ly"

  \header {
    piece = \headerIV
    breakbefore = \violinIIBreakBeforeIV
  }

  \layout {}
}
