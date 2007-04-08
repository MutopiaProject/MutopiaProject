\version "2.11.12"

\include "OboesMvtII.lyi"
\include "HornsMvtII.lyi"
\include "HornMvtII.lyi"
\include "ViolinIMvtII.lyi"
\include "ViolinIIMvtII.lyi"
\include "ViolaMvtII.lyi"
\include "BassMvtII.lyi"

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
        \oboesMvtII
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        \set Staff.instrumentName = "Corni in Es"
        %\set Staff.shortInstrumentName = "Cor"
        \hornsMvtII
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        \set Staff.instrumentName = "Corno Principale in Es"
        %\set Staff.shortInstrumentName = "Cor"
        << \hornMvtII \outlineMvtII >>
      }
      \new GrandStaff
      <<
        \new Staff
        {
          \set Staff.midiInstrument = "violin"
          \set Staff.instrumentName = "Violino I"
          %\set Staff.shortInstrumentName = "Vn I"
          \violinIMvtII
        }
        \new Staff
        {
          \set Staff.midiInstrument = "violin"
          \set Staff.instrumentName = "Violino II"
          %\set Staff.shortInstrumentName = "Vn II"
          \violinIIMvtII
        }
      >>
      \new Staff
      {
        \set Staff.midiInstrument = "viola"
        \set Staff.instrumentName = "Viola"
        %\set Staff.shortInstrumentName = "Va"
        \violaMvtII
      }
      \new Staff
      {
        \set Staff.midiInstrument = "cello"
        \set Staff.instrumentName = "Basso"
        %\set Staff.shortInstrumentName = "Ba"
        \bassMvtII
      }
    >>
    \layout{}
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 72 8)
      }
    }
  }
}

