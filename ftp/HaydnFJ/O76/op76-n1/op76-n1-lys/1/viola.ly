% -*- LilyPond -*-

\version "2.16.0"

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
    \override BarNumber #'font-size = #1
    \override BarNumber #'padding = #3
  }
}

\include "../defs.ly"
\include "defs.ly"
\include "viola_defs.ly"

\include "i-viola.ly"

\score {
  \new Staff <<
%    \override Score.BarNumber #'padding = #3
    \set Staff.midiInstrument = #""
    \set Staff.instrumentName = "Viola"

    \timeI
    \violaFirstMov
    \new Voice = "breaks" { \violaBreakI }
    \new Voice = "markings" { \markingsI }
    \new Voice = "override" { \violaOverridesI }
  >>

  \include "i-midi.ly"
  \header {
    piece = \headerI
  }
  \layout {}
}

\include "ii-viola.ly"

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

  \include "ii-midi.ly"

  \header {
    piece = \headerII
    breakbefore = \violaBreakBeforeII
  }

  \layout {}
}

\include "iii-viola.ly"

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

  \include "iii-midi.ly"

  \header {
    piece = \headerIII
    breakbefore = \violaBreakBeforeIII
  }

  \layout {}
}

\include "iv-viola.ly"

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

  \include "iv-midi.ly"

  \header {
    piece = \headerIV
    breakbefore = \violaBreakBeforeIV
  }

  \layout {}
}
