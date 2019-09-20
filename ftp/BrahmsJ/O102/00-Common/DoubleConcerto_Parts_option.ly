% Project Name : Double Concerto Op102
% Fichier :      DoubleConcerto_Parts_option.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                         S E C T I O N  O P T I O N S                        #
%###############################################################################
generalOptions = {
	\version "2.18.2"
	\override TupletBracket #'bracket-visibility = ##f
	\override Hairpin.to-barline = ##f
	\set Score.alternativeNumberingStyle = #'numbers
	\set Score.doubleRepeatType = #":|.|:"
	\set Score.markFormatter = #format-mark-box-alphabet
	%\override Score.RehearsalMark #'font-size = #8.
	\compressFullBarRests
}
partOptions = {
	#(set-global-staff-size 19)
	\override Score.BarNumber #'font-size = #0.1
	\set Score.quotedCueEventTypes = #'(note-event rest-event tie-event
		beam-event tuplet-span-event dynamic-event articulation-event
		dynamic-event slur-event text-script-event)
}

