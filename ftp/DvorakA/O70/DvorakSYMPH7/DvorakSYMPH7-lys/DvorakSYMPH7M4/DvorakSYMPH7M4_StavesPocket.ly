%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n° 7 : mouvement IV, Finale - Allegro                     *
  * Intégration des portées (staves)                                    *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Masquer les portées vides partout, y compris violoncelles et flûtes

staffSgMdFlautoIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdFlautoIAII
}
staffSgMdFlautoIIB = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t}{
  \voiceSgMdFlautoIIB
}
staffSgMdOboeIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdOboeIAII
}
staffSgMdClarinettoIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdClarinettoIAII
}
staffSgMdFagottoIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdFagottoIAII
}
staffSgMdCornoIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdCornoIAII
}
staffSgMdCornoIIIAIV = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdCornoIIIAIV
}
staffSgMdTrombaIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdTrombaIAII
}
staffSgMdTromboneIAII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \set Staff.soloText = #"1."
  \set Staff.soloIIText = #"2."
  \voiceSgMdTromboneIAII
}
staffSgMdTromboneIII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \voiceSgMdTromboneIII
}
staffSgMdTimpani = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \voiceSgMdTimpani
}
staffSgMdViolinoI = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f
  \consists "Mark_engraver" \consists "Metronome_mark_engraver" \consists "Staff_collecting_engraver"}{
  \voiceSgMdViolinoI
}
staffSgMdViolinoII = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \voiceSgMdViolinoII
}
staffSgMdViola = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \voiceSgMdViola
}
staffSgMdVioloncello = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \voiceSgMdVioloncello
}
staffSgMdContrabasso = \new Staff \with {\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##f}{
  \voiceSgMdContrabasso
}
