\version "2.16.0"

% Viola parts for Rolla Torinesi, 2nd set

\include "tor_2_notes_vla1.ly"
\include "tor_2_notes_vla2.ly"

part_duet_ii = {
  <<
    \tag #'score \tag #'vlaone \new Staff << \twoviolaone >>
    \tag #'score \tag #'vlatwo \new Staff << \twoviolatwo >>
  >>
}

part_rondo = {
  <<
    \tag #'score \tag #'vlaone \new Staff << \twoviolaonerondo >>
    \tag #'score \tag #'vlatwo \new Staff << \twoviolatworondo >>
  >>
}
