\version "2.11.14"

\include "OboesMvtII.lyi"
\include "HornMvtII.lyi"
\include "ViolinIMvtII.lyi"
\include "ViolinIIMvtII.lyi"
\include "ViolaMvtII.lyi"
\include "BassMvtII.lyi"

instrument = "Orchestra"

\paper
{
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
        \set Staff.instrumentName = "Oboi"
        %\set Staff.shortInstrumentName = "Ob"
        \oboesMvtII
      }
      \new Staff
      {
        \set Staff.instrumentName = "Corno Principale in Es"
        %\set Staff.shortInstrumentName = "Cor"
        << \hornMvtII \outlineMvtII >>
      }
      \new GrandStaff
      <<
        \new Staff
        {
          \set Staff.instrumentName = "Violin I"
          %\set Staff.shortInstrumentName = "Vn I"
          \violinIMvtII
        }
        \new Staff
        {
          \set Staff.instrumentName = "Violin II"
          %\set Staff.shortInstrumentName = "Vn II"
          \violinIIMvtII
        }
      >>
      \new Staff
      {
        \set Staff.instrumentName = "Viola"
        %\set Staff.shortInstrumentName = "Va"
        \violaMvtII
      }
      \new Staff
      {
        \set Staff.instrumentName = "Basso"
        %\set Staff.shortInstrumentName = "Ba"
        \bassMvtII
      }
    >>
    \layout{}
  }
  \score
  {
    \unfoldRepeats
    {
      <<
        \new Staff
        {
          \set Staff.midiInstrument = "oboe"
          \oboesMvtII
        }
        \new Staff
        {
          \set Staff.midiInstrument = "french horn"
          << \hornMvtII \outlineMvtII >>
        }
        \new Staff
        {
          \set Staff.midiInstrument = "violin"
          \violinIMvtII
        }
        \new Staff
        {
          \set Staff.midiInstrument = "violin"
          \violinIIMvtII
        }
        \new Staff
        {
          \set Staff.midiInstrument = "viola"
          \violaMvtII
        }
        \new Staff
        {
          \set Staff.midiInstrument = "cello"
          \bassMvtII
        }
      >>
    }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 280 8)
      }
    }
  }
}

