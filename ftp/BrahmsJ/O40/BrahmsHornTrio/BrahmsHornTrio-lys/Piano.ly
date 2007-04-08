\version "2.9.24"

\include "PianoMvtI.lyi"
\include "PianoDynamicsMvtI.lyi"
\include "PianoDynamicsMvtII.lyi"
\include "PianoDynamicsMvtIII.lyi"
\include "PianoDynamicsMvtIV.lyi"
\include "PianoMvtII.lyi"
\include "PianoMvtIII.lyi"
\include "PianoMvtIV.lyi"
\include "HornMvtI.lyi"
\include "HornMvtII.lyi"
\include "HornMvtIII.lyi"
\include "HornMvtIV.lyi"
\include "ViolinMvtI.lyi"
\include "ViolinMvtII.lyi"
\include "ViolinMvtIII.lyi"
\include "ViolinMvtIV.lyi"

instrument = "Piano"
threeToFourPadding = {r8*5}

\paper
{
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
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
      { \hornMvtI }
      \new Staff
      \with
      {
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      }
      { \violinMvtI }
      \new PianoStaff \with {\consists "Span_arpeggio_engraver"}
      <<
        \new Staff="RH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          \pianoRightMvtI
        }

        \new Dynamics = "dynamics" \pianoDynamicsMvtI

        \new Staff="LH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          << \pianoLeftMvtI \pianoPedalsMvtI >>
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
        \override TextScript #'extra-offset = #'(0 . 1.75)
        \override DynamicText #'extra-offset = #'(0 . 2.5)
        \override Hairpin #'extra-offset = #'(0 . 2.5)

        \consists "Skip_event_swallow_translator"

        \consists "Axis_group_engraver"
      }
      \context
      {
        \PianoStaff
        \accepts Dynamics
        \override VerticalAlignment #'forced-distance = #7
      }
    }
    \header { piece = " " }
  }

%-----------------------------------------------------------------------------

  \score
  {
    <<
      \new Staff
      \with
      {
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      }
      { \hornMvtII }
      \new Staff
      \with
      {
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      }
      { \violinMvtII }
      \new PianoStaff
      <<
        \new Staff="RH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          \pianoRightMvtII
        }

        \new Dynamics = "dynamics" \pianoDynamicsMvtII

        \new Staff="LH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          << \pianoLeftMvtII \pianoPedalsMvtII >>
        }

        %\new Dynamics = "pedals" \pianoPedalsMvtII

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
        \override TextScript #'extra-offset = #'(0 . 1.75)
        \override DynamicText #'extra-offset = #'(0 . 2.5)
        \override Hairpin #'extra-offset = #'(0 . 2.5)

        \consists "Skip_event_swallow_translator"

        \consists "Axis_group_engraver"
      }
      \context
      {
        \PianoStaff
        \accepts Dynamics
        \override VerticalAlignment #'forced-distance = #7
      }
    }
    \header { piece = "Scherzo" }
  }

%-----------------------------------------------------------------------------

  \score
  {
    <<
      \new Staff
      \with
      {
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      }
      { \hornMvtIII }
      \new Staff
      \with
      {
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      }
      { \violinMvtIII }
      \new PianoStaff
      <<
        \new Staff="RH" \with {\consists "Span_arpeggio_engraver"}
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          \pianoRightMvtIII
        }

        \new Dynamics = "dynamics" \pianoDynamicsMvtIII

        \new Staff="LH" \with {\consists "Span_arpeggio_engraver"}
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          << \pianoLeftMvtIII \pianoPedalsMvtIII >>
        }

        %\new Dynamics = "pedals" \pianoPedalsMvtIII

        \outlineMvtIII
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
        \override TextScript #'extra-offset = #'(0 . 1.75)
        \override DynamicText #'extra-offset = #'(0 . 2.5)
        \override Hairpin #'extra-offset = #'(0 . 2.5)

        \consists "Skip_event_swallow_translator"

        \consists "Axis_group_engraver"
      }
      \context
      {
        \PianoStaff
        \accepts Dynamics
        \override VerticalAlignment #'forced-distance = #7
      }
    }
    \header { piece = " " }
  }

%-----------------------------------------------------------------------------

  \score
  {
    <<
      \new Staff
      \with
      {
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      }
      { \hornMvtIV }
      \new Staff
      \with
      {
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      }
      { \violinMvtIV }
      \new PianoStaff
      <<
        \new Staff="RH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          \pianoRightMvtIV
        }

        \new Dynamics = "dynamics" \pianoDynamicsMvtIV

        \new Staff="LH"
        {
          #(set-accidental-style 'modern)
          \set Staff.extraNatural = ##f
          \pianoLeftMvtIV
        }

        \outlineMvtIV
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
        \override TextScript #'extra-offset = #'(0 . 1.75)
        \override DynamicText #'extra-offset = #'(0 . 2.5)
        \override Hairpin #'extra-offset = #'(0 . 2.5)

        \consists "Skip_event_swallow_translator"

        \consists "Axis_group_engraver"
      }
      \context
      {
        \PianoStaff
        \accepts Dynamics
        \override VerticalAlignment #'forced-distance = #7
      }
    }
    \header { piece = "Finale" }
  }

%-----------------------------------------------------------------------------

  %midi
  \score
  {
    <<
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        \hornMvtI
        \hornMvtII
        \hornMvtIII
        \threeToFourPadding
        \hornMvtIV
      }
      \new Staff
      {
        \set Staff.midiInstrument = "violin"
        \violinMvtI
        \violinMvtII
        \violinMvtIII
        \threeToFourPadding
        \violinMvtIV
      }
      \new PianoStaff
      <<
        \new Staff="RH"
        {
          << \pianoRightMvtI \pianoDynamicsMvtI \pianoPedalsMvtI >>
          << \pianoRightMvtII \pianoDynamicsMvtII \pianoPedalsMvtII >>
          << \pianoRightMvtIII \pianoDynamicsMvtIII \pianoPedalsMvtIII >>
          \threeToFourPadding
          << \pianoRightMvtIV \pianoDynamicsMvtIV >>
        }
        \new Staff="LH"
        {
          << \pianoLeftMvtI \pianoDynamicsMvtI \pianoPedalsMvtI >>
          << \pianoLeftMvtII \pianoDynamicsMvtII \pianoPedalsMvtII >>
          << \pianoLeftMvtIII \pianoDynamicsMvtIII \pianoPedalsMvtIII >>
          \threeToFourPadding
          << \pianoLeftMvtIV \pianoDynamicsMvtIV >>
        }
      >>
      {
        << \midiOutlineMvtI \outlineMvtI >>
        << \midiOutlineMvtII \outlineMvtII >>
        << \midiOutlineMvtIII \outlineMvtIII >>
        \threeToFourPadding
        << \midiOutlineMvtIV \outlineMvtIV >>
      }
    >>
    \midi { }
  }
}

