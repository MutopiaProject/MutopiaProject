% Project Name : Double Concerto Op102
% Fichier :      DoubleConcerto_Conductor_option.ly
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
	\override Score.RehearsalMark #'font-size = #8.
	%\override Score.RehearsalMark #'font-size = #4.
	\compressFullBarRests
}
conductorOptions = {
	\set Staff.soloText = #"1."
	\set Staff.soloIIText = #"2."
	\override Score.BarNumber #'font-size = #2
}
conductorOptionsHorn = {
	\set Staff.soloText = #"3."
	\set Staff.soloIIText = #"4."
	\override Score.BarNumber #'font-size = #2
}
#(set-global-staff-size 13)
\layout {
	\context {
		\Staff
		\override TupletBracket #'bracket-visibility = ##f
		\override Hairpin.to-barline = ##f
		\RemoveEmptyStaves
		%\override VerticalAxisGroup.remove-first = ##t
	}
	#(layout-set-staff-size 13)
}
