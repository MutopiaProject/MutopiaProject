% -*- LilyPond -*-

\version "2.16.0"

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
    \override BarNumber #'font-size = #1
    \override BarNumber #'padding = #3
  }
}

\include "../defs.ly"
\include "defs.ly"
\include "violoncello_defs.ly"

\include "i-violoncello.ly"

\score {
  \new Staff <<
%    \override Score.BarNumber #'padding = #3
    \set Staff.midiInstrument = #"cello"
    \set Staff.instrumentName = "Violoncello"

    \timeI
    \celloFirstMov
    \new Voice = "breaks" { \celloBreakI }
    \new Voice = "markings" { \markingsI }
    \new Voice = "override" { \celloOverridesI }
  >>

  \include "i-midi.ly"
  \header {
    piece = \headerI
  }
  \layout {}
}

\include "ii-violoncello.ly"

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

  \include "ii-midi.ly"

  \header {
    piece = \headerII
    breakbefore = \celloBreakBeforeII
  }

  \layout {}
}

\include "iii-violoncello.ly"

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

  \include "iii-midi.ly"

  \header {
    piece = \headerIII
    breakbefore = \celloBreakBeforeIII
  }

  \layout {}
}

\include "iv-violoncello.ly"

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

  \include "iv-midi.ly"

  \header {
    piece = \headerIV
    breakbefore = \celloBreakBeforeIV
  }

  \layout {}
}
