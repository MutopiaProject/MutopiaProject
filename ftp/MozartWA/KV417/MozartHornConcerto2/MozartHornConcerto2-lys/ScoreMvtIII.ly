\version "2.11.12"

\include "OboesMvtIII.lyi"
\include "HornsMvtIII.lyi"
\include "HornMvtIII.lyi"
\include "ViolinIMvtIII.lyi"
\include "ViolinIIMvtIII.lyi"
\include "ViolaMvtIII.lyi"
\include "BassMvtIII.lyi"

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
        \oboesMvtIII
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        \set Staff.instrumentName = "Corni in Es"
        %\set Staff.shortInstrumentName = "Cor"
        \hornsMvtIII
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        \set Staff.instrumentName = "Corno Principale in Es"
        %\set Staff.shortInstrumentName = "Cor"
        << \hornMvtIII \outlineMvtIII >>
      }
      \new GrandStaff
      <<
        \new Staff
        {
          \set Staff.midiInstrument = "violin"
          \set Staff.instrumentName = "Violino I"
          %\set Staff.shortInstrumentName = "Vn I"
          \violinIMvtIII
        }
        \new Staff
        {
          \set Staff.midiInstrument = "violin"
          \set Staff.instrumentName = "Violino II"
          %\set Staff.shortInstrumentName = "Vn II"
          \violinIIMvtIII
        }
      >>
      \new Staff
      {
        \set Staff.midiInstrument = "viola"
        \set Staff.instrumentName = "Viola"
        %\set Staff.shortInstrumentName = "Va"
        \violaMvtIII
      }
      \new Staff
      {
        \set Staff.midiInstrument = "cello"
        \set Staff.instrumentName = "Basso"
        %\set Staff.shortInstrumentName = "Ba"
        \bassMvtIII
      }
    >>
    \layout{}
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 300 8)
      }
    }
  }
}

