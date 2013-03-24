% -*- LilyPond -*-

\version "2.16.0"

markingsI = {}
markingsII = {}
markingsIII = {}
markingsIV = {}

@LILY_INST@BreakBeforeII = ##f
@LILY_INST@BreakBeforeIII = ##f
@LILY_INST@BreakBeforeIV = ##f

@LILY_INST@BreakI = {}
@LILY_INST@BreakII = {}
@LILY_INST@BreakIII = {}
@LILY_INST@BreakIV = {}

@LILY_INST@OverridesI = {}
@LILY_INST@OverridesII = {}
@LILY_INST@OverridesIII = {}
@LILY_INST@OverridesIV = {}

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
\include "@INST@_defs.ly"

\include "i-@INST@.ly"

\score {
  \new Staff <<
%    \override Score.BarNumber #'padding = #3
    \set Staff.midiInstrument = #"@MIDI_INST@"
    \set Staff.instrumentName = "@STAFF_INST@"

    \timeI
    \@LILY_INST@FirstMov
    \new Voice = "breaks" { \@LILY_INST@BreakI }
    \new Voice = "markings" { \markingsI }
    \new Voice = "override" { \@LILY_INST@OverridesI }
  >>

  \include "i-midi.ly"
  \header {
    piece = \headerI
  }
  \layout {}
}

\include "ii-@INST@.ly"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"@MIDI_INST@"
    \set Staff.instrumentName = "@STAFF_INST@"

    \timeII
    \@LILY_INST@SecondMov
    \new Voice = "breaks" { \@LILY_INST@BreakII }
    \new Voice = "markings" { \markingsII }
    \new Voice = "override" { \@LILY_INST@OverridesII }
  >>

  \include "ii-midi.ly"

  \header {
    piece = \headerII
    breakbefore = \@LILY_INST@BreakBeforeII
  }

  \layout {}
}

\include "iii-@INST@.ly"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"@MIDI_INST@"
    \set Staff.instrumentName = "@STAFF_INST@"

    \timeIII
    \@LILY_INST@ThirdMov
    \new Voice = "breaks" { \@LILY_INST@BreakIII }
    \new Voice = "markings" { \markingsIII }
    \new Voice = "override" { \@LILY_INST@OverridesIII }
  >>

  \include "iii-midi.ly"

  \header {
    piece = \headerIII
    breakbefore = \@LILY_INST@BreakBeforeIII
  }

  \layout {}
}

\include "iv-@INST@.ly"

\score {
  \new Staff <<
    \set Staff.midiInstrument = #"@MIDI_INST@"
    \set Staff.instrumentName = "@STAFF_INST@"

    \timeIV
    \@LILY_INST@FourthMov
    \new Voice = "breaks" { \@LILY_INST@BreakIV }
    \new Voice = "markings" { \markingsIV }
    \new Voice = "override" { \@LILY_INST@OverridesIV }
  >>

  \include "iv-midi.ly"

  \header {
    piece = \headerIV
    breakbefore = \@LILY_INST@BreakBeforeIV
  }

  \layout {}
}
