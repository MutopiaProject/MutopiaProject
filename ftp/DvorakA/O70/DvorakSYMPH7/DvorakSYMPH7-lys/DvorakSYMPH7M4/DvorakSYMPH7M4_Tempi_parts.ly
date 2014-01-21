%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 28/10/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 28/10/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement IV - Finale allegro                       *
  * Définition des tempis                                               *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Définition des tempi

TempoIV = {
  \tempo \markup {
    \column {
      {\large \bold "Finale"}
      {\normalsize \bold "Allegro"}
   }
 } 2 = 100
}
TempoIVPPCresc = {\tempo \markup {\normal-text \fontsize #1 \italic "P o c o     a     p o c o     c r e s c ."}}
TempoIVRit = {\tempo \markup {\italic "ritard."}}
TempoIVIT = {\tempo \markup {\italic "in tempo"}}
TempoIVPRit = {\tempo \markup {\italic "poco ritard."}}
TempoIVTran = {\tempo \markup {\italic "tranquillo"}}
TempoIVPAn = {\tempo \markup {\bold "Poco animato."}}
TempoIVMMaes = {\tempo \markup {\bold "Molto maestoso."}}
