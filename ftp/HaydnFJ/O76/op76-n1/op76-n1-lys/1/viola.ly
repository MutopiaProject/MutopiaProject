% -*- LilyPond -*-

\version "2.18.0"

markingsI = {}
markingsII = {}
markingsIII = {}
markingsIV = {}

violaBreakBeforeII = ##f
violaBreakBeforeIII = ##f
violaBreakBeforeIV = ##f

violaBreakI = {}
violaBreakII = {}
violaBreakIII = {}
violaBreakIV = {}

violaOverridesI = {}
violaOverridesII = {}
violaOverridesIII = {}
violaOverridesIV = {}

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
\include "viola_defs.ily"

\include "i-viola.ily"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #""
    \set Staff.instrumentName = "Viola"

    \timeI
    \violaFirstMov
    \new Voice = "breaks" { \violaBreakI }
    \new Voice = "markings" { \markingsI }
    \new Voice = "override" { \violaOverridesI }
  >>

  \include "i-midi.ily"
  \header {
    piece = \headerI
  }
  \layout {}
}

\include "ii-viola.ily"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #""
    \set Staff.instrumentName = "Viola"

    \timeII
    \violaSecondMov
    \new Voice = "breaks" { \violaBreakII }
    \new Voice = "markings" { \markingsII }
    \new Voice = "override" { \violaOverridesII }
  >>

  \include "ii-midi.ily"

  \header {
    piece = \headerII
    breakbefore = \violaBreakBeforeII
  }

  \layout {}
}

\include "iii-viola.ily"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #""
    \set Staff.instrumentName = "Viola"

    \timeIII
    \violaThirdMov
    \new Voice = "breaks" { \violaBreakIII }
    \new Voice = "markings" { \markingsIII }
    \new Voice = "override" { \violaOverridesIII }
  >>

  \include "iii-midi.ily"

  \header {
    piece = \headerIII
    breakbefore = \violaBreakBeforeIII
  }

  \layout {}
}

\include "iv-viola.ily"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #""
    \set Staff.instrumentName = "Viola"

    \timeIV
    \violaFourthMov
    \new Voice = "breaks" { \violaBreakIV }
    \new Voice = "markings" { \markingsIV }
    \new Voice = "override" { \violaOverridesIV }
  >>

  \include "iv-midi.ily"

  \header {
    piece = \headerIV
    breakbefore = \violaBreakBeforeIV
  }

  \layout {}
}
