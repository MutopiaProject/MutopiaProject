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
  ***********************************************************************
%}
\include "Common/Version.ly"
staffSgMaFlautoIAII = \new Staff {
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMaFlautoIAII
}
staffSgMaOboeIAII = \new Staff {
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMaOboeIAII
}
staffSgMaClarinettoIAII = \new Staff {
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMaClarinettoIAII
}
staffSgMaFagottoIAII = \new Staff {
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMaFagottoIAII
}
staffSgMaCornoIAII = \new Staff {
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMaCornoIAII
}
staffSgMaCornoIIIAIV = \new Staff {
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMaCornoIIIAIV
}
staffSgMaTrombaIAII = \new Staff {
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMaTrombaIAII
}
staffSgMaTromboneIAII = \new Staff {
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMaTromboneIAII
}
staffSgMaTromboneIII = \new Staff {\voiceSgMaTromboneIII}
staffSgMaTimpani = \new Staff {\voiceSgMaTimpani}
staffSgMaViolinoI = \new Staff \with {\consists "Mark_engraver" \consists "Metronome_mark_engraver" \consists "Staff_collecting_engraver"}
{\voiceSgMaViolinoI}
staffSgMaViolinoII = \new Staff {\voiceSgMaViolinoII}
staffSgMaViola = \new Staff {\voiceSgMaViola}
staffSgMaVioloncello = \new Staff {\voiceSgMaVioloncello}
staffSgMaContrabasso = \new Staff {\voiceSgMaContrabasso}

