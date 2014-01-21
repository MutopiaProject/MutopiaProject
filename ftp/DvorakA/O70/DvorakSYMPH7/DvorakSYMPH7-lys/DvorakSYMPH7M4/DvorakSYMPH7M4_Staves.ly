%{
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
staffSgMdFlautoIAII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdFlautoIAII
}
staffSgMdFlautoIIB = \new Staff {\voiceSgMdFlautoIIB}

staffSgMdOboeIAII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdOboeIAII
}
staffSgMdClarinettoIAII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdClarinettoIAII
}
staffSgMdFagottoIAII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdFagottoIAII
}
staffSgMdCornoIAII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdCornoIAII
}
staffSgMdCornoIIIAIV = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdCornoIIIAIV
}
staffSgMdTrombaIAII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdTrombaIAII
}
staffSgMdTromboneIAII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdTromboneIAII
}
staffSgMdTromboneIII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{\voiceSgMdTromboneIII}
staffSgMdTimpani = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{\voiceSgMdTimpani}
staffSgMdViolinoI = \new Staff \with {
  \consists "Mark_engraver" \consists "Metronome_mark_engraver" \consists "Staff_collecting_engraver"
  \override VerticalAxisGroup #'remove-empty = ##f
}{
  \voiceSgMdViolinoI
}
staffSgMdViolinoII = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{\voiceSgMdViolinoII}
staffSgMdViola = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{\voiceSgMdViola}
staffSgMdVioloncello = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{\voiceSgMdVioloncello}
staffSgMdContrabasso = \new Staff \with {\override VerticalAxisGroup #'remove-empty = ##f}{\voiceSgMdContrabasso}

