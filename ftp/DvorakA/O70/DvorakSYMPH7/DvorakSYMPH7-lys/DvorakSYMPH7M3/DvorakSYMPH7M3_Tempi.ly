%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement III - Scherzo Vivace                      *
  * Définition des tempis                                               *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
*************************************************************************
%}

\include "Common/Version.ly"

% Définition des tempi

TempoIII = {\tempo \markup {
		\column {{\large \bold "Scherzo"}
		{\large \bold "Vivace"}
		}
	} 2. = 80
}
TempoIIIMM = {\tempo \markup {\italic \huge "poco meno mosso"}}
TempoIIIAcc = {\tempo \markup {\italic \large accelerando}}
TempoIIIViv = {\tempo \markup {\italic \huge Vivace}}
TempoIIIPPr = {\tempo \markup {\italic \large "poco a poco ritard."}}
TempoIIIPPrB = {\tempo \markup {\italic \large "poco a poco ritard."}}
TempoIIIiT = {\tempo \markup {\italic \large "In Tempo"}}

