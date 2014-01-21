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
  * Intégration des portées (staves), version pocket                    *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Masquer les portées vides partout, y compris violoncelles et flûtes

staffSgMcFlautoIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcFlautoIAII
}
staffSgMcPiccolo = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t}{\voiceSgMcPiccolo}
staffSgMcOboeIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcOboeIAII
}
staffSgMcClarinettoIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcClarinettoIAII
}
staffSgMcFagottoIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcFagottoIAII
}
staffSgMcCornoIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcCornoIAII
}
staffSgMcCornoIIIAIV = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcCornoIIIAIV
}
staffSgMcTrombaIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMcTrombaIAII
}
staffSgMcTimpani = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \voiceSgMcTimpani
}
staffSgMcViolinoI = \new Staff \with {
  \consists "Mark_engraver" \consists "Metronome_mark_engraver" \consists "Staff_collecting_engraver"
  \override VerticalAxisGroup #'remove-empty = ##f}{
  \voiceSgMcViolinoI
}
staffSgMcViolinoII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{\voiceSgMcViolinoII}
staffSgMcViola = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{\voiceSgMcViola}
staffSgMcVioloncelloI = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{\voiceSgMcVioloncelloI}
staffSgMcVioloncelloII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t}{\voiceSgMcVioloncelloII}
staffSgMcContrabasso = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{\voiceSgMcContrabasso}
