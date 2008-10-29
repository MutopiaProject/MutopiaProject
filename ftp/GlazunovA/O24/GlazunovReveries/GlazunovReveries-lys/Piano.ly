\version "2.11.62"

\include "PianoNotes.lyi"
\include "HornNotes.lyi"
\include "defs.lyi"

instrument = "Piano"

\paper
{
  %#(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##f
}

\book
{
  \include "Header.lyi"
  \score
  {
    <<
      \new Staff
      \with
      {
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      }
      { \horn }
      \new PianoStaff
      <<
        \set PianoStaff.connectArpeggios = ##t
        #(override-auto-beam-setting '(end 1 12 * *) 3 12 'Score)
        #(override-auto-beam-setting '(end 1 12 * *) 6 12 'Score)
        \new Staff="RH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          \pianoRight
        }

        \new Dynamics = "dynamics" \pianoDynamics

        \new Staff="LH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          << \pianoLeft \pianoPedals \outline >>
        }

        %\new Dynamics = "pedals" \pianoPedalsMvtI
      >>
    >>
    \layout
    {
      \context
      {
        \type "Engraver_group"
        \name "Dynamics"
        \alias Voice
        \consists "Output_property_engraver"
        \consists "Piano_pedal_engraver"
        \consists "Script_engraver"
        \consists "New_dynamic_engraver"
        \consists "Dynamic_align_engraver"
        \consists "Text_engraver"
        \consists "Skip_event_swallow_translator"
        \consists "Axis_group_engraver"

        pedalSustainStrings = #'("Ped." "*Ped." "*")
        pedalUnaCordaStrings = #'("una corda" "" "tre corde")
        \override DynamicLineSpanner #'Y-offset = #0
        %\override TextScript #'font-size = #2
        \override TextScript #'font-shape = #'italic
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
      }
      \context
      {
        \PianoStaff
        \accepts Dynamics
      }
    }
  }

  %midi
  \score
  {
    \unfoldRepeats
    <<
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        \horn
      }
      \new PianoStaff
      <<
        \new Staff="RH"
        {
          << \pianoRight \pianoDynamics \pianoPedals >>
        }
        \new Staff="LH"
        {
          << \pianoLeft \pianoDynamics \pianoPedals >>
        }
      >>
      {
        << \midiOutline \outline >>
      }
    >>
    \midi
    {
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

