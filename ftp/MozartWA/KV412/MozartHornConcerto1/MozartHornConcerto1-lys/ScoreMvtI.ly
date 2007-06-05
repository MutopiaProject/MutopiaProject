\version "2.11.14"

\include "OboesMvtI.lyi"
\include "BassoonsMvtI.lyi"
\include "HornMvtI.lyi"
\include "ViolinIMvtI.lyi"
\include "ViolinIIMvtI.lyi"
\include "ViolaMvtI.lyi"
\include "BassMvtI.lyi"

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
        \oboesMvtI
      }
      \new Staff
      {
        \set Staff.instrumentName = "Fagotti"
        %\set Staff.shortInstrumentName = "Fg"
        \bassoonsMvtI
      }
      \new Staff
      {
        \set Staff.instrumentName = "Corno Principale in D"
        %\set Staff.shortInstrumentName = "Cor"
        << \hornMvtI \outlineMvtI >>
      }
      \new GrandStaff
      <<
        \new Staff
        {
          \set Staff.instrumentName = "Violino I"
          %\set Staff.shortInstrumentName = "Vn I"
          \violinIMvtI
        }
        \new Staff
        {
          \set Staff.instrumentName = "Violino II"
          %\set Staff.shortInstrumentName = "Vn II"
          \violinIIMvtI
        }
      >>
      \new Staff
      {
        \set Staff.instrumentName = "Viola"
        %\set Staff.shortInstrumentName = "Va"
        \violaMvtI
      }
      \new Staff
      {
        \set Staff.instrumentName = "Basso"
        %\set Staff.shortInstrumentName = "Ba"
        \bassMvtI
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
          \oboesMvtI
        }
        \new Staff
        {
          \set Staff.midiInstrument = "bassoon"
          \bassoonsMvtI
        }
        \new Staff
        {
          \set Staff.midiInstrument = "french horn"
          << \hornMvtI \outlineMvtI >>
        }
        \new Staff
        {
          \set Staff.midiInstrument = "violin"
          \violinIMvtI
        }
        \new Staff
        {
          \set Staff.midiInstrument = "violin"
          \violinIIMvtI
        }
        \new Staff
        {
          \set Staff.midiInstrument = "viola"
          \violaMvtI
        }
        \new Staff
        {
          \set Staff.midiInstrument = "cello"
          \bassMvtI
        }
      >>
    }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
  }
}

