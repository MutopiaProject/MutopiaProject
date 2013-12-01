\version "2.16.1"

% Viola parts for Rolla opus 6, 2nd set of duets
\include "rolla_6duos_2_notes_vla1.ly"
\include "rolla_6duos_2_notes_vla2.ly"

part_duet_i = {
  <<
    \tag #'score \tag #'vlaone \new Staff << \twoviolaonemoderato >>
    \tag #'score \tag #'vlatwo \new Staff << \twoviolatwomoderato >>
  >>
}

part_duet_ii = {
  <<
    \tag #'score \tag #'vlaone \new Staff << \twoviolaoneminuetto >>
    \tag #'score \tag #'vlatwo \new Staff << \twoviolatwominuetto >>
  >>
}
