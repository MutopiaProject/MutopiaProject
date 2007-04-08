% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

pianoLayout = \layout {
    \context {
	\type "Engraver_group_engraver"
	\name Dynamics
	\alias Voice % So that \cresc works, for example.
	\consists "Output_property_engraver"
	
	minimumVerticalExtent = #'(-3 . 1.5)
	pedalSustainStrings = #'("Ped." "*Ped." "*")
	pedalUnaCordaStrings = #'("una corda" "" "tre corde")
	
	\consists "Piano_pedal_engraver"
	\consists "Script_engraver"
	\consists "Dynamic_engraver"
	\consists "Text_engraver"
	
	\override TextScript #'font-shape = #'italic
	\override TextScript #'extra-offset = #'(0 . 1.0)
	\override DynamicText #'extra-offset = #'(0 . 2.5)
	\override Hairpin #'extra-offset = #'(0 . 2.5)
	
	\consists "Skip_event_swallow_translator"
	
	\consists "Axis_group_engraver"
    }
    \context {
	\PianoStaff
	\accepts Dynamics
	\override VerticalAlignment #'forced-distance = #12
    }
}
