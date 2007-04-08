\version "2.6.0"
\include "global.ly"
\include "primo1.ly"
\include "primo2.ly"
\include "primo3.ly"
\include "secondo1.ly"
\include "secondo2.ly"
\include "secondo3.ly"

\score {
	\new GrandStaff <<
		\override Score.MetronomeMark #'transparent = ##t
		\context PianoStaff=primo << 
 			\set PianoStaff.instrument = "primo"
 			\context Staff=right {\clef G \adagio
				s1*0^\markup{\bold{\hspace #-4.0 Adagio.}}
				\primoRighti 
				\bar "||" \break \allegro
				s1*0^\markup{\bold{\hspace #-4.0 Allegro.}}
				\primoRightii
				\bar "||" \break \adagio
				s1*0^\markup{\bold{\hspace #-4.0 Adagio.}}
				\primoRightiii
			}
			\context Dynamics=dynamicsp {
				\primoDynamicsi
				\primoDynamicsii
				\primoDynamicsiii
			}
		 	\context Staff=left { \clef G \adagio
 				\primoLefti
				\bar "||" \allegro 
				\primoLeftii
				\bar "||" \adagio
				\primoLeftiii
			} 
 		>> %end Staff "primo"
		\context PianoStaff=secondo <<
		 	\set PianoStaff.instrument = \markup{\column{ secondo } \hspace #1 }
		 	\context Staff=rightt {\clef F \adagio
				\secondoRighti 
				\bar "||" \allegro 
				\secondoRightii
				\bar "||" \adagio
				\secondoRightiii
			}
			\context Dynamics=dynamicss {
				\secondoDynamicsi
				\secondoDynamicsii
				\secondoDynamicsiii
			}
			\context Staff=leftt {\clef F \adagio \secondoLefti 
				\bar "||" \allegro 
				\secondoLeftii
				\bar "||" \adagio
				\secondoLeftiii
			}
 		>> %end Staff "secondo"
	>> %end GrandStaff
	\layout {
		\context {
			\name Dynamics
			\type "Engraver_group_engraver"
			\alias Voice
			\consists "Output_property_engraver"

			minimumVerticalExtent = #'(-1 . 1)
			\consists "Script_engraver"
			\consists "Dynamic_engraver"
			\consists "Text_engraver"

			\override TextScript #'font-size = #2
			\override TextScript #'font-shape = #'italic
			\override TextScript #'extra-offset = #'(0 . 2.5)
			\override DynamicText #'extra-offset = #'(0 . 2.5)
			\override DynamicTextSpanner #'extra-offset = #'(0 . 2.5)
			\override Hairpin #'extra-offset = #'(0 . 2.5)

			\consists "Skip_event_swallow_translator"
			\consists "Axis_group_engraver"
			}
		\context {
			\PianoStaff
			\accepts Dynamics
			\override VerticalAlignment #'forced-distance = #4.9
		}
	} %end layout
	\midi {
		\context {
			\type "Performer_group_performer"
			\name Dynamics
			\consists "Dynamic_performer"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
} %end score
