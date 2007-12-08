\version "2.11.34"

\include "PianoNotesMvtI.lyi"
\include "PianoNotesMvtII.lyi"
\include "HornMvtI.lyi"
\include "HornMvtII.lyi"
\include "defs.lyi"

instrument = "Piano"

\paper
{
  #(define page-breaking ly:page-turn-breaking)
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
      {
        #(set-accidental-style 'modern)
        \hornMvtI
      }
      \new PianoStaff
      <<
        \new Staff="RH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          \pianoMvtIRight
        }

        \new Dynamics = "dynamics" \pianoMvtIDynamics

        \new Staff="LH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          << \pianoMvtILeft \pianoMvtIPedals >>
        }

        %\new Dynamics = "pedals" \pianoPedalsMvtI

        \outlineMvtI
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

        \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
        pedalSustainStrings = #'("Ped." "*Ped." "*")
        pedalUnaCordaStrings = #'("una corda" "" "tre corde")

        \consists "Piano_pedal_engraver"
        \consists "Script_engraver"
        \consists "Dynamic_engraver"
        \consists "Text_engraver"

        %\override TextScript #'font-size = #2
        %\override TextScript #'font-shape = #'italic
        %\override TextScript #'extra-offset = #'(0 . 1.75)
        %\override DynamicTextSpanner #'extra-offset = #'(0 . 1.75)
        %\override DynamicText #'extra-offset = #'(0 . 2.5)
        %\override Hairpin #'extra-offset = #'(0 . 2.5)

        \consists "Skip_event_swallow_translator"

        \consists "Axis_group_engraver"
      }
      \context
      {
        \PianoStaff
        \accepts Dynamics
        %\override VerticalAlignment #'forced-distance = #7
      }
    }
    \header { piece = " " }
  }
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
        #(set-accidental-style 'modern)
        \hornMvtII
      }
      \new PianoStaff
      <<
        \new Staff="RH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          \pianoMvtIIRight
        }

        \new Dynamics = "dynamics" \pianoMvtIIDynamics

        \new Staff="LH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          << \pianoMvtIILeft \pianoMvtIIPedals >>
        }

        %\new Dynamics = "pedals" \pianoPedalsMvtI

        \outlineMvtII
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

        \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
        pedalSustainStrings = #'("Ped." "*Ped." "*")
        pedalUnaCordaStrings = #'("una corda" "" "tre corde")

        \consists "Piano_pedal_engraver"
        \consists "Script_engraver"
        \consists "Dynamic_engraver"
        \consists "Text_engraver"

        %\override TextScript #'font-size = #2
        %\override TextScript #'font-shape = #'italic
        %\override TextScript #'extra-offset = #'(0 . 1.75)
        %\override DynamicTextSpanner #'extra-offset = #'(0 . 1.75)
        %\override DynamicText #'extra-offset = #'(0 . 2.5)
        %\override Hairpin #'extra-offset = #'(0 . 2.5)

        \consists "Skip_event_swallow_translator"

        \consists "Axis_group_engraver"
      }
      \context
      {
        \PianoStaff
        \accepts Dynamics
        %\override VerticalAlignment #'forced-distance = #7
      }
    }
    \header { piece = " " }
  }

  %midi
  \score
  {
    <<
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        \hornMvtI
        \spacer
        \hornMvtII
      }
      \new PianoStaff
      <<
        \new Staff="RH"
        {
          << \pianoMvtIRight \pianoMvtIDynamics \pianoMvtIPedals >>
          \spacer
          << \pianoMvtIIRight \pianoMvtIIDynamics \pianoMvtIIPedals >>
        }
        \new Staff="LH"
        {
          << \pianoMvtILeft \pianoMvtIDynamics \pianoMvtIPedals >>
          \spacer
          << \pianoMvtIILeft \pianoMvtIIDynamics \pianoMvtIIPedals >>
        }
      >>
      {
        << \midiOutlineMvtI \outlineMvtI >>
        \spacer
        << \midiOutlineMvtII \outlineMvtII >>
      }
    >>
    \midi { }
  }
}

