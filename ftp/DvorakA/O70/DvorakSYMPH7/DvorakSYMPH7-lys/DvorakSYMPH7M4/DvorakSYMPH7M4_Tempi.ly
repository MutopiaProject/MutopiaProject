%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
* Symphonie n°7	: mouvement IV - Finale allegro                         *
* Définition des tempis	                                                *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
*************************************************************************
%}

\include "Common/Version.ly"

% Définition des tempi

TempoIV = {\tempo \markup {
		\column {{\huge \bold "Finale"}
		{\large \bold "Allegro"}
		}
	} 2 = 100
}
TempoIVPPCresc = {\tempo \markup {\normal-text \fontsize #4 \italic "P o c o     a     p o c o     c r e s c ."}}
TempoIVRit = {\tempo \markup {\large \italic "ritard."}}
TempoIVIT = {\tempo \markup {\large \italic "in tempo"}}
TempoIVPRit = {\tempo \markup {\large \italic "poco ritard."}}
TempoIVTran = {\tempo \markup {\large \italic "tranquillo"}}
TempoIVPAn = {\tempo \markup {\large \bold "Poco animato."}}
TempoIVMMaes = {\tempo \markup {\large \bold "Molto maestoso."}}
