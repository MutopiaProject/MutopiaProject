\version "2.11.37"

\include "horn_notes.lyi"
\include "voice_notes.lyi"
\include "piano_notes.lyi"
\include "defs.lyi"

instrument = "Piano"

\paper
{
  %between-system-space = #0.0
  %between-system-padding = #0.0
  ragged-last-bottom = ##f
  %ragged-bottom = ##f
  system-count = 66
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
        \set Staff.instrumentName = "Horn in E"
        #(set-accidental-style 'modern)
        \horn
      }
      \new Staff
      \with
      {
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      }
      {
        \set Staff.midiInstrument = "voice oohs"
        \set Staff.instrumentName = "Voice"
        #(set-accidental-style 'modern)
        \new Voice = "singstimme" \voice
      }
      \new Lyrics \lyricsto "singstimme"
      {
        \override Score . LyricText #'font-size = #-0.5
        \text
      }
      \new PianoStaff
      <<
        \set PianoStaff.instrumentName = "Piano"
        \new Staff="RH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          << \right \dynamics >>
        }

        %\new Dynamics = "dynamics" \dynamics

        \new Staff="LH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          << \left \pedals \outline >>
        }

        %\new Dynamics = "pedals" \pedals
      >>
    >>
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 108 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

