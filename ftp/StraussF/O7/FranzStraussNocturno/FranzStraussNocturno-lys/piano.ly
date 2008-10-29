\version "2.11.62"

\include "horn_notes.lyi"
\include "piano_notes.lyi"
\include "defs.lyi"

instrument = "Piano"

\paper
{
  ragged-last-bottom = ##f
}

#(set-global-staff-size 18)

\book
{
  \include "header.lyi"
  \score
  {
    <<
      \new Staff
      \with
      {
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      }
      {
        \set Staff.midiInstrument = "french horn"
        \set Staff.instrumentName = "Horn in F"
        #(set-accidental-style 'modern)
        \horn
      }
      \new PianoStaff
      <<
        \set PianoStaff.instrumentName = "Piano"
        \set PianoStaff.connectArpeggios = ##t
        \new Staff="RH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          << \righthand \dynamics \outline >>
        }

        \new Staff="LH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          << \lefthand \pedals >>
        }
      >>
    >>
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

