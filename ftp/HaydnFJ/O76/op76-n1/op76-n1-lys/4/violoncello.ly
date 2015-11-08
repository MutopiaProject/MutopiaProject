% -*- LilyPond -*-

\version "2.18.0"

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
\include "violoncello_defs.ily"

\include "i-violoncello.ily"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"cello"
    \set Staff.instrumentName = "Violoncello"

    \timeI
    \celloFirstMov
    \new Voice = "breaks" { \celloBreakI }
    \new Voice = "markings" { \markingsI }
    \new Voice = "override" { \celloOverridesI }
  >>

  \include "i-midi.ily"
  \header {
    piece = \headerI
  }
  \layout {}
}

\include "ii-violoncello.ily"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"cello"
    \set Staff.instrumentName = "Violoncello"

    \timeII
    \celloSecondMov
    \new Voice = "breaks" { \celloBreakII }
    \new Voice = "markings" { \markingsII }
    \new Voice = "override" { \celloOverridesII }
  >>

  \include "ii-midi.ily"

  \header {
    piece = \headerII
    breakbefore = \celloBreakBeforeII
  }

  \layout {}
}

\include "iii-violoncello.ily"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"cello"
    \set Staff.instrumentName = "Violoncello"

    \timeIII
    \celloThirdMov
    \new Voice = "breaks" { \celloBreakIII }
    \new Voice = "markings" { \markingsIII }
    \new Voice = "override" { \celloOverridesIII }
  >>

  \include "iii-midi.ily"

  \header {
    piece = \headerIII
    breakbefore = \celloBreakBeforeIII
  }

  \layout {}
}

\include "iv-violoncello.ily"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"cello"
    \set Staff.instrumentName = "Violoncello"

    \timeIV
    \celloFourthMov
    \new Voice = "breaks" { \celloBreakIV }
    \new Voice = "markings" { \markingsIV }
    \new Voice = "override" { \celloOverridesIV }
  >>

  \include "iv-midi.ily"

  \header {
    piece = \headerIV
    breakbefore = \celloBreakBeforeIV
  }

  \layout {}
}
