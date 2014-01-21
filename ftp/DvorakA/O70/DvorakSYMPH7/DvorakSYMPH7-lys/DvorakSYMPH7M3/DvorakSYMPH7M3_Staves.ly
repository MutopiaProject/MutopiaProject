%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n° 7 : mouvement I, Allegro maestoso                      *
  * Intégration des portées (staves)                                    *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Violoncelles : comprennent temporairement deux parties. Il faut masquer les portées vides où les violoncelles sont
% en commun, et restaurer la visibilité des autres portées vides
% Flûte II : remplacée temporairement par le piccolo, traitement identique


staffSgMcFlautoIAII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcFlautoIAII
}
staffSgMcPiccolo = \new Staff \voiceSgMcPiccolo
staffSgMcOboeIAII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcOboeIAII
}
staffSgMcClarinettoIAII= \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcClarinettoIAII
}
staffSgMcFagottoIAII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcFagottoIAII
}
staffSgMcCornoIAII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcCornoIAII
}
staffSgMcCornoIIIAIV = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcCornoIIIAIV
}
staffSgMcTrombaIAII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcTrombaIAII
}
staffSgMcTimpani = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{\voiceSgMcTimpani}
staffSgMcViolinoI = \new Staff \with {
  \override VerticalAxisGroup #'remove-empty = ##f
  \consists "Mark_engraver" \consists "Metronome_mark_engraver" \consists "Staff_collecting_engraver"
}
{\voiceSgMcViolinoI}
staffSgMcViolinoII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{\voiceSgMcViolinoII}
staffSgMcViola = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{\voiceSgMcViola}
staffSgMcVioloncelloI = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{\voiceSgMcVioloncelloI}
staffSgMcVioloncelloII = \new Staff \voiceSgMcVioloncelloII
staffSgMcContrabasso = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{\voiceSgMcContrabasso}
