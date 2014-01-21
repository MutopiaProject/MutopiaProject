%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n° 7 mouvement I, Allegro maestoso                        *
  * Intégration des portées (staves)                                    *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
*************************************************************************
%}

\include "Common/Version.ly"

staffSgMbFlautoIAII = \new Staff {
	\set Staff.soloText = #"1."
	\set Staff.soloIIText = #"2."
	\voiceSgMbFlautoIAII}
staffSgMbOboeIAII = \new Staff {
	\set Staff.soloText = #"1."
	\set Staff.soloIIText = #"2."
	\voiceSgMbOboeIAII}
staffSgMbClarinettoIAII = \new Staff {
	\set Staff.soloText = #"1."
	\set Staff.soloIIText = #"2."
	\voiceSgMbClarinettoIAII}
staffSgMbFagottoIAII = \new Staff {
	\set Staff.soloText = #"1."
	\set Staff.soloIIText = #"2."
	\voiceSgMbFagottoIAII}
staffSgMbCornoIAII = \new Staff {
	\set Staff.soloText = #"1."
	\set Staff.soloIIText = #"2."
	\voiceSgMbCornoIAII}
staffSgMbCornoIIIAIV = \new Staff {
	\set Staff.soloText = #"1."
	\set Staff.soloIIText = #"2."
	\voiceSgMbCornoIIIAIV}
staffSgMbTrombaIAII = \new Staff {
	\set Staff.soloText = #"1."
	\set Staff.soloIIText = #"2."
	\voiceSgMbTrombaIAII}
staffSgMbTromboneIAII = \new Staff {
	\set Staff.soloText = #"1."
	\set Staff.soloIIText = #"2."
	\voiceSgMbTromboneIAII}
staffSgMbTromboneIII = \new Staff {\voiceSgMbTromboneIII}
staffSgMbTimpani = \new Staff {\voiceSgMbTimpani}
staffSgMbViolinoI = \new Staff \with {\consists "Mark_engraver" \consists "Metronome_mark_engraver" \consists "Staff_collecting_engraver"}
   {\voiceSgMbViolinoI}
staffSgMbViolinoII = \new Staff {\voiceSgMbViolinoII}
staffSgMbViola = \new Staff {\voiceSgMbViola}
staffSgMbVioloncello = \new Staff {\voiceSgMbVioloncello}
staffSgMbContrabasso = \new Staff {\voiceSgMbContrabasso}

