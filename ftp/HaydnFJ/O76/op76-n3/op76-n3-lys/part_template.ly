% -*- LilyPond -*-

\version "2.6.0"

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

\include "../defs.ly"
\include "defs.ly"
\include "@INST@_defs.ly"

\include "i-@INST@.ly"

\score {
  \context Staff <<
    \barNumberDefaultStyle
    \override Score.BarNumber #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = #"@MIDI_INST@"
    \set Staff.instrument = "@STAFF_INST@"

    \timeI
    \@LILY_INST@FirstMov
    \context Voice = "breaks" { \@LILY_INST@BreakI }
    \context Voice = "markings" { \markingsI }
    \context Voice = "override" { \@LILY_INST@OverridesI }
  >>

  \include "i-midi.ly"
  \header {
    piece = \headerI
  }
  \layout {}
}

\include "ii-@INST@.ly"

\score {
  \context Staff <<
    \barNumberDefaultStyle

    \override Score.BarNumber #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = #"@MIDI_INST@"
    \set Staff.instrument = "@STAFF_INST@"

    \timeII
    \@LILY_INST@SecondMov
    \context Voice = "breaks" { \@LILY_INST@BreakII }
    \context Voice = "markings" { \markingsII }
    \context Voice = "override" { \@LILY_INST@OverridesII }
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
  \context Staff <<
    \barNumberDefaultStyle

    \override Score.BarNumber #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = #"@MIDI_INST@"
    \set Staff.instrument = "@STAFF_INST@"

    \timeIII
    \@LILY_INST@ThirdMov
    \context Voice = "breaks" { \@LILY_INST@BreakIII }
    \context Voice = "markings" { \markingsIII }
    \context Voice = "override" { \@LILY_INST@OverridesIII }
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
  \context Staff <<
    \barNumberDefaultStyle

    \override Score.BarNumber #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = #"@MIDI_INST@"
    \set Staff.instrument = "@STAFF_INST@"

    \timeIV
    \@LILY_INST@FourthMov
    \context Voice = "breaks" { \@LILY_INST@BreakIV }
    \context Voice = "markings" { \markingsIV }
    \context Voice = "override" { \@LILY_INST@OverridesIV }
  >>

  \include "iv-midi.ly"

  \header {
    piece = \headerIV
    breakbefore = \@LILY_INST@BreakBeforeIV
  }

  \layout {}
}
