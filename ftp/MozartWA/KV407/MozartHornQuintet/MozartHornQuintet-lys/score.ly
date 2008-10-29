\version "2.11.62"

\include "defs.lyi"
\include "horn_notes.lyi"
\include "violin_notes.lyi"
\include "viola1_notes.lyi"
\include "viola2_notes.lyi"
\include "cello_notes.lyi"

\paper
{
  %#(define page-breaking ly:minimal-breaking)
  %#(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##f
  between-system-space = 0.5\cm
  between-system-padding = #0
  page-limit-inter-system-space = ##t
  page-limit-inter-system-space-factor = 1.5
}

#(set-global-staff-size 16)

instrument = "Score"

spacerIItoIII = {s8*3}

\book
{
  \include "header.lyi"
  \score
  {
    \new StaffGroup
    <<
      \new Staff
      {
        \set Staff.instrumentName = "Horn"
        %\set Staff.shortInstrumentName = "Hn."
        << \hornMvtI \outlineMvtI >>
      }
      \new Staff
      {
        \set Staff.instrumentName = "Violin"
        %\set Staff.shortInstrumentName = "Vl."
        \violinMvtI
      }
      \new Staff
      {
        \set Staff.instrumentName = "Viola I"
        %\set Staff.shortInstrumentName = "Va.I"
        \violaOneMvtI
      }
      \new Staff
      {
        \set Staff.instrumentName = "Viola II"
        %\set Staff.shortInstrumentName = "Va.II"
        \violaTwoMvtI
      }
      \new Staff
      {
        \set Staff.instrumentName = "Cello"
        %\set Staff.shortInstrumentName = "Vc."
        \celloMvtI
      }
    >>
  }
  \score
  {
    \new StaffGroup
    <<
      \new Staff
      {
        \set Staff.instrumentName = "Horn"
        %\set Staff.shortInstrumentName = "Hn."
        << \hornMvtII \outlineMvtII >>
      }
      \new Staff
      {
        \set Staff.instrumentName = "Violin"
        %\set Staff.shortInstrumentName = "Vl."
        \violinMvtII
      }
      \new Staff
      {
        \set Staff.instrumentName = "Viola I"
        %\set Staff.shortInstrumentName = "Va.I"
        \violaOneMvtII
      }
      \new Staff
      {
        \set Staff.instrumentName = "Viola II"
        %\set Staff.shortInstrumentName = "Va.II"
        \violaTwoMvtII
      }
      \new Staff
      {
        \set Staff.instrumentName = "Cello"
        %\set Staff.shortInstrumentName = "Vc."
        \celloMvtII
      }
    >>
  }
  \score
  {
    \new StaffGroup
    <<
      \new Staff
      {
        \set Staff.instrumentName = "Horn"
        %\set Staff.shortInstrumentName = "Hn."
        << \hornMvtIII \outlineMvtIII >>
      }
      \new Staff
      {
        \set Staff.instrumentName = "Violin"
        %\set Staff.shortInstrumentName = "Vl."
        \violinMvtIII
      }
      \new Staff
      {
        \set Staff.instrumentName = "Viola I"
        %\set Staff.shortInstrumentName = "Va.I"
        \violaOneMvtIII
      }
      \new Staff
      {
        \set Staff.instrumentName = "Viola II"
        %\set Staff.shortInstrumentName = "Va.II"
        \violaTwoMvtIII
      }
      \new Staff
      {
        \set Staff.instrumentName = "Cello"
        %\set Staff.shortInstrumentName = "Vc."
        \celloMvtIII
      }
    >>
  }

  \score
  {
    <<
      \new Staff
      {
        << \outlineMvtI \midiOutlineMvtI >>
        << \outlineMvtII \midiOutlineMvtII >>
        \spacerIItoIII
        << \outlineMvtIII \midiOutlineMvtIII >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        \hornMvtI
        \hornMvtII
        \spacerIItoIII
        \hornMvtIII
      }
      \new Staff
      {
        \set Staff.midiInstrument = "string ensemble 1"
        \violinMvtI
        \violinMvtII
        \spacerIItoIII
        \violinMvtIII
      }
      \new Staff
      {
        \set Staff.midiInstrument = "string ensemble 1"
        \violaOneMvtI
        \violaOneMvtII
        \spacerIItoIII
        \violaOneMvtIII
      }
      \new Staff
      {
        \set Staff.midiInstrument = "string ensemble 1"
        \violaTwoMvtI
        \violaTwoMvtII
        \spacerIItoIII
        \violaTwoMvtIII
      }
      \new Staff
      {
        \set Staff.midiInstrument = "string ensemble 1"
        \celloMvtI
        \celloMvtII
        \spacerIItoIII
        \celloMvtIII
      }
    >>
    \midi {}
  }
}

