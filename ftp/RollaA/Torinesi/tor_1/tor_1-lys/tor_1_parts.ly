\version "2.16.0"

% Viola parts for Rolla Torinesi, 1st set

\include "tor_1_notes_vla1.ly"
\include "tor_1_notes_vla2.ly"

part_duet_i = {
  <<
    \tag #'score \tag #'vlaone \new Staff << \oneviolaone >>
    \tag #'score \tag #'vlatwo \new Staff << \oneviolatwo >>
  >>
}

part_rondo = {
  <<
    \tag #'score \tag #'vlaone \new Staff << \oneviolaonerondo >>
    \tag #'score \tag #'vlatwo \new Staff << \oneviolatworondo >>
  >>
}
