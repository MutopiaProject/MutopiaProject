%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                         L A Y O U T   S E C T I O N                         #
%###############################################################################
#(set-global-staff-size 13) %13
%#(ly:set-option 'debug-skylines #t)
\layout {
	#(layout-set-staff-size 13) %13
	\set Score.alternativeNumberingStyle = #'numbers
	\set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
	\set Staff.soloText = #"1."
	\set Staff.soloIIText = #"2."
%	\mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
	\context {
		\Voice
		\override TupletBracket.bracket-visibility = ##f
		\override TupletNumber.avoid-slur = #'ignore
		\override Hairpin.to-barline = ##f
		\override TrillSpanner.bound-details.right.padding = #1.5
		\override Fingering.avoid-slur = #'around
		%\override Script.staff-padding = #'()
		\override Hairpin.height = #0.55
		\override TextScript.font-size = #0
	}
	\context {
		\Staff
		\consists #Measure_counter_engraver
		\override TupletBracket.staff-padding = ##f
		\override Fingering.staff-padding = #'()
		%\override Script.staff-padding = ##f
		\override MultiMeasureRest.space-increment = 1
		\RemoveEmptyStaves
%		\RemoveAllEmptyStaves
	}
	\context {
		\StaffGroup
		\override SystemStartBracket.collapse-height = #4
	}
	\context {
		\Score
		\override RehearsalMark.font-size = #8  % 6
		\override RehearsalMark.extra-spacing-width = #'(-0.3 . 0.3) %0.7
		\override RehearsalMark.outside-staff-priority = ##f
		\override RehearsalMark.extra-spacing-height = #'(-inf.0 . +inf.0)
		\override DynamicTextSpanner.font-size = #0
		\override BarNumber.font-size = #2 %2
		\override MeasureCounter.outside-staff-priority = #390
		\override FootnoteItem.annotation-line = ##f
		\override MetronomeMark.font-size = #2 %1
%		\override NonMusicalPaperColumn.stencil = #ly:paper-column::print
		\override SystemStartBar.collapse-height = #4
%		scriptDefinitions = #my-script-alist
	}
}

layoutHorn = {
	\set Staff.soloText = #"3."
	\set Staff.soloIIText = #"4."
}

