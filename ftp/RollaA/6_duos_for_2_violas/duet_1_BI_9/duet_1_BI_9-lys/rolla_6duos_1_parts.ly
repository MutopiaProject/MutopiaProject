\version "2.16.1"

% Viola parts for Rolla opus 6, 1st set of duets

\include "rolla_6duos_1_notes_vla1.ly"
\include "rolla_6duos_1_notes_vla2.ly"

part_duet_i = {
  <<
    \tag #'score \tag #'vlaone \new Staff << \oneviolaonemoderato >>
    \tag #'score \tag #'vlatwo \new Staff << \oneviolatwomoderato >>
  >>
}

part_duet_ii = {
  <<
    \tag #'score \tag #'vlaone \new Staff << \oneviolaonerondo >>
    \tag #'score \tag #'vlatwo \new Staff << \oneviolatworondo >>
  >>
}
