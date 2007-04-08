% -*- LilyPond -*-

\version "2.6.0"

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

\include "../defs.ly"
\include "defs.ly"
\include "viola_defs.ly"

\include "i-viola.ly"

\score {
  \context Staff <<
    \barNumberDefaultStyle
    \override Score.BarNumber #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = #""
    \set Staff.instrument = "Viola"

    \timeI
    \violaFirstMov
    \context Voice = "breaks" { \violaBreakI }
    \context Voice = "markings" { \markingsI }
    \context Voice = "override" { \violaOverridesI }
  >>

  \include "i-midi.ly"
  \header {
    piece = \headerI
  }
  \layout {}
}

\include "ii-viola.ly"

\score {
  \context Staff <<
    \barNumberDefaultStyle

    \override Score.BarNumber #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = #""
    \set Staff.instrument = "Viola"

    \timeII
    \violaSecondMov
    \context Voice = "breaks" { \violaBreakII }
    \context Voice = "markings" { \markingsII }
    \context Voice = "override" { \violaOverridesII }
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
  \context Staff <<
    \barNumberDefaultStyle

    \override Score.BarNumber #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = #""
    \set Staff.instrument = "Viola"

    \timeIII
    \violaThirdMov
    \context Voice = "breaks" { \violaBreakIII }
    \context Voice = "markings" { \markingsIII }
    \context Voice = "override" { \violaOverridesIII }
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
  \context Staff <<
    \barNumberDefaultStyle

    \override Score.BarNumber #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = #""
    \set Staff.instrument = "Viola"

    \timeIV
    \violaFourthMov
    \context Voice = "breaks" { \violaBreakIV }
    \context Voice = "markings" { \markingsIV }
    \context Voice = "override" { \violaOverridesIV }
  >>

  \include "iv-midi.ly"

  \header {
    piece = \headerIV
    breakbefore = \violaBreakBeforeIV
  }

  \layout {}
}
