% -*- LilyPond -*-

\version "2.6.0"

markingsI = {}
markingsII = {}
markingsIII = {}
markingsIV = {}

celloBreakBeforeII = ##f
celloBreakBeforeIII = ##f
celloBreakBeforeIV = ##f

celloBreakI = {}
celloBreakII = {}
celloBreakIII = {}
celloBreakIV = {}

celloOverridesI = {}
celloOverridesII = {}
celloOverridesIII = {}
celloOverridesIV = {}

#(set-global-staff-size 16.0)

\include "../defs.ly"
\include "defs.ly"
\include "violoncello_defs.ly"

\include "i-violoncello.ly"

\score {
  \context Staff <<
    \barNumberDefaultStyle
    \override Score.BarNumber #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = #"cello"
    \set Staff.instrument = "Violoncello"

    \timeI
    \celloFirstMov
    \context Voice = "breaks" { \celloBreakI }
    \context Voice = "markings" { \markingsI }
    \context Voice = "override" { \celloOverridesI }
  >>

  \include "i-midi.ly"
  \header {
    piece = \headerI
  }
  \layout {}
}

\include "ii-violoncello.ly"

\score {
  \context Staff <<
    \barNumberDefaultStyle

    \override Score.BarNumber #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = #"cello"
    \set Staff.instrument = "Violoncello"

    \timeII
    \celloSecondMov
    \context Voice = "breaks" { \celloBreakII }
    \context Voice = "markings" { \markingsII }
    \context Voice = "override" { \celloOverridesII }
  >>

  \include "ii-midi.ly"

  \header {
    piece = \headerII
    breakbefore = \celloBreakBeforeII
  }

  \layout {}
}

\include "iii-violoncello.ly"

\score {
  \context Staff <<
    \barNumberDefaultStyle

    \override Score.BarNumber #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = #"cello"
    \set Staff.instrument = "Violoncello"

    \timeIII
    \celloThirdMov
    \context Voice = "breaks" { \celloBreakIII }
    \context Voice = "markings" { \markingsIII }
    \context Voice = "override" { \celloOverridesIII }
  >>

  \include "iii-midi.ly"

  \header {
    piece = \headerIII
    breakbefore = \celloBreakBeforeIII
  }

  \layout {}
}

\include "iv-violoncello.ly"

\score {
  \context Staff <<
    \barNumberDefaultStyle

    \override Score.BarNumber #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = #"cello"
    \set Staff.instrument = "Violoncello"

    \timeIV
    \celloFourthMov
    \context Voice = "breaks" { \celloBreakIV }
    \context Voice = "markings" { \markingsIV }
    \context Voice = "override" { \celloOverridesIV }
  >>

  \include "iv-midi.ly"

  \header {
    piece = \headerIV
    breakbefore = \celloBreakBeforeIV
  }

  \layout {}
}
