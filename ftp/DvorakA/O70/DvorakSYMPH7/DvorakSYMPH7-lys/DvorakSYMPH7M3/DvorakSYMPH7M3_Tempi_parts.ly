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
		{\normalsize \bold "Vivace"}
		}
	} 2. = 80
}
TempoIIIMM = {\tempo \markup {\italic \large "poco meno mosso"}}
TempoIIIAcc = {\tempo \markup {\italic accelerando}}
TempoIIIViv = {\tempo \markup {\italic \large Vivace}}
TempoIIIPPr = {\tempo \markup {\italic \column {"poco a poco" "ritard."}}}
TempoIIIPPrB = {\tempo \markup {\italic {"poco a poco ritard."}}} % Si place disponible
TempoIIIiT = {\tempo \markup {\italic "In Tempo"}}

