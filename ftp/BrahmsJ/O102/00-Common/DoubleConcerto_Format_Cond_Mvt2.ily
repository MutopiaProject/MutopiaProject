%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                 C O N D U C T O R   S C O R E   F O R M A T                 #
%###############################################################################
formatConductorMvtII = {
	\override Score.NonMusicalPaperColumn.line-break-permission = ##f
	\override Score.NonMusicalPaperColumn.page-break-permission = ##f
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 5)
		(alignment-distances . (8 9 11 10 11 9 11 11.5 11 11 11 11 10)))
	s2.*10 \break
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 165.38)
		(alignment-distances . (11 12 11 12 12 12)))
	s2.*7 \pageBreak
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 6.2)
		(alignment-distances . (11 14 11 14 10 12 12 12)))
	s2.*6 \break
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 165.38)
		(alignment-distances . (12 14 10 12 11 11)))
	s2.*6 \pageBreak
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 5.7)
		(alignment-distances . (13 10 11 10 12 9 12 10 10 10 11)))
	s2.*10 \break
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 160.91)
		(alignment-distances . (11 10 12 10 12 10 11)))
	s2.*7 \pageBreak
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 4)
		(alignment-distances . (9 10 9 14 13 12 10 11 11 11)))
	s2.*6 \break
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 125.91)
		(alignment-distances . (10 9 9 9.5 16 10 12 9 11 11 11)))
	s2.*5 \pageBreak
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 5)
		(alignment-distances . (8.5 8.5 9 8.5 11 13 11 10 11 10.5 9.5)))
	s2.*6 \break
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 130.33)
		(alignment-distances . (9 9 9.5 8.5 10.5 9 12 9 10.5 9.5 9.5)))
	s2.*7 \pageBreak
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 2.4)
		(alignment-distances . (9 9 10 9 11 8.5 13 11.5 10 8.5 10 8 8)))
	s2.*8 \break
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 141.67)
		(alignment-distances . (9.5 12.5 13 11 10 8.5 9.5 8.5 8.5)))
	s2.*9 \pageBreak
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 2.4)
		(alignment-distances . (12 13 12 13 10 10 10 10)))
	s2.*7 \break
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 142.07)
		(alignment-distances . (9 13 11 13 10 12 11 11)))
	s2.*8 \pageBreak
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 7)
		(alignment-distances . (9.5 12 10 10 9 10 9)))
	s2.*7 \break
	\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'(
		(Y-offset . 91.84)
		(alignment-distances . (9 10 12 10 11 9 16 12 12 9 10 10 10)))
	s2.*9 \pageBreak
}
