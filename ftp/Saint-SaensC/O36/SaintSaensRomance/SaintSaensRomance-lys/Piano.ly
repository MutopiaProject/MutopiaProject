\version "2.11.34"

\include "defs.lyi"
\include "HornNotes.lyi"
\include "PianoNotes.lyi"

\paper
{
  #(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##f
}

instrument = "Piano"
\include "Header.lyi"
\score
{
  <<
    \new Staff = horn
    \with
    {
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
    }
    {
      #(set-accidental-style 'modern)
      \horn
    }
    \new PianoStaff
    <<
      \set PianoStaff.connectArpeggios = ##t
      \new Staff
      {
        %NOTE: Rests and notes were too close to the barline. This is inserted
        %to correct the spacing (specifically next-note).
        \override Staff.BarLine #'space-alist = #'((time-signature extra-space . 0.75) (custos minimum-space . 2.0) (clef minimum-space . 1.0) (key-signature extra-space . 1.0) (first-note fixed-space . 1.3) (next-note semi-fixed-space . 5.0) (right-edge extra-space . 0.0))
        #(set-accidental-style 'modern)
        \right
      }
      \new Dynamics = "dynamics" \dynamics
      \new Staff
      {
        #(set-accidental-style 'modern)
        \left
      }
      %\new Dynamics = "pedals" \pedals
      \outline
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
      \consists "Text_spanner_engraver"

      %\override TextScript #'font-size = #2
      %\override TextScript #'font-shape = #'italic
      %\override TextScript #'extra-offset = #'(0 . 1.75)
      %\override DynamicText #'extra-offset = #'(0 . 2.5)
      %\override DynamicTextSpanner #'extra-offset = #'(0 . 2.5)
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
}

\score
{
  <<
    \new Staff
    {
      \set Staff.midiInstrument = "french horn"
      \horn
    }
    \new PianoStaff
    <<
      \new Staff="RH" { << \right \dynamics >> }
      \new Staff="LH" { << \left \dynamics >> }
    >>
    << \outline >>
  >>
  \midi { }
}

