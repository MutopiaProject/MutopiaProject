\version "2.16.0"
\include "bb_2_3_all_vn.ly"
\include "bb_2_3_all_vla.ly"

part_duetto_iii = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_duetto_iii >>
    \tag #'score \tag #'vla \new Staff << \viola_duetto_iii >>
  >>
}

part_rondo = {
  <<
    \tag #'score \tag #'vn \new Staff << \violin_rondo >>
    \tag #'score \tag #'vla \new Staff << \viola_rondo >>
  >>
}
