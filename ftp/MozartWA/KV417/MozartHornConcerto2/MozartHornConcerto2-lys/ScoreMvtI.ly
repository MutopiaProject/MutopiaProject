\version "2.11.12"

\include "OboesMvtI.lyi"
\include "HornsMvtI.lyi"
\include "HornMvtI.lyi"
\include "ViolinIMvtI.lyi"
\include "ViolinIIMvtI.lyi"
\include "ViolaMvtI.lyi"
\include "BassMvtI.lyi"

instrument = "Orchestra"

\paper
{
  %between-system-padding = #0.1
  %between-system-space = #0.1
  ragged-last-bottom = ##f
}

#(set-global-staff-size 18)

\book
{
  \include "Header.lyi"
  \score
  {
    \new StaffGroup
    <<
      \new Staff
      {
        \set Staff.midiInstrument = "oboe"
        \set Staff.instrumentName = "Oboi"
        %\set Staff.shortInstrumentName = "Ob"
        \oboesMvtI
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        \set Staff.instrumentName = "Corni in Es"
        %\set Staff.shortInstrumentName = "Cor"
        \hornsMvtI
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        \set Staff.instrumentName = "Corno Principale in Es"
        %\set Staff.shortInstrumentName = "Cor"
        << \hornMvtI \outlineMvtI >>
      }
      \new GrandStaff
      <<
        \new Staff
        {
          \set Staff.midiInstrument = "violin"
          \set Staff.instrumentName = "Violino I"
          %\set Staff.shortInstrumentName = "Vn I"
          \violinIMvtI
        }
        \new Staff
        {
          \set Staff.midiInstrument = "violin"
          \set Staff.instrumentName = "Violino II"
          %\set Staff.shortInstrumentName = "Vn II"
          \violinIIMvtI
        }
      >>
      \new Staff
      {
        \set Staff.midiInstrument = "viola"
        \set Staff.instrumentName = "Viola"
        %\set Staff.shortInstrumentName = "Va"
        \violaMvtI
      }
      \new Staff
      {
        \set Staff.midiInstrument = "cello"
        \set Staff.instrumentName = "Basso"
        %\set Staff.shortInstrumentName = "Ba"
        \bassMvtI
      }
    >>
    \layout{}
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 108 4)
      }
    }
  }
}

