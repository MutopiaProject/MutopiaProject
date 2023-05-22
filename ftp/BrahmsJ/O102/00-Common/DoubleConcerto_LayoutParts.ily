%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                         S E C T I O N  O P T I O N S                        #
%###############################################################################
\layout {
	#(layout-set-staff-size 20)
	\set Score.alternativeNumberingStyle = #'numbers
%	\set Score.doubleRepeatType = #":|.|:"
	\set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
	\compressMMRests
	\compressEmptyMeasures
	\set Voice.restNumberThreshold = #0
	\context {
		\Voice
		\override TupletBracket.bracket-visibility = ##f
		\override Hairpin.to-barline = ##f
		\override TrillSpanner.bound-details.right.padding = #1
		\override Fingering.avoid-slur = #'around
		\override Arpeggio.padding = #0.25
		\override Script.staff-padding = #'()
		\override Hairpin.height = #0.55
		\override Beam.breakable = ##t
	}
	\context {
		\Staff
		\consists #Measure_counter_engraver
		\override TupletBracket.staff-padding = ##f
		\override Fingering.staff-padding = #'()
		%\override Script.staff-padding = ##f
		\override MultiMeasureRest.space-increment = 1
	}
	\context {
		\Score
		\override RehearsalMark.font-size = #4
		\override RehearsalMark.extra-spacing-width = #'(-0.3 . 0.3) %0.7
		\override RehearsalMark.outside-staff-priority = ##f
		\override RehearsalMark.extra-spacing-height = #'(-inf.0 . +inf.0)
		\override DynamicTextSpanner.font-size = #0
		\override BarNumber.font-size = #0.1
		\override MeasureCounter.outside-staff-priority = #390
		\override FootnoteItem.annotation-line = ##f
		scriptDefinitions = #my-script-alist
	}
}
%layoutPart = \layout {
%	\compressMMRests
%	\compressEmptyMeasures
%	\set Voice.restNumberThreshold = #0
%}
%generalOptions = {
%	\version "2.24.1"
%	\override TupletBracket #'bracket-visibility = ##f
%	\override Hairpin.to-barline = ##f
%	\set Score.alternativeNumberingStyle = #'numbers
%	\set Score.doubleRepeatType = #":|.|:"
%	\set Score.markFormatter = #format-mark-box-alphabet
%	\override Score.RehearsalMark #'font-size = #4
%	\compressFullBarRests
%}
%partOptions = {
%	\override Score.BarNumber #'font-size = #0.1
%	\set Score.quotedCueEventTypes = #'(note-event rest-event tie-event
%		beam-event tuplet-span-event dynamic-event articulation-event
%		dynamic-event slur-event text-script-event trill-span-event
%		phrasing-slur-event beam-forbid-event tremolo-event crescendo-event 
%		decrescendo-event )
%	\set Voice.restNumberThreshold = #0
%	\override Staff.MultiMeasureRest.space-increment = 0.9
%}
%#(set-global-staff-size 19)
%\layout {
%	#(layout-set-staff-size 19)
%}
%layoutCueVoice = \with {
%	fontSize = #-3
%	\override Stem.length-fraction = #0.9
%	\override TupletBracket #'bracket-visibility = ##f
%	%\override Font.font-size = #+5
%}
